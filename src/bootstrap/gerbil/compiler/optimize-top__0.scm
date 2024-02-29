(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709229971)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126717_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128810 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126717_ __tmp128810))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126717_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126717_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126717_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126717_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126717_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126700_ . _args126702_)
        (let ((__tmp128812
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126702_)
                     (gxc#compile-e__0 _stx126700_)
                     (let ((_arg1126707_ (car _args126702_))
                           (_rest126709_ (cdr _args126702_)))
                       (if (null? _rest126709_)
                           (gxc#compile-e__1 _stx126700_ _arg1126707_)
                           (let ((_arg2126712_ (car _rest126709_))
                                 (_rest126714_ (cdr _rest126709_)))
                             (if (null? _rest126714_)
                                 (gxc#compile-e__2
                                  _stx126700_
                                  _arg1126707_
                                  _arg2126712_)
                                 (apply gxc#compile-e
                                        _stx126700_
                                        _arg1126707_
                                        _arg2126712_
                                        _rest126714_))))))))
              (__tmp128811 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128812
           gxc#current-compile-methods
           __tmp128811))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126697_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128813 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126697_ __tmp128813))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126697_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126697_ '%#call gxc#basic-expression-type-call%))
           _tbl126697_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126680_ . _args126682_)
        (let ((__tmp128815
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126682_)
                     (gxc#compile-e__0 _stx126680_)
                     (let ((_arg1126687_ (car _args126682_))
                           (_rest126689_ (cdr _args126682_)))
                       (if (null? _rest126689_)
                           (gxc#compile-e__1 _stx126680_ _arg1126687_)
                           (let ((_arg2126692_ (car _rest126689_))
                                 (_rest126694_ (cdr _rest126689_)))
                             (if (null? _rest126694_)
                                 (gxc#compile-e__2
                                  _stx126680_
                                  _arg1126687_
                                  _arg2126692_)
                                 (apply gxc#compile-e
                                        _stx126680_
                                        _arg1126687_
                                        _arg2126692_
                                        _rest126694_))))))))
              (__tmp128814 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128815
           gxc#current-compile-methods
           __tmp128814))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126677_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128816 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126677_ __tmp128816))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126677_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126677_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126677_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126677_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126677_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126677_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126677_ '%#set! gxc#collect-body-setq%))
           _tbl126677_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126660_ . _args126662_)
        (let ((__tmp128818
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126662_)
                     (gxc#compile-e__0 _stx126660_)
                     (let ((_arg1126667_ (car _args126662_))
                           (_rest126669_ (cdr _args126662_)))
                       (if (null? _rest126669_)
                           (gxc#compile-e__1 _stx126660_ _arg1126667_)
                           (let ((_arg2126672_ (car _rest126669_))
                                 (_rest126674_ (cdr _rest126669_)))
                             (if (null? _rest126674_)
                                 (gxc#compile-e__2
                                  _stx126660_
                                  _arg1126667_
                                  _arg2126672_)
                                 (apply gxc#compile-e
                                        _stx126660_
                                        _arg1126667_
                                        _arg2126672_
                                        _rest126674_))))))))
              (__tmp128817 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128818
           gxc#current-compile-methods
           __tmp128817))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126657_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128819 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126657_ __tmp128819))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126657_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126657_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126657_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126657_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126657_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126657_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126657_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126657_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126657_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126657_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126640_ . _args126642_)
        (let ((__tmp128821
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126642_)
                     (gxc#compile-e__0 _stx126640_)
                     (let ((_arg1126647_ (car _args126642_))
                           (_rest126649_ (cdr _args126642_)))
                       (if (null? _rest126649_)
                           (gxc#compile-e__1 _stx126640_ _arg1126647_)
                           (let ((_arg2126652_ (car _rest126649_))
                                 (_rest126654_ (cdr _rest126649_)))
                             (if (null? _rest126654_)
                                 (gxc#compile-e__2
                                  _stx126640_
                                  _arg1126647_
                                  _arg2126652_)
                                 (apply gxc#compile-e
                                        _stx126640_
                                        _arg1126647_
                                        _arg2126652_
                                        _rest126654_))))))))
              (__tmp128820 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128821
           gxc#current-compile-methods
           __tmp128820))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126637_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128822 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126637_ __tmp128822))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126637_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126637_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126637_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126637_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126637_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126620_ . _args126622_)
        (let ((__tmp128824
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126622_)
                     (gxc#compile-e__0 _stx126620_)
                     (let ((_arg1126627_ (car _args126622_))
                           (_rest126629_ (cdr _args126622_)))
                       (if (null? _rest126629_)
                           (gxc#compile-e__1 _stx126620_ _arg1126627_)
                           (let ((_arg2126632_ (car _rest126629_))
                                 (_rest126634_ (cdr _rest126629_)))
                             (if (null? _rest126634_)
                                 (gxc#compile-e__2
                                  _stx126620_
                                  _arg1126627_
                                  _arg2126632_)
                                 (apply gxc#compile-e
                                        _stx126620_
                                        _arg1126627_
                                        _arg2126632_
                                        _rest126634_))))))))
              (__tmp128823 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128824
           gxc#current-compile-methods
           __tmp128823))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126523_)
        (let* ((___stx126730126731_ _stx126523_)
               (_g126526126546_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126730126731_)))))
          (let ((___kont126732126733_
                 (lambda (_L126590_ _L126591_)
                   (let ((_sym126609_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126591_))))
                     (if (let ((__tmp128825 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128825 _sym126609_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126609_))
                         (let ((_type126610126612_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126590_))))
                           (if _type126610126612_
                               (let ((_type126615_ _type126610126612_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126609_
                                  _type126615_))
                               '#f))))))
                (___kont126734126735_ (lambda () '#!void)))
            (let ((___match126763126764_
                   (lambda (_e126532126558_
                            _hd126531126561_
                            _tl126530126563_
                            _e126535126566_
                            _hd126534126569_
                            _tl126533126571_
                            _e126538126574_
                            _hd126537126577_
                            _tl126536126579_
                            _e126541126582_
                            _hd126540126585_
                            _tl126539126587_)
                     (let ((_L126590_ _hd126540126585_)
                           (_L126591_ _hd126537126577_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126591_))
                           (___kont126732126733_ _L126590_ _L126591_)
                           (___kont126734126735_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126730126731_))
                  (let ((_e126532126558_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126730126731_))))
                    (let ((_tl126530126563_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126532126558_)))
                          (_hd126531126561_
                           (let ()
                             (declare (not safe))
                             (##car _e126532126558_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126530126563_))
                          (let ((_e126535126566_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126530126563_))))
                            (let ((_tl126533126571_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126535126566_)))
                                  (_hd126534126569_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126535126566_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126534126569_))
                                  (let ((_e126538126574_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126534126569_))))
                                    (let ((_tl126536126579_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126538126574_)))
                                          (_hd126537126577_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126538126574_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126536126579_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126533126571_))
                                              (let ((_e126541126582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126533126571_))))
                                                (let ((_tl126539126587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126541126582_)))
                                                      (_hd126540126585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126541126582_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126539126587_))
                                                      (___match126763126764_
                                                       _e126532126558_
                                                       _hd126531126561_
                                                       _tl126530126563_
                                                       _e126535126566_
                                                       _hd126534126569_
                                                       _tl126533126571_
                                                       _e126538126574_
                                                       _hd126537126577_
                                                       _tl126536126579_
                                                       _e126541126582_
                                                       _hd126540126585_
                                                       _tl126539126587_)
                                                      (___kont126734126735_))))
                                              (___kont126734126735_))
                                          (___kont126734126735_))))
                                  (___kont126734126735_))))
                          (___kont126734126735_))))
                  (___kont126734126735_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx126379_)
        (let* ((___stx126766126767_ _stx126379_)
               (_g126382126413_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126766126767_)))))
          (let ((___kont126768126769_
                 (lambda (_L126495_ _L126496_)
                   (let ((_sym126512_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126496_))))
                     (if (let ((__tmp128826 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128826 _sym126512_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126512_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126512_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126512_))
                             (let ((_type126513126515_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126495_))))
                               (if _type126513126515_
                                   (let ((_type126518_ _type126513126515_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126512_
                                      _type126518_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126495_)))))
                (___kont126770126771_
                 (lambda (_L126442_ _L126443_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126442_)))))
            (let ((___match126799126800_
                   (lambda (_e126388126463_
                            _hd126387126466_
                            _tl126386126468_
                            _e126391126471_
                            _hd126390126474_
                            _tl126389126476_
                            _e126394126479_
                            _hd126393126482_
                            _tl126392126484_
                            _e126397126487_
                            _hd126396126490_
                            _tl126395126492_)
                     (let ((_L126495_ _hd126396126490_)
                           (_L126496_ _hd126393126482_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126496_))
                           (___kont126768126769_ _L126495_ _L126496_)
                           (___kont126770126771_
                            _hd126396126490_
                            _hd126390126474_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126766126767_))
                  (let ((_e126388126463_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126766126767_))))
                    (let ((_tl126386126468_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126388126463_)))
                          (_hd126387126466_
                           (let ()
                             (declare (not safe))
                             (##car _e126388126463_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126386126468_))
                          (let ((_e126391126471_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126386126468_))))
                            (let ((_tl126389126476_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126391126471_)))
                                  (_hd126390126474_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126391126471_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126390126474_))
                                  (let ((_e126394126479_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126390126474_))))
                                    (let ((_tl126392126484_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126394126479_)))
                                          (_hd126393126482_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126394126479_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126392126484_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126389126476_))
                                              (let ((_e126397126487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126389126476_))))
                                                (let ((_tl126395126492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126397126487_)))
                                                      (_hd126396126490_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126397126487_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126395126492_))
                                                      (___match126799126800_
                                                       _e126388126463_
                                                       _hd126387126466_
                                                       _tl126386126468_
                                                       _e126391126471_
                                                       _hd126390126474_
                                                       _tl126389126476_
                                                       _e126394126479_
                                                       _hd126393126482_
                                                       _tl126392126484_
                                                       _e126397126487_
                                                       _hd126396126490_
                                                       _tl126395126492_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126382126413_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126382126413_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126389126476_))
                                              (let ((_e126408126434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126389126476_))))
                                                (let ((_tl126406126439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126408126434_)))
                                                      (_hd126407126437_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126408126434_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126406126439_))
                                                      (___kont126770126771_
                                                       _hd126407126437_
                                                       _hd126390126474_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126382126413_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126382126413_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126389126476_))
                                      (let ((_e126408126434_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126389126476_))))
                                        (let ((_tl126406126439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126408126434_)))
                                              (_hd126407126437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126408126434_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126406126439_))
                                              (___kont126770126771_
                                               _hd126407126437_
                                               _hd126390126474_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126382126413_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126382126413_))))))
                          (let () (declare (not safe)) (_g126382126413_)))))
                  (let () (declare (not safe)) (_g126382126413_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx126164_)
        (letrec ((_collect-e126166_
                  (lambda (_hd126323_ _expr126324_)
                    (let* ((___stx126822126823_ _hd126323_)
                           (_g126327126337_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126822126823_)))))
                      (let ((___kont126824126825_
                             (lambda (_L126357_)
                               (let ((_sym126368_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126357_))))
                                 (if (let ((__tmp128827
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128827 _sym126368_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126368_))
                                     (let ((_type126369126371_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126324_))))
                                       (if _type126369126371_
                                           (let ((_type126374_
                                                  _type126369126371_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126368_
                                              _type126374_
                                              '#t))
                                           '#f))))))
                            (___kont126826126827_ (lambda () '#!void)))
                        (let ((___match126835126836_
                               (lambda (_e126332126349_
                                        _hd126331126352_
                                        _tl126330126354_)
                                 (let ((_L126357_ _hd126331126352_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126357_))
                                       (___kont126824126825_ _L126357_)
                                       (___kont126826126827_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126822126823_))
                              (let ((_e126332126349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126822126823_))))
                                (let ((_tl126330126354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126332126349_)))
                                      (_hd126331126352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126332126349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126330126354_))
                                      (___match126835126836_
                                       _e126332126349_
                                       _hd126331126352_
                                       _tl126330126354_)
                                      (___kont126826126827_))))
                              (___kont126826126827_))))))))
          (let* ((_g126168126203_
                  (lambda (_g126169126200_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126169126200_))))
                 (_g126167126320_
                  (lambda (_g126169126206_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126169126206_))
                        (let ((_e126175126208_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126169126206_))))
                          (let ((_hd126174126211_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126175126208_)))
                                (_tl126173126213_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126175126208_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126173126213_))
                                (let ((_e126178126216_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126173126213_))))
                                  (let ((_hd126177126219_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126178126216_)))
                                        (_tl126176126221_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126178126216_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126177126219_))
                                        (let ((_g128828_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126177126219_
                                                  '0))))
                                          (begin
                                            (let ((_g128829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128828_)
                                                         (##vector-length
                                                          _g128828_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128829_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128829_)))
                                            (let ((_target126179126224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128828_
                                                      0)))
                                                  (_tl126181126226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128828_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126181126226_))
                                                  (letrec ((_loop126182126229_
                                                            (lambda (_hd126180126232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126186126234_
                             _hd126187126236_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126180126232_))
                          (let ((_e126183126239_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126180126232_))))
                            (let ((_lp-hd126184126242_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126183126239_)))
                                  (_lp-tl126185126244_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126183126239_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126184126242_))
                                  (let ((_e126192126247_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126184126242_))))
                                    (let ((_hd126191126250_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126192126247_)))
                                          (_tl126190126252_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126192126247_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126190126252_))
                                          (let ((_e126195126255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126190126252_))))
                                            (let ((_hd126194126258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126195126255_)))
                                                  (_tl126193126260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126195126255_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126193126260_))
                                                  (let ((__tmp128834
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126194126258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126186126234_)))
                (__tmp128833
                 (let ()
                   (declare (not safe))
                   (cons _hd126191126250_ _hd126187126236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126182126229_
                                                     _lp-tl126185126244_
                                                     __tmp128834
                                                     __tmp128833))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126168126203_
                                                     _g126169126206_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126168126203_
                                             _g126169126206_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126168126203_ _g126169126206_)))))
                          (let ((_expr126188126263_
                                 (reverse _expr126186126234_))
                                (_hd126189126265_ (reverse _hd126187126236_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126176126221_))
                                (let ((_e126198126268_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126176126221_))))
                                  (let ((_hd126197126271_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126198126268_)))
                                        (_tl126196126273_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126198126268_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126196126273_))
                                        ((lambda (_L126276_
                                                  _L126277_
                                                  _L126278_)
                                           (for-each
                                            _collect-e126166_
                                            (let ((__tmp128830
                                                   (lambda (_g126298126301_
                                                            _g126299126303_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126298126301_
                                                             _g126299126303_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128830
                                                      '()
                                                      _L126278_))
                                            (let ((__tmp128831
                                                   (lambda (_g126305126308_
                                                            _g126306126310_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126305126308_
                                                             _g126306126310_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128831
                                                      '()
                                                      _L126277_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128832
                                                   (lambda (_g126312126315_
                                                            _g126313126317_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126312126315_
                                                             _g126313126317_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128832
                                                      '()
                                                      _L126277_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L126276_)))
                                         _hd126197126271_
                                         _expr126188126263_
                                         _hd126189126265_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126168126203_ _g126169126206_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126168126203_ _g126169126206_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126182126229_
                                                       _target126179126224_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126168126203_
                                                     _g126169126206_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126168126203_ _g126169126206_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126168126203_ _g126169126206_)))))
                        (let ()
                          (declare (not safe))
                          (_g126168126203_ _g126169126206_))))))
            (declare (not safe))
            (_g126167126320_ _stx126164_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125656_)
        (let* ((___stx126838126839_ _stx125656_)
               (_g125660125775_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126838126839_)))))
          (let ((___kont126840126841_
                 (lambda (_L126114_ _L126115_ _L126116_ _L126117_ _L126118_)
                   (let ((__tmp128838
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126117_)))
                         (__tmp128837
                          (let () (declare (not safe)) (gx#stx-e _L126116_)))
                         (__tmp128836
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126115_)))
                         (__tmp128835
                          (let () (declare (not safe)) (gx#stx-e _L126114_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128838
                      __tmp128837
                      __tmp128836
                      __tmp128835))))
                (___kont126842126843_
                 (lambda (_L125942_ _L125943_ _L125944_ _L125945_)
                   (let ((__tmp128841
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125944_)))
                         (__tmp128840
                          (let () (declare (not safe)) (gx#stx-e _L125943_)))
                         (__tmp128839
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125942_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128841
                      __tmp128840
                      __tmp128839
                      '#f))))
                (___kont126844126845_
                 (lambda (_L125812_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128842
                           (lambda (_g125825125828_ _g125826125830_)
                             (let ()
                               (declare (not safe))
                               (cons _g125825125828_ _g125826125830_)))))
                      (declare (not safe))
                      (foldr1 __tmp128842 '() _L125812_))))))
            (let* ((___match127095127096_
                    (lambda (_e125761125780_
                             _hd125760125783_
                             _tl125759125785_
                             ___splice126846126847_
                             _target125762125788_
                             _tl125764125790_)
                      (letrec ((_loop125765125793_
                                (lambda (_hd125763125796_ _expr125769125798_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125763125796_))
                                      (let ((_e125766125801_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125763125796_))))
                                        (let ((_lp-tl125768125806_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125766125801_)))
                                              (_lp-hd125767125804_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125766125801_))))
                                          (let ((__tmp128843
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125767125804_
                                                         _expr125769125798_))))
                                            (declare (not safe))
                                            (_loop125765125793_
                                             _lp-tl125768125806_
                                             __tmp128843))))
                                      (let ((_expr125770125809_
                                             (reverse _expr125769125798_)))
                                        (___kont126844126845_
                                         _expr125770125809_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125765125793_ _target125762125788_ '())))))
                   (___match126975126976_
                    (lambda (_e125669125986_
                             _hd125668125989_
                             _tl125667125991_
                             _e125672125994_
                             _hd125671125997_
                             _tl125670125999_
                             _e125675126002_
                             _hd125674126005_
                             _tl125673126007_
                             _e125678126010_
                             _hd125677126013_
                             _tl125676126015_
                             _e125681126018_
                             _hd125680126021_
                             _tl125679126023_
                             _e125684126026_
                             _hd125683126029_
                             _tl125682126031_
                             _e125687126034_
                             _hd125686126037_
                             _tl125685126039_
                             _e125690126042_
                             _hd125689126045_
                             _tl125688126047_
                             _e125693126050_
                             _hd125692126053_
                             _tl125691126055_
                             _e125696126058_
                             _hd125695126061_
                             _tl125694126063_
                             _e125699126066_
                             _hd125698126069_
                             _tl125697126071_
                             _e125702126074_
                             _hd125701126077_
                             _tl125700126079_
                             _e125705126082_
                             _hd125704126085_
                             _tl125703126087_
                             _e125708126090_
                             _hd125707126093_
                             _tl125706126095_
                             _e125711126098_
                             _hd125710126101_
                             _tl125709126103_
                             _e125714126106_
                             _hd125713126109_
                             _tl125712126111_)
                      (let ((_L126114_ _hd125713126109_)
                            (_L126115_ _hd125704126085_)
                            (_L126116_ _hd125695126061_)
                            (_L126117_ _hd125686126037_)
                            (_L126118_ _hd125677126013_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126118_
                               'bind-method!))
                            (___kont126840126841_
                             _L126114_
                             _L126115_
                             _L126116_
                             _L126117_
                             _L126118_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125667125991_))
                                (let ((___splice126846126847_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125667125991_
                                          '0))))
                                  (let ((_tl125764125790_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126846126847_
                                            '1)))
                                        (_target125762125788_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126846126847_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125764125790_))
                                        (___match127095127096_
                                         _e125669125986_
                                         _hd125668125989_
                                         _tl125667125991_
                                         ___splice126846126847_
                                         _target125762125788_
                                         _tl125764125790_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125660125775_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125660125775_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126838126839_))
                  (let ((_e125669125986_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126838126839_))))
                    (let ((_tl125667125991_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125669125986_)))
                          (_hd125668125989_
                           (let ()
                             (declare (not safe))
                             (##car _e125669125986_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125667125991_))
                          (let ((_e125672125994_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125667125991_))))
                            (let ((_tl125670125999_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125672125994_)))
                                  (_hd125671125997_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125672125994_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125671125997_))
                                  (let ((_e125675126002_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125671125997_))))
                                    (let ((_tl125673126007_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125675126002_)))
                                          (_hd125674126005_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125675126002_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125674126005_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125674126005_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125673126007_))
                                                  (let ((_e125678126010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125673126007_))))
                                                    (let ((_tl125676126015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125678126010_)))
                                                          (_hd125677126013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125678126010_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125676126015_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125670125999_))
                      (let ((_e125681126018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125670125999_))))
                        (let ((_tl125679126023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125681126018_)))
                              (_hd125680126021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125681126018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125680126021_))
                              (let ((_e125684126026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125680126021_))))
                                (let ((_tl125682126031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125684126026_)))
                                      (_hd125683126029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125684126026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125683126029_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125683126029_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125682126031_))
                                              (let ((_e125687126034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125682126031_))))
                                                (let ((_tl125685126039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125687126034_)))
                                                      (_hd125686126037_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125687126034_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125685126039_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125679126023_))
                                                          (let ((_e125690126042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125679126023_))))
                    (let ((_tl125688126047_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125690126042_)))
                          (_hd125689126045_
                           (let ()
                             (declare (not safe))
                             (##car _e125690126042_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125689126045_))
                          (let ((_e125693126050_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125689126045_))))
                            (let ((_tl125691126055_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125693126050_)))
                                  (_hd125692126053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125693126050_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125692126053_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125692126053_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125691126055_))
                                          (let ((_e125696126058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125691126055_))))
                                            (let ((_tl125694126063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125696126058_)))
                                                  (_hd125695126061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125696126058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125694126063_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125688126047_))
                                                      (let ((_e125699126066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125688126047_))))
                (let ((_tl125697126071_
                       (let () (declare (not safe)) (##cdr _e125699126066_)))
                      (_hd125698126069_
                       (let () (declare (not safe)) (##car _e125699126066_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125698126069_))
                      (let ((_e125702126074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125698126069_))))
                        (let ((_tl125700126079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125702126074_)))
                              (_hd125701126077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125702126074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125701126077_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125701126077_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125700126079_))
                                      (let ((_e125705126082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125700126079_))))
                                        (let ((_tl125703126087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125705126082_)))
                                              (_hd125704126085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125705126082_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125703126087_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125697126071_))
                                                  (let ((_e125708126090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125697126071_))))
                                                    (let ((_tl125706126095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125708126090_)))
                                                          (_hd125707126093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125708126090_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125707126093_))
                                                          (let ((_e125711126098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125707126093_))))
                    (let ((_tl125709126103_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125711126098_)))
                          (_hd125710126101_
                           (let ()
                             (declare (not safe))
                             (##car _e125711126098_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125710126101_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125710126101_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125709126103_))
                                  (let ((_e125714126106_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125709126103_))))
                                    (let ((_tl125712126111_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125714126106_)))
                                          (_hd125713126109_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125714126106_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125712126111_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125706126095_))
                                              (___match126975126976_
                                               _e125669125986_
                                               _hd125668125989_
                                               _tl125667125991_
                                               _e125672125994_
                                               _hd125671125997_
                                               _tl125670125999_
                                               _e125675126002_
                                               _hd125674126005_
                                               _tl125673126007_
                                               _e125678126010_
                                               _hd125677126013_
                                               _tl125676126015_
                                               _e125681126018_
                                               _hd125680126021_
                                               _tl125679126023_
                                               _e125684126026_
                                               _hd125683126029_
                                               _tl125682126031_
                                               _e125687126034_
                                               _hd125686126037_
                                               _tl125685126039_
                                               _e125690126042_
                                               _hd125689126045_
                                               _tl125688126047_
                                               _e125693126050_
                                               _hd125692126053_
                                               _tl125691126055_
                                               _e125696126058_
                                               _hd125695126061_
                                               _tl125694126063_
                                               _e125699126066_
                                               _hd125698126069_
                                               _tl125697126071_
                                               _e125702126074_
                                               _hd125701126077_
                                               _tl125700126079_
                                               _e125705126082_
                                               _hd125704126085_
                                               _tl125703126087_
                                               _e125708126090_
                                               _hd125707126093_
                                               _tl125706126095_
                                               _e125711126098_
                                               _hd125710126101_
                                               _tl125709126103_
                                               _e125714126106_
                                               _hd125713126109_
                                               _tl125712126111_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125667125991_))
                                                  (let ((___splice126846126847_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125667125991_
                                                            '0))))
                                                    (let ((_tl125764125790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '1)))
                                                          (_target125762125788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125764125790_))
                                                          (___match127095127096_
                                                           _e125669125986_
                                                           _hd125668125989_
                                                           _tl125667125991_
                                                           ___splice126846126847_
                                                           _target125762125788_
                                                           _tl125764125790_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125660125775_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125667125991_))
                                              (let ((___splice126846126847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125667125991_
                                                        '0))))
                                                (let ((_tl125764125790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '1)))
                                                      (_target125762125788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125764125790_))
                                                      (___match127095127096_
                                                       _e125669125986_
                                                       _hd125668125989_
                                                       _tl125667125991_
                                                       ___splice126846126847_
                                                       _target125762125788_
                                                       _tl125764125790_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125660125775_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125667125991_))
                                      (let ((___splice126846126847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125667125991_
                                                '0))))
                                        (let ((_tl125764125790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '1)))
                                              (_target125762125788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125764125790_))
                                              (___match127095127096_
                                               _e125669125986_
                                               _hd125668125989_
                                               _tl125667125991_
                                               ___splice126846126847_
                                               _target125762125788_
                                               _tl125764125790_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125667125991_))
                                  (let ((___splice126846126847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125667125991_
                                            '0))))
                                    (let ((_tl125764125790_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126846126847_
                                              '1)))
                                          (_target125762125788_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126846126847_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125764125790_))
                                          (___match127095127096_
                                           _e125669125986_
                                           _hd125668125989_
                                           _tl125667125991_
                                           ___splice126846126847_
                                           _target125762125788_
                                           _tl125764125790_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125660125775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125660125775_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125667125991_))
                              (let ((___splice126846126847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125667125991_
                                        '0))))
                                (let ((_tl125764125790_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126846126847_
                                          '1)))
                                      (_target125762125788_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126846126847_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125764125790_))
                                      (___match127095127096_
                                       _e125669125986_
                                       _hd125668125989_
                                       _tl125667125991_
                                       ___splice126846126847_
                                       _target125762125788_
                                       _tl125764125790_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_)))))
                              (let ()
                                (declare (not safe))
                                (_g125660125775_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125667125991_))
                      (let ((___splice126846126847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125667125991_ '0))))
                        (let ((_tl125764125790_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '1)))
                              (_target125762125788_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125764125790_))
                              (___match127095127096_
                               _e125669125986_
                               _hd125668125989_
                               _tl125667125991_
                               ___splice126846126847_
                               _target125762125788_
                               _tl125764125790_)
                              (let ()
                                (declare (not safe))
                                (_g125660125775_)))))
                      (let () (declare (not safe)) (_g125660125775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125697126071_))
                                                      (if (let ((__tmp128844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128844 'bind-method!))
                  (let ((_L125942_ _hd125704126085_)
                        (_L125943_ _hd125695126061_)
                        (_L125944_ _hd125686126037_)
                        (_L125945_ _hd125677126013_))
                    (___kont126842126843_
                     _L125942_
                     _L125943_
                     _L125944_
                     _L125945_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125667125991_))
                      (let ((___splice126846126847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125667125991_ '0))))
                        (let ((_tl125764125790_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '1)))
                              (_target125762125788_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125764125790_))
                              (___match127095127096_
                               _e125669125986_
                               _hd125668125989_
                               _tl125667125991_
                               ___splice126846126847_
                               _target125762125788_
                               _tl125764125790_)
                              (let ()
                                (declare (not safe))
                                (_g125660125775_)))))
                      (let () (declare (not safe)) (_g125660125775_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125667125991_))
                  (let ((___splice126846126847_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125667125991_ '0))))
                    (let ((_tl125764125790_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126846126847_ '1)))
                          (_target125762125788_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126846126847_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125764125790_))
                          (___match127095127096_
                           _e125669125986_
                           _hd125668125989_
                           _tl125667125991_
                           ___splice126846126847_
                           _target125762125788_
                           _tl125764125790_)
                          (let () (declare (not safe)) (_g125660125775_)))))
                  (let () (declare (not safe)) (_g125660125775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125667125991_))
                                                  (let ((___splice126846126847_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125667125991_
                                                            '0))))
                                                    (let ((_tl125764125790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '1)))
                                                          (_target125762125788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125764125790_))
                                                          (___match127095127096_
                                                           _e125669125986_
                                                           _hd125668125989_
                                                           _tl125667125991_
                                                           ___splice126846126847_
                                                           _target125762125788_
                                                           _tl125764125790_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125660125775_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125667125991_))
                                          (let ((___splice126846126847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125667125991_
                                                    '0))))
                                            (let ((_tl125764125790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126846126847_
                                                      '1)))
                                                  (_target125762125788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126846126847_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125764125790_))
                                                  (___match127095127096_
                                                   _e125669125986_
                                                   _hd125668125989_
                                                   _tl125667125991_
                                                   ___splice126846126847_
                                                   _target125762125788_
                                                   _tl125764125790_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125660125775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125667125991_))
                                      (let ((___splice126846126847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125667125991_
                                                '0))))
                                        (let ((_tl125764125790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '1)))
                                              (_target125762125788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125764125790_))
                                              (___match127095127096_
                                               _e125669125986_
                                               _hd125668125989_
                                               _tl125667125991_
                                               ___splice126846126847_
                                               _target125762125788_
                                               _tl125764125790_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125667125991_))
                                  (let ((___splice126846126847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125667125991_
                                            '0))))
                                    (let ((_tl125764125790_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126846126847_
                                              '1)))
                                          (_target125762125788_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126846126847_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125764125790_))
                                          (___match127095127096_
                                           _e125669125986_
                                           _hd125668125989_
                                           _tl125667125991_
                                           ___splice126846126847_
                                           _target125762125788_
                                           _tl125764125790_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125660125775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125660125775_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125667125991_))
                          (let ((___splice126846126847_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125667125991_
                                    '0))))
                            (let ((_tl125764125790_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126846126847_ '1)))
                                  (_target125762125788_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126846126847_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125764125790_))
                                  (___match127095127096_
                                   _e125669125986_
                                   _hd125668125989_
                                   _tl125667125991_
                                   ___splice126846126847_
                                   _target125762125788_
                                   _tl125764125790_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125660125775_)))))
                          (let () (declare (not safe)) (_g125660125775_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125667125991_))
                  (let ((___splice126846126847_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125667125991_ '0))))
                    (let ((_tl125764125790_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126846126847_ '1)))
                          (_target125762125788_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126846126847_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125764125790_))
                          (___match127095127096_
                           _e125669125986_
                           _hd125668125989_
                           _tl125667125991_
                           ___splice126846126847_
                           _target125762125788_
                           _tl125764125790_)
                          (let () (declare (not safe)) (_g125660125775_)))))
                  (let () (declare (not safe)) (_g125660125775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125667125991_))
                                                      (let ((___splice126846126847_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125667125991_ '0))))
                (let ((_tl125764125790_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126846126847_ '1)))
                      (_target125762125788_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126846126847_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125764125790_))
                      (___match127095127096_
                       _e125669125986_
                       _hd125668125989_
                       _tl125667125991_
                       ___splice126846126847_
                       _target125762125788_
                       _tl125764125790_)
                      (let () (declare (not safe)) (_g125660125775_)))))
              (let () (declare (not safe)) (_g125660125775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125667125991_))
                                              (let ((___splice126846126847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125667125991_
                                                        '0))))
                                                (let ((_tl125764125790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '1)))
                                                      (_target125762125788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125764125790_))
                                                      (___match127095127096_
                                                       _e125669125986_
                                                       _hd125668125989_
                                                       _tl125667125991_
                                                       ___splice126846126847_
                                                       _target125762125788_
                                                       _tl125764125790_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125660125775_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125667125991_))
                                          (let ((___splice126846126847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125667125991_
                                                    '0))))
                                            (let ((_tl125764125790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126846126847_
                                                      '1)))
                                                  (_target125762125788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126846126847_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125764125790_))
                                                  (___match127095127096_
                                                   _e125669125986_
                                                   _hd125668125989_
                                                   _tl125667125991_
                                                   ___splice126846126847_
                                                   _target125762125788_
                                                   _tl125764125790_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125660125775_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125667125991_))
                                      (let ((___splice126846126847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125667125991_
                                                '0))))
                                        (let ((_tl125764125790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '1)))
                                              (_target125762125788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125764125790_))
                                              (___match127095127096_
                                               _e125669125986_
                                               _hd125668125989_
                                               _tl125667125991_
                                               ___splice126846126847_
                                               _target125762125788_
                                               _tl125764125790_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125667125991_))
                              (let ((___splice126846126847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125667125991_
                                        '0))))
                                (let ((_tl125764125790_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126846126847_
                                          '1)))
                                      (_target125762125788_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126846126847_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125764125790_))
                                      (___match127095127096_
                                       _e125669125986_
                                       _hd125668125989_
                                       _tl125667125991_
                                       ___splice126846126847_
                                       _target125762125788_
                                       _tl125764125790_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_)))))
                              (let ()
                                (declare (not safe))
                                (_g125660125775_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125667125991_))
                      (let ((___splice126846126847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125667125991_ '0))))
                        (let ((_tl125764125790_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '1)))
                              (_target125762125788_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125764125790_))
                              (___match127095127096_
                               _e125669125986_
                               _hd125668125989_
                               _tl125667125991_
                               ___splice126846126847_
                               _target125762125788_
                               _tl125764125790_)
                              (let ()
                                (declare (not safe))
                                (_g125660125775_)))))
                      (let () (declare (not safe)) (_g125660125775_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125667125991_))
                  (let ((___splice126846126847_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125667125991_ '0))))
                    (let ((_tl125764125790_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126846126847_ '1)))
                          (_target125762125788_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126846126847_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125764125790_))
                          (___match127095127096_
                           _e125669125986_
                           _hd125668125989_
                           _tl125667125991_
                           ___splice126846126847_
                           _target125762125788_
                           _tl125764125790_)
                          (let () (declare (not safe)) (_g125660125775_)))))
                  (let () (declare (not safe)) (_g125660125775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125667125991_))
                                                  (let ((___splice126846126847_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125667125991_
                                                            '0))))
                                                    (let ((_tl125764125790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '1)))
                                                          (_target125762125788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125764125790_))
                                                          (___match127095127096_
                                                           _e125669125986_
                                                           _hd125668125989_
                                                           _tl125667125991_
                                                           ___splice126846126847_
                                                           _target125762125788_
                                                           _tl125764125790_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125660125775_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125667125991_))
                                              (let ((___splice126846126847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125667125991_
                                                        '0))))
                                                (let ((_tl125764125790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '1)))
                                                      (_target125762125788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125764125790_))
                                                      (___match127095127096_
                                                       _e125669125986_
                                                       _hd125668125989_
                                                       _tl125667125991_
                                                       ___splice126846126847_
                                                       _target125762125788_
                                                       _tl125764125790_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125660125775_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125667125991_))
                                          (let ((___splice126846126847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125667125991_
                                                    '0))))
                                            (let ((_tl125764125790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126846126847_
                                                      '1)))
                                                  (_target125762125788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126846126847_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125764125790_))
                                                  (___match127095127096_
                                                   _e125669125986_
                                                   _hd125668125989_
                                                   _tl125667125991_
                                                   ___splice126846126847_
                                                   _target125762125788_
                                                   _tl125764125790_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125660125775_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125667125991_))
                                  (let ((___splice126846126847_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125667125991_
                                            '0))))
                                    (let ((_tl125764125790_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126846126847_
                                              '1)))
                                          (_target125762125788_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126846126847_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125764125790_))
                                          (___match127095127096_
                                           _e125669125986_
                                           _hd125668125989_
                                           _tl125667125991_
                                           ___splice126846126847_
                                           _target125762125788_
                                           _tl125764125790_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125660125775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125660125775_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125667125991_))
                          (let ((___splice126846126847_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125667125991_
                                    '0))))
                            (let ((_tl125764125790_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126846126847_ '1)))
                                  (_target125762125788_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126846126847_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125764125790_))
                                  (___match127095127096_
                                   _e125669125986_
                                   _hd125668125989_
                                   _tl125667125991_
                                   ___splice126846126847_
                                   _target125762125788_
                                   _tl125764125790_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125660125775_)))))
                          (let () (declare (not safe)) (_g125660125775_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125667125991_))
                      (let ((___splice126846126847_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125667125991_ '0))))
                        (let ((_tl125764125790_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '1)))
                              (_target125762125788_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126846126847_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125764125790_))
                              (___match127095127096_
                               _e125669125986_
                               _hd125668125989_
                               _tl125667125991_
                               ___splice126846126847_
                               _target125762125788_
                               _tl125764125790_)
                              (let ()
                                (declare (not safe))
                                (_g125660125775_)))))
                      (let () (declare (not safe)) (_g125660125775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125667125991_))
                                                      (let ((___splice126846126847_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125667125991_ '0))))
                (let ((_tl125764125790_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126846126847_ '1)))
                      (_target125762125788_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126846126847_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125764125790_))
                      (___match127095127096_
                       _e125669125986_
                       _hd125668125989_
                       _tl125667125991_
                       ___splice126846126847_
                       _target125762125788_
                       _tl125764125790_)
                      (let () (declare (not safe)) (_g125660125775_)))))
              (let () (declare (not safe)) (_g125660125775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125667125991_))
                                                  (let ((___splice126846126847_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125667125991_
                                                            '0))))
                                                    (let ((_tl125764125790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '1)))
                                                          (_target125762125788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126846126847_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125764125790_))
                                                          (___match127095127096_
                                                           _e125669125986_
                                                           _hd125668125989_
                                                           _tl125667125991_
                                                           ___splice126846126847_
                                                           _target125762125788_
                                                           _tl125764125790_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125660125775_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125660125775_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125667125991_))
                                              (let ((___splice126846126847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125667125991_
                                                        '0))))
                                                (let ((_tl125764125790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '1)))
                                                      (_target125762125788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126846126847_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125764125790_))
                                                      (___match127095127096_
                                                       _e125669125986_
                                                       _hd125668125989_
                                                       _tl125667125991_
                                                       ___splice126846126847_
                                                       _target125762125788_
                                                       _tl125764125790_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125660125775_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125667125991_))
                                      (let ((___splice126846126847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125667125991_
                                                '0))))
                                        (let ((_tl125764125790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '1)))
                                              (_target125762125788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126846126847_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125764125790_))
                                              (___match127095127096_
                                               _e125669125986_
                                               _hd125668125989_
                                               _tl125667125991_
                                               ___splice126846126847_
                                               _target125762125788_
                                               _tl125764125790_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125660125775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125667125991_))
                              (let ((___splice126846126847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125667125991_
                                        '0))))
                                (let ((_tl125764125790_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126846126847_
                                          '1)))
                                      (_target125762125788_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126846126847_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125764125790_))
                                      (___match127095127096_
                                       _e125669125986_
                                       _hd125668125989_
                                       _tl125667125991_
                                       ___splice126846126847_
                                       _target125762125788_
                                       _tl125764125790_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125660125775_)))))
                              (let ()
                                (declare (not safe))
                                (_g125660125775_))))))
                  (let () (declare (not safe)) (_g125660125775_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125596_)
        (let* ((___stx127098127099_ _stx125596_)
               (_g125599125612_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127098127099_)))))
          (let ((___kont127100127101_
                 (lambda (_L125640_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125640_))))
                (___kont127102127103_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127098127099_))
                (let ((_e125604125624_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127098127099_))))
                  (let ((_tl125602125629_
                         (let () (declare (not safe)) (##cdr _e125604125624_)))
                        (_hd125603125627_
                         (let ()
                           (declare (not safe))
                           (##car _e125604125624_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125602125629_))
                        (let ((_e125607125632_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125602125629_))))
                          (let ((_tl125605125637_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125607125632_)))
                                (_hd125606125635_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125607125632_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125605125637_))
                                (___kont127100127101_ _hd125606125635_)
                                (___kont127102127103_))))
                        (___kont127102127103_))))
                (___kont127102127103_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125476_)
        (let* ((_g125478125495_
                (lambda (_g125479125492_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125479125492_))))
               (_g125477125593_
                (lambda (_g125479125498_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125479125498_))
                      (let ((_e125484125500_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125479125498_))))
                        (let ((_hd125483125503_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125484125500_)))
                              (_tl125482125505_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125484125500_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125482125505_))
                              (let ((_e125487125508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125482125505_))))
                                (let ((_hd125486125511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125487125508_)))
                                      (_tl125485125513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125487125508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125485125513_))
                                      (let ((_e125490125516_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125485125513_))))
                                        (let ((_hd125489125519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125490125516_)))
                                              (_tl125488125521_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125490125516_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125488125521_))
                                              ((lambda (_L125524_ _L125525_)
                                                 (let* ((___stx127120127121_
                                                         _L125525_)
                                                        (_g125541125552_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127120127121_)))))
                                                   (let ((___kont127122127123_
                                                          (lambda (_L125572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125573_)
                    (let ((_$e125585_
                           (let ((__tmp128845
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125573_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128845))))
                      (if _$e125585_
                          ((lambda (_type-e125588_)
                             (_type-e125588_ _stx125476_ _L125525_))
                           _$e125585_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125524_))))))
                 (___kont127124127125_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127131127132_
                                                            (lambda (_e125547125564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125546125567_
                             _tl125545125569_)
                      (let ((_L125572_ _tl125545125569_)
                            (_L125573_ _hd125546125567_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125573_))
                            (___kont127122127123_ _L125572_ _L125573_)
                            (___kont127124127125_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127120127121_))
                   (let ((_e125547125564_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127120127121_))))
                     (let ((_tl125545125569_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125547125564_)))
                           (_hd125546125567_
                            (let ()
                              (declare (not safe))
                              (##car _e125547125564_))))
                       (___match127131127132_
                        _e125547125564_
                        _hd125546125567_
                        _tl125545125569_)))
                   (___kont127124127125_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125489125519_
                                               _hd125486125511_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125478125495_
                                                 _g125479125498_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125478125495_ _g125479125498_)))))
                              (let ()
                                (declare (not safe))
                                (_g125478125495_ _g125479125498_)))))
                      (let ()
                        (declare (not safe))
                        (_g125478125495_ _g125479125498_))))))
          (declare (not safe))
          (_g125477125593_ _stx125476_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125320_ _ann125321_)
        (let* ((_g125323125360_
                (lambda (_g125324125357_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125324125357_))))
               (_g125322125473_
                (lambda (_g125324125363_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125324125363_))
                      (let ((_e125334125365_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125324125363_))))
                        (let ((_hd125333125368_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125334125365_)))
                              (_tl125332125370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125334125365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125332125370_))
                              (let ((_e125337125373_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125332125370_))))
                                (let ((_hd125336125376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125337125373_)))
                                      (_tl125335125378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125337125373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125335125378_))
                                      (let ((_e125340125381_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125335125378_))))
                                        (let ((_hd125339125384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125340125381_)))
                                              (_tl125338125386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125340125381_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125338125386_))
                                              (let ((_e125343125389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125338125386_))))
                                                (let ((_hd125342125392_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125343125389_)))
                                                      (_tl125341125394_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125343125389_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125341125394_))
                                                      (let ((_e125346125397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125341125394_))))
                (let ((_hd125345125400_
                       (let () (declare (not safe)) (##car _e125346125397_)))
                      (_tl125344125402_
                       (let () (declare (not safe)) (##cdr _e125346125397_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125344125402_))
                      (let ((_e125349125405_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125344125402_))))
                        (let ((_hd125348125408_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125349125405_)))
                              (_tl125347125410_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125349125405_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125347125410_))
                              (let ((_e125352125413_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125347125410_))))
                                (let ((_hd125351125416_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125352125413_)))
                                      (_tl125350125418_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125352125413_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125350125418_))
                                      (let ((_e125355125421_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125350125418_))))
                                        (let ((_hd125354125424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125355125421_)))
                                              (_tl125353125426_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125355125421_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125353125426_))
                                              ((lambda (_L125429_
                                                        _L125430_
                                                        _L125431_
                                                        _L125432_
                                                        _L125433_
                                                        _L125434_
                                                        _L125435_)
                                                 (let ((_type-id125465_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125435_)))
                                                       (_super125466_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125434_)))
                                                       (_slots125467_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125433_)))
                                                       (_ctor-method125468_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125432_)))
                                                       (_struct?125469_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125431_)))
                                                       (_final?125470_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125430_)))
                                                       (_metaclass125471_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125429_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125429_))
                                                            '#f)))
                                                   (let ((__obj128803
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
                                                      __obj128803
                                                      _type-id125465_
                                                      _super125466_
                                                      _slots125467_
                                                      _ctor-method125468_
                                                      _struct?125469_
                                                      _final?125470_
                                                      _metaclass125471_)
                                                     __obj128803)))
                                               _hd125354125424_
                                               _hd125351125416_
                                               _hd125348125408_
                                               _hd125345125400_
                                               _hd125342125392_
                                               _hd125339125384_
                                               _hd125336125376_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125323125360_
                                                 _g125324125363_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125323125360_ _g125324125363_)))))
                              (let ()
                                (declare (not safe))
                                (_g125323125360_ _g125324125363_)))))
                      (let ()
                        (declare (not safe))
                        (_g125323125360_ _g125324125363_)))))
              (let ()
                (declare (not safe))
                (_g125323125360_ _g125324125363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125323125360_
                                                 _g125324125363_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125323125360_ _g125324125363_)))))
                              (let ()
                                (declare (not safe))
                                (_g125323125360_ _g125324125363_)))))
                      (let ()
                        (declare (not safe))
                        (_g125323125360_ _g125324125363_))))))
          (declare (not safe))
          (_g125322125473_ _ann125321_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125268_ _ann125269_)
        (let* ((_g125271125284_
                (lambda (_g125272125281_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125272125281_))))
               (_g125270125317_
                (lambda (_g125272125287_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125272125287_))
                      (let ((_e125276125289_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125272125287_))))
                        (let ((_hd125275125292_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125276125289_)))
                              (_tl125274125294_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125276125289_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125274125294_))
                              (let ((_e125279125297_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125274125294_))))
                                (let ((_hd125278125300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125279125297_)))
                                      (_tl125277125302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125279125297_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125277125302_))
                                      ((lambda (_L125305_)
                                         (let ((__tmp128846
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125305_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128846)))
                                       _hd125278125300_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125271125284_ _g125272125287_)))))
                              (let ()
                                (declare (not safe))
                                (_g125271125284_ _g125272125287_)))))
                      (let ()
                        (declare (not safe))
                        (_g125271125284_ _g125272125287_))))))
          (declare (not safe))
          (_g125270125317_ _ann125269_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125216_ _ann125217_)
        (let* ((_g125219125232_
                (lambda (_g125220125229_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125220125229_))))
               (_g125218125265_
                (lambda (_g125220125235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125220125235_))
                      (let ((_e125224125237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125220125235_))))
                        (let ((_hd125223125240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125224125237_)))
                              (_tl125222125242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125224125237_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125222125242_))
                              (let ((_e125227125245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125222125242_))))
                                (let ((_hd125226125248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125227125245_)))
                                      (_tl125225125250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125227125245_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125225125250_))
                                      ((lambda (_L125253_)
                                         (let ((__tmp128847
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125253_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128847)))
                                       _hd125226125248_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125219125232_ _g125220125235_)))))
                              (let ()
                                (declare (not safe))
                                (_g125219125232_ _g125220125235_)))))
                      (let ()
                        (declare (not safe))
                        (_g125219125232_ _g125220125235_))))))
          (declare (not safe))
          (_g125218125265_ _ann125217_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125132_ _ann125133_)
        (let* ((_g125135125156_
                (lambda (_g125136125153_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125136125153_))))
               (_g125134125213_
                (lambda (_g125136125159_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125136125159_))
                      (let ((_e125142125161_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125136125159_))))
                        (let ((_hd125141125164_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125142125161_)))
                              (_tl125140125166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125142125161_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125140125166_))
                              (let ((_e125145125169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125140125166_))))
                                (let ((_hd125144125172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125145125169_)))
                                      (_tl125143125174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125145125169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125143125174_))
                                      (let ((_e125148125177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125143125174_))))
                                        (let ((_hd125147125180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125148125177_)))
                                              (_tl125146125182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125148125177_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125146125182_))
                                              (let ((_e125151125185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125146125182_))))
                                                (let ((_hd125150125188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125151125185_)))
                                                      (_tl125149125190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125151125185_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125149125190_))
                                                      ((lambda (_L125193_
                                                                _L125194_
                                                                _L125195_)
                                                         (let ((__tmp128850
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125195_)))
                       (__tmp128849
                        (let () (declare (not safe)) (gx#stx-e _L125194_)))
                       (__tmp128848
                        (let () (declare (not safe)) (gx#stx-e _L125193_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128850
                    __tmp128849
                    __tmp128848)))
               _hd125150125188_
               _hd125147125180_
               _hd125144125172_)
              (let ()
                (declare (not safe))
                (_g125135125156_ _g125136125159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125135125156_
                                                 _g125136125159_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125135125156_ _g125136125159_)))))
                              (let ()
                                (declare (not safe))
                                (_g125135125156_ _g125136125159_)))))
                      (let ()
                        (declare (not safe))
                        (_g125135125156_ _g125136125159_))))))
          (declare (not safe))
          (_g125134125213_ _ann125133_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125048_ _ann125049_)
        (let* ((_g125051125072_
                (lambda (_g125052125069_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125052125069_))))
               (_g125050125129_
                (lambda (_g125052125075_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125052125075_))
                      (let ((_e125058125077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125052125075_))))
                        (let ((_hd125057125080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125058125077_)))
                              (_tl125056125082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125058125077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125056125082_))
                              (let ((_e125061125085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125056125082_))))
                                (let ((_hd125060125088_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125061125085_)))
                                      (_tl125059125090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125061125085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125059125090_))
                                      (let ((_e125064125093_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125059125090_))))
                                        (let ((_hd125063125096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125064125093_)))
                                              (_tl125062125098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125064125093_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125062125098_))
                                              (let ((_e125067125101_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125062125098_))))
                                                (let ((_hd125066125104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125067125101_)))
                                                      (_tl125065125106_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125067125101_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125065125106_))
                                                      ((lambda (_L125109_
                                                                _L125110_
                                                                _L125111_)
                                                         (let ((__tmp128853
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125111_)))
                       (__tmp128852
                        (let () (declare (not safe)) (gx#stx-e _L125110_)))
                       (__tmp128851
                        (let () (declare (not safe)) (gx#stx-e _L125109_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128853
                    __tmp128852
                    __tmp128851)))
               _hd125066125104_
               _hd125063125096_
               _hd125060125088_)
              (let ()
                (declare (not safe))
                (_g125051125072_ _g125052125075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125051125072_
                                                 _g125052125075_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125051125072_ _g125052125075_)))))
                              (let ()
                                (declare (not safe))
                                (_g125051125072_ _g125052125075_)))))
                      (let ()
                        (declare (not safe))
                        (_g125051125072_ _g125052125075_))))))
          (declare (not safe))
          (_g125050125129_ _ann125049_))))
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
      (lambda (_stx124168_)
        (let* ((___stx127134127135_ _stx124168_)
               (_g124174124370_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127134127135_)))))
          (let ((___kont127136127137_
                 (lambda (_L125036_)
                   (let ((__obj128804
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128804
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125036_))
                      '#f)
                     __obj128804)))
                (___kont127138127139_
                 (lambda (_L124963_
                          _L124964_
                          _L124965_
                          _L124966_
                          _L124967_
                          _L124968_)
                   (let* ((_tab125018_
                           (let () (declare (not safe)) (gx#stx-e _L124965_)))
                          (_keys125020_
                           (if _tab125018_
                               (let ((__tmp128854 (vector->list _tab125018_)))
                                 (declare (not safe))
                                 (filter values __tmp128854))
                               '#f)))
                     (let ((__tmp128855
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124964_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125020_
                        __tmp128855)))))
                (___kont127140127141_
                 (lambda (_L124696_
                          _L124697_
                          _L124698_
                          _L124699_
                          _L124700_
                          _L124701_
                          _L124702_
                          _L124703_
                          _L124704_
                          _L124705_)
                   (let ((__tmp128857
                          (map gx#stx-e
                               (let ((__tmp128858
                                      (lambda (_g124798124801_ _g124799124803_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124798124801_
                                                _g124799124803_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128858 '() _L124698_))))
                         (__tmp128856
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124702_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128857
                      __tmp128856))))
                (___kont127144127145_
                 (lambda (_L124406_)
                   (let ((__obj128805
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128805
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124406_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124406_)))
                     __obj128805)))
                (___kont127146127147_
                 (lambda (_L124383_)
                   (let ((__obj128806
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128806
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124383_))
                      '#f)
                     __obj128806))))
            (let* ((___match127453127454_
                    (lambda (_e124361124398_ _hd124360124401_ _tl124359124403_)
                      (let ((_L124406_ _tl124359124403_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124406_))
                            (___kont127144127145_ _L124406_)
                            (___kont127146127147_ _tl124359124403_)))))
                   (___match127447127448_
                    (lambda (_e124255124420_
                             _hd124254124423_
                             _tl124253124425_
                             _e124258124428_
                             _hd124257124431_
                             _tl124256124433_
                             _e124261124436_
                             _hd124260124439_
                             _tl124259124441_
                             _e124264124444_
                             _hd124263124447_
                             _tl124262124449_
                             _e124267124452_
                             _hd124266124455_
                             _tl124265124457_
                             _e124270124460_
                             _hd124269124463_
                             _tl124268124465_
                             _e124273124468_
                             _hd124272124471_
                             _tl124271124473_
                             _e124276124476_
                             _hd124275124479_
                             _tl124274124481_
                             _e124279124484_
                             _hd124278124487_
                             _tl124277124489_
                             _e124282124492_
                             _hd124281124495_
                             _tl124280124497_
                             _e124285124500_
                             _hd124284124503_
                             _tl124283124505_
                             _e124288124508_
                             _hd124287124511_
                             _tl124286124513_
                             _e124291124516_
                             _hd124290124519_
                             _tl124289124521_
                             _e124294124524_
                             _hd124293124527_
                             _tl124292124529_
                             ___splice127142127143_
                             _target124295124532_
                             _tl124297124534_
                             _e124312124537_
                             _hd124311124540_
                             _tl124310124542_
                             _e124315124545_
                             _hd124314124548_
                             _tl124313124550_
                             _e124318124553_
                             _hd124317124556_
                             _tl124316124558_)
                      (letrec ((_loop124298124561_
                                (lambda (_hd124296124564_
                                         _-absent-value124302124566_
                                         _key124303124568_
                                         _-xkwvar124304124570_
                                         _-hash-ref124305124572_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124296124564_))
                                      (let ((_e124299124575_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124296124564_))))
                                        (let ((_lp-tl124301124580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124299124575_)))
                                              (_lp-hd124300124578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124299124575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124300124578_))
                                              (let ((_e124321124583_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124300124578_))))
                                                (let ((_tl124319124588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124321124583_)))
                                                      (_hd124320124586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124321124583_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124320124586_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124320124586_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124319124588_))
                      (let ((_e124324124591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124319124588_))))
                        (let ((_tl124322124596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124324124591_)))
                              (_hd124323124594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124324124591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124323124594_))
                              (let ((_e124327124599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124323124594_))))
                                (let ((_tl124325124604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124327124599_)))
                                      (_hd124326124602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124327124599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124326124602_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124326124602_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124325124604_))
                                              (let ((_e124330124607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124325124604_))))
                                                (let ((_tl124328124612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124330124607_)))
                                                      (_hd124329124610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124330124607_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124328124612_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124322124596_))
                                                          (let ((_e124333124615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124322124596_))))
                    (let ((_tl124331124620_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124333124615_)))
                          (_hd124332124618_
                           (let ()
                             (declare (not safe))
                             (##car _e124333124615_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124332124618_))
                          (let ((_e124336124623_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124332124618_))))
                            (let ((_tl124334124628_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124336124623_)))
                                  (_hd124335124626_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124336124623_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124335124626_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124335124626_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124334124628_))
                                          (let ((_e124339124631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124334124628_))))
                                            (let ((_tl124337124636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124339124631_)))
                                                  (_hd124338124634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124339124631_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124337124636_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124331124620_))
                                                      (let ((_e124342124639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124331124620_))))
                (let ((_tl124340124644_
                       (let () (declare (not safe)) (##cdr _e124342124639_)))
                      (_hd124341124642_
                       (let () (declare (not safe)) (##car _e124342124639_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124341124642_))
                      (let ((_e124345124647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124341124642_))))
                        (let ((_tl124343124652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124345124647_)))
                              (_hd124344124650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124345124647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124344124650_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124344124650_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124343124652_))
                                      (let ((_e124348124655_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124343124652_))))
                                        (let ((_tl124346124660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124348124655_)))
                                              (_hd124347124658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124348124655_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124346124660_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124340124644_))
                                                  (let ((_e124351124663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124340124644_))))
                                                    (let ((_tl124349124668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124351124663_)))
                                                          (_hd124350124666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124351124663_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124350124666_))
                                                          (let ((_e124354124671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124350124666_))))
                    (let ((_tl124352124676_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124354124671_)))
                          (_hd124353124674_
                           (let ()
                             (declare (not safe))
                             (##car _e124354124671_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124353124674_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124353124674_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124352124676_))
                                  (let ((_e124357124679_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124352124676_))))
                                    (let ((_tl124355124684_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124357124679_)))
                                          (_hd124356124682_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124357124679_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124355124684_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124349124668_))
                                              (let ((__tmp128873
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124356124682_
                                                             _-absent-value124302124566_)))
                                                    (__tmp128872
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124347124658_
                                                             _key124303124568_)))
                                                    (__tmp128871
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124338124634_
                                                             _-xkwvar124304124570_)))
                                                    (__tmp128870
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124329124610_
                                                             _-hash-ref124305124572_))))
                                                (declare (not safe))
                                                (_loop124298124561_
                                                 _lp-tl124301124580_
                                                 __tmp128873
                                                 __tmp128872
                                                 __tmp128871
                                                 __tmp128870))
                                              (___match127453127454_
                                               _e124255124420_
                                               _hd124254124423_
                                               _tl124253124425_))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))
                              (___match127453127454_
                               _e124255124420_
                               _hd124254124423_
                               _tl124253124425_))
                          (___match127453127454_
                           _e124255124420_
                           _hd124254124423_
                           _tl124253124425_))))
                  (___match127453127454_
                   _e124255124420_
                   _hd124254124423_
                   _tl124253124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))
                                              (___match127453127454_
                                               _e124255124420_
                                               _hd124254124423_
                                               _tl124253124425_))))
                                      (___match127453127454_
                                       _e124255124420_
                                       _hd124254124423_
                                       _tl124253124425_))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))
                              (___match127453127454_
                               _e124255124420_
                               _hd124254124423_
                               _tl124253124425_))))
                      (___match127453127454_
                       _e124255124420_
                       _hd124254124423_
                       _tl124253124425_))))
              (___match127453127454_
               _e124255124420_
               _hd124254124423_
               _tl124253124425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))
                                      (___match127453127454_
                                       _e124255124420_
                                       _hd124254124423_
                                       _tl124253124425_))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))))
                          (___match127453127454_
                           _e124255124420_
                           _hd124254124423_
                           _tl124253124425_))))
                  (___match127453127454_
                   _e124255124420_
                   _hd124254124423_
                   _tl124253124425_))
              (___match127453127454_
               _e124255124420_
               _hd124254124423_
               _tl124253124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127453127454_
                                               _e124255124420_
                                               _hd124254124423_
                                               _tl124253124425_))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))
                                      (___match127453127454_
                                       _e124255124420_
                                       _hd124254124423_
                                       _tl124253124425_))))
                              (___match127453127454_
                               _e124255124420_
                               _hd124254124423_
                               _tl124253124425_))))
                      (___match127453127454_
                       _e124255124420_
                       _hd124254124423_
                       _tl124253124425_))
                  (___match127453127454_
                   _e124255124420_
                   _hd124254124423_
                   _tl124253124425_))
              (___match127453127454_
               _e124255124420_
               _hd124254124423_
               _tl124253124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127453127454_
                                               _e124255124420_
                                               _hd124254124423_
                                               _tl124253124425_))))
                                      (let ((_-hash-ref124309124693_
                                             (reverse _-hash-ref124305124572_))
                                            (_-xkwvar124308124691_
                                             (reverse _-xkwvar124304124570_))
                                            (_key124307124689_
                                             (reverse _key124303124568_))
                                            (_-absent-value124306124687_
                                             (reverse _-absent-value124302124566_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124262124449_))
                                            (let ((_L124696_ _hd124317124556_)
                                                  (_L124697_
                                                   _-absent-value124306124687_)
                                                  (_L124698_ _key124307124689_)
                                                  (_L124699_
                                                   _-xkwvar124308124691_)
                                                  (_L124700_
                                                   _-hash-ref124309124693_)
                                                  (_L124701_ _hd124293124527_)
                                                  (_L124702_ _hd124284124503_)
                                                  (_L124703_ _hd124275124479_)
                                                  (_L124704_ _tl124259124441_)
                                                  (_L124705_ _hd124260124439_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124705_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124704_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124703_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124705_
                                                          _L124701_))
                                                       (let ((__tmp128868
                                                              (let ((__tmp128869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124758124761_ _g124759124763_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124758124761_ _g124759124763_)))))
                        (declare (not safe))
                        (foldr1 __tmp128869 '() _L124698_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128868))
               (let ((__tmp128867
                      (lambda (_g124765124767_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124765124767_
                           'hash-ref))))
                     (__tmp128865
                      (let ((__tmp128866
                             (lambda (_g124769124772_ _g124770124774_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124769124772_ _g124770124774_)))))
                        (declare (not safe))
                        (foldr1 __tmp128866 '() _L124700_))))
                 (declare (not safe))
                 (andmap1 __tmp128867 __tmp128865))
               (let ((__tmp128864
                      (lambda (_g124776124778_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124776124778_
                           'absent-value))))
                     (__tmp128862
                      (let ((__tmp128863
                             (lambda (_g124780124783_ _g124781124785_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124780124783_ _g124781124785_)))))
                        (declare (not safe))
                        (foldr1 __tmp128863 '() _L124697_))))
                 (declare (not safe))
                 (andmap1 __tmp128864 __tmp128862))
               (let ((__tmp128861
                      (lambda (_g124787124789_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124787124789_ _L124705_))))
                     (__tmp128859
                      (let ((__tmp128860
                             (lambda (_g124791124794_ _g124792124796_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124791124794_ _g124792124796_)))))
                        (declare (not safe))
                        (foldr1 __tmp128860 '() _L124699_))))
                 (declare (not safe))
                 (andmap1 __tmp128861 __tmp128859)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127140127141_
                                                   _L124696_
                                                   _L124697_
                                                   _L124698_
                                                   _L124699_
                                                   _L124700_
                                                   _L124701_
                                                   _L124702_
                                                   _L124703_
                                                   _L124704_
                                                   _L124705_)
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_)))
                                            (___match127453127454_
                                             _e124255124420_
                                             _hd124254124423_
                                             _tl124253124425_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124298124561_
                           _target124295124532_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127319127320_
                    (lambda (_e124255124420_
                             _hd124254124423_
                             _tl124253124425_
                             _e124258124428_
                             _hd124257124431_
                             _tl124256124433_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124257124431_))
                          (let ((_e124261124436_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124257124431_))))
                            (let ((_tl124259124441_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124261124436_)))
                                  (_hd124260124439_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124261124436_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124256124433_))
                                  (let ((_e124264124444_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124256124433_))))
                                    (let ((_tl124262124449_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124264124444_)))
                                          (_hd124263124447_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124264124444_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124263124447_))
                                          (let ((_e124267124452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124263124447_))))
                                            (let ((_tl124265124457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124267124452_)))
                                                  (_hd124266124455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124267124452_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124266124455_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124266124455_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124265124457_))
                                                          (let ((_e124270124460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124265124457_))))
                    (let ((_tl124268124465_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124270124460_)))
                          (_hd124269124463_
                           (let ()
                             (declare (not safe))
                             (##car _e124270124460_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124269124463_))
                          (let ((_e124273124468_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124269124463_))))
                            (let ((_tl124271124473_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124273124468_)))
                                  (_hd124272124471_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124273124468_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124272124471_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124272124471_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124271124473_))
                                          (let ((_e124276124476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124271124473_))))
                                            (let ((_tl124274124481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124276124476_)))
                                                  (_hd124275124479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124276124476_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124274124481_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124268124465_))
                                                      (let ((_e124279124484_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124268124465_))))
                (let ((_tl124277124489_
                       (let () (declare (not safe)) (##cdr _e124279124484_)))
                      (_hd124278124487_
                       (let () (declare (not safe)) (##car _e124279124484_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124278124487_))
                      (let ((_e124282124492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124278124487_))))
                        (let ((_tl124280124497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124282124492_)))
                              (_hd124281124495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124282124492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124281124495_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124281124495_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124280124497_))
                                      (let ((_e124285124500_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124280124497_))))
                                        (let ((_tl124283124505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124285124500_)))
                                              (_hd124284124503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124285124500_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124283124505_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124277124489_))
                                                  (let ((_e124288124508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124277124489_))))
                                                    (let ((_tl124286124513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124288124508_)))
                                                          (_hd124287124511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124288124508_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124287124511_))
                                                          (let ((_e124291124516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124287124511_))))
                    (let ((_tl124289124521_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124291124516_)))
                          (_hd124290124519_
                           (let ()
                             (declare (not safe))
                             (##car _e124291124516_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124290124519_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124290124519_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124289124521_))
                                  (let ((_e124294124524_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124289124521_))))
                                    (let ((_tl124292124529_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124294124524_)))
                                          (_hd124293124527_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124294124524_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124292124529_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124286124513_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124286124513_))
                                                        '1)
                                                  (let ((___splice127142127143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124286124513_
                                                            '1))))
                                                    (let ((_tl124297124534_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127142127143_
                                                              '1)))
                                                          (_target124295124532_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127142127143_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124297124534_))
                                                          (let ((_e124312124537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124297124534_))))
                    (let ((_tl124310124542_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124312124537_)))
                          (_hd124311124540_
                           (let ()
                             (declare (not safe))
                             (##car _e124312124537_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124311124540_))
                          (let ((_e124315124545_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124311124540_))))
                            (let ((_tl124313124550_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124315124545_)))
                                  (_hd124314124548_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124315124545_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124314124548_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124314124548_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124313124550_))
                                          (let ((_e124318124553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124313124550_))))
                                            (let ((_tl124316124558_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124318124553_)))
                                                  (_hd124317124556_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124318124553_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124316124558_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124310124542_))
                                                      (___match127447127448_
                                                       _e124255124420_
                                                       _hd124254124423_
                                                       _tl124253124425_
                                                       _e124258124428_
                                                       _hd124257124431_
                                                       _tl124256124433_
                                                       _e124261124436_
                                                       _hd124260124439_
                                                       _tl124259124441_
                                                       _e124264124444_
                                                       _hd124263124447_
                                                       _tl124262124449_
                                                       _e124267124452_
                                                       _hd124266124455_
                                                       _tl124265124457_
                                                       _e124270124460_
                                                       _hd124269124463_
                                                       _tl124268124465_
                                                       _e124273124468_
                                                       _hd124272124471_
                                                       _tl124271124473_
                                                       _e124276124476_
                                                       _hd124275124479_
                                                       _tl124274124481_
                                                       _e124279124484_
                                                       _hd124278124487_
                                                       _tl124277124489_
                                                       _e124282124492_
                                                       _hd124281124495_
                                                       _tl124280124497_
                                                       _e124285124500_
                                                       _hd124284124503_
                                                       _tl124283124505_
                                                       _e124288124508_
                                                       _hd124287124511_
                                                       _tl124286124513_
                                                       _e124291124516_
                                                       _hd124290124519_
                                                       _tl124289124521_
                                                       _e124294124524_
                                                       _hd124293124527_
                                                       _tl124292124529_
                                                       ___splice127142127143_
                                                       _target124295124532_
                                                       _tl124297124534_
                                                       _e124312124537_
                                                       _hd124311124540_
                                                       _tl124310124542_
                                                       _e124315124545_
                                                       _hd124314124548_
                                                       _tl124313124550_
                                                       _e124318124553_
                                                       _hd124317124556_
                                                       _tl124316124558_)
                                                      (___match127453127454_
                                                       _e124255124420_
                                                       _hd124254124423_
                                                       _tl124253124425_))
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))
                                      (___match127453127454_
                                       _e124255124420_
                                       _hd124254124423_
                                       _tl124253124425_))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))))
                          (___match127453127454_
                           _e124255124420_
                           _hd124254124423_
                           _tl124253124425_))))
                  (___match127453127454_
                   _e124255124420_
                   _hd124254124423_
                   _tl124253124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))
                                              (___match127453127454_
                                               _e124255124420_
                                               _hd124254124423_
                                               _tl124253124425_))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))
                              (___match127453127454_
                               _e124255124420_
                               _hd124254124423_
                               _tl124253124425_))
                          (___match127453127454_
                           _e124255124420_
                           _hd124254124423_
                           _tl124253124425_))))
                  (___match127453127454_
                   _e124255124420_
                   _hd124254124423_
                   _tl124253124425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))
                                              (___match127453127454_
                                               _e124255124420_
                                               _hd124254124423_
                                               _tl124253124425_))))
                                      (___match127453127454_
                                       _e124255124420_
                                       _hd124254124423_
                                       _tl124253124425_))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))
                              (___match127453127454_
                               _e124255124420_
                               _hd124254124423_
                               _tl124253124425_))))
                      (___match127453127454_
                       _e124255124420_
                       _hd124254124423_
                       _tl124253124425_))))
              (___match127453127454_
               _e124255124420_
               _hd124254124423_
               _tl124253124425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))
                                      (___match127453127454_
                                       _e124255124420_
                                       _hd124254124423_
                                       _tl124253124425_))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))))
                          (___match127453127454_
                           _e124255124420_
                           _hd124254124423_
                           _tl124253124425_))))
                  (___match127453127454_
                   _e124255124420_
                   _hd124254124423_
                   _tl124253124425_))
              (___match127453127454_
               _e124255124420_
               _hd124254124423_
               _tl124253124425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127453127454_
                                                   _e124255124420_
                                                   _hd124254124423_
                                                   _tl124253124425_))))
                                          (___match127453127454_
                                           _e124255124420_
                                           _hd124254124423_
                                           _tl124253124425_))))
                                  (___match127453127454_
                                   _e124255124420_
                                   _hd124254124423_
                                   _tl124253124425_))))
                          (___match127453127454_
                           _e124255124420_
                           _hd124254124423_
                           _tl124253124425_))))
                   (___match127307127308_
                    (lambda (_e124188124811_
                             _hd124187124814_
                             _tl124186124816_
                             _e124191124819_
                             _hd124190124822_
                             _tl124189124824_
                             _e124194124827_
                             _hd124193124830_
                             _tl124192124832_
                             _e124197124835_
                             _hd124196124838_
                             _tl124195124840_
                             _e124200124843_
                             _hd124199124846_
                             _tl124198124848_
                             _e124203124851_
                             _hd124202124854_
                             _tl124201124856_
                             _e124206124859_
                             _hd124205124862_
                             _tl124204124864_
                             _e124209124867_
                             _hd124208124870_
                             _tl124207124872_
                             _e124212124875_
                             _hd124211124878_
                             _tl124210124880_
                             _e124215124883_
                             _hd124214124886_
                             _tl124213124888_
                             _e124218124891_
                             _hd124217124894_
                             _tl124216124896_
                             _e124221124899_
                             _hd124220124902_
                             _tl124219124904_
                             _e124224124907_
                             _hd124223124910_
                             _tl124222124912_
                             _e124227124915_
                             _hd124226124918_
                             _tl124225124920_
                             _e124230124923_
                             _hd124229124926_
                             _tl124228124928_
                             _e124233124931_
                             _hd124232124934_
                             _tl124231124936_
                             _e124236124939_
                             _hd124235124942_
                             _tl124234124944_
                             _e124239124947_
                             _hd124238124950_
                             _tl124237124952_
                             _e124242124955_
                             _hd124241124958_
                             _tl124240124960_)
                      (let ((_L124963_ _hd124241124958_)
                            (_L124964_ _hd124232124934_)
                            (_L124965_ _hd124223124910_)
                            (_L124966_ _hd124214124886_)
                            (_L124967_ _hd124205124862_)
                            (_L124968_ _hd124190124822_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124968_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124967_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124966_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124968_ _L124963_)))
                            (___kont127138127139_
                             _L124963_
                             _L124964_
                             _L124965_
                             _L124966_
                             _L124967_
                             _L124968_)
                            (___match127319127320_
                             _e124188124811_
                             _hd124187124814_
                             _tl124186124816_
                             _e124191124819_
                             _hd124190124822_
                             _tl124189124824_)))))
                   (___match127161127162_
                    (lambda (_e124188124811_ _hd124187124814_ _tl124186124816_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124186124816_))
                          (let ((_e124191124819_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124186124816_))))
                            (let ((_tl124189124824_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124191124819_)))
                                  (_hd124190124822_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124191124819_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124189124824_))
                                  (let ((_e124194124827_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124189124824_))))
                                    (let ((_tl124192124832_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124194124827_)))
                                          (_hd124193124830_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124194124827_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124193124830_))
                                          (let ((_e124197124835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124193124830_))))
                                            (let ((_tl124195124840_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124197124835_)))
                                                  (_hd124196124838_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124197124835_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124196124838_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124196124838_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124195124840_))
                                                          (let ((_e124200124843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124195124840_))))
                    (let ((_tl124198124848_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124200124843_)))
                          (_hd124199124846_
                           (let ()
                             (declare (not safe))
                             (##car _e124200124843_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124199124846_))
                          (let ((_e124203124851_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124199124846_))))
                            (let ((_tl124201124856_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124203124851_)))
                                  (_hd124202124854_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124203124851_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124202124854_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124202124854_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124201124856_))
                                          (let ((_e124206124859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124201124856_))))
                                            (let ((_tl124204124864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124206124859_)))
                                                  (_hd124205124862_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124206124859_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124204124864_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124198124848_))
                                                      (let ((_e124209124867_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124198124848_))))
                (let ((_tl124207124872_
                       (let () (declare (not safe)) (##cdr _e124209124867_)))
                      (_hd124208124870_
                       (let () (declare (not safe)) (##car _e124209124867_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124208124870_))
                      (let ((_e124212124875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124208124870_))))
                        (let ((_tl124210124880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124212124875_)))
                              (_hd124211124878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124212124875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124211124878_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124211124878_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124210124880_))
                                      (let ((_e124215124883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124210124880_))))
                                        (let ((_tl124213124888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124215124883_)))
                                              (_hd124214124886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124215124883_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124213124888_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124207124872_))
                                                  (let ((_e124218124891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124207124872_))))
                                                    (let ((_tl124216124896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124218124891_)))
                                                          (_hd124217124894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124218124891_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124217124894_))
                                                          (let ((_e124221124899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124217124894_))))
                    (let ((_tl124219124904_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124221124899_)))
                          (_hd124220124902_
                           (let ()
                             (declare (not safe))
                             (##car _e124221124899_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124220124902_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124220124902_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124219124904_))
                                  (let ((_e124224124907_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124219124904_))))
                                    (let ((_tl124222124912_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124224124907_)))
                                          (_hd124223124910_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124224124907_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124222124912_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124216124896_))
                                              (let ((_e124227124915_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124216124896_))))
                                                (let ((_tl124225124920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124227124915_)))
                                                      (_hd124226124918_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124227124915_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124226124918_))
                                                      (let ((_e124230124923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124226124918_))))
                (let ((_tl124228124928_
                       (let () (declare (not safe)) (##cdr _e124230124923_)))
                      (_hd124229124926_
                       (let () (declare (not safe)) (##car _e124230124923_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124229124926_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124229124926_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124228124928_))
                              (let ((_e124233124931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124228124928_))))
                                (let ((_tl124231124936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124233124931_)))
                                      (_hd124232124934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124233124931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124231124936_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124225124920_))
                                          (let ((_e124236124939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124225124920_))))
                                            (let ((_tl124234124944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124236124939_)))
                                                  (_hd124235124942_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124236124939_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124235124942_))
                                                  (let ((_e124239124947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124235124942_))))
                                                    (let ((_tl124237124952_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124239124947_)))
                                                          (_hd124238124950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124239124947_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124238124950_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124238124950_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124237124952_))
                          (let ((_e124242124955_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124237124952_))))
                            (let ((_tl124240124960_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124242124955_)))
                                  (_hd124241124958_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124242124955_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124240124960_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124234124944_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124192124832_))
                                          (___match127307127308_
                                           _e124188124811_
                                           _hd124187124814_
                                           _tl124186124816_
                                           _e124191124819_
                                           _hd124190124822_
                                           _tl124189124824_
                                           _e124194124827_
                                           _hd124193124830_
                                           _tl124192124832_
                                           _e124197124835_
                                           _hd124196124838_
                                           _tl124195124840_
                                           _e124200124843_
                                           _hd124199124846_
                                           _tl124198124848_
                                           _e124203124851_
                                           _hd124202124854_
                                           _tl124201124856_
                                           _e124206124859_
                                           _hd124205124862_
                                           _tl124204124864_
                                           _e124209124867_
                                           _hd124208124870_
                                           _tl124207124872_
                                           _e124212124875_
                                           _hd124211124878_
                                           _tl124210124880_
                                           _e124215124883_
                                           _hd124214124886_
                                           _tl124213124888_
                                           _e124218124891_
                                           _hd124217124894_
                                           _tl124216124896_
                                           _e124221124899_
                                           _hd124220124902_
                                           _tl124219124904_
                                           _e124224124907_
                                           _hd124223124910_
                                           _tl124222124912_
                                           _e124227124915_
                                           _hd124226124918_
                                           _tl124225124920_
                                           _e124230124923_
                                           _hd124229124926_
                                           _tl124228124928_
                                           _e124233124931_
                                           _hd124232124934_
                                           _tl124231124936_
                                           _e124236124939_
                                           _hd124235124942_
                                           _tl124234124944_
                                           _e124239124947_
                                           _hd124238124950_
                                           _tl124237124952_
                                           _e124242124955_
                                           _hd124241124958_
                                           _tl124240124960_)
                                          (___match127319127320_
                                           _e124188124811_
                                           _hd124187124814_
                                           _tl124186124816_
                                           _e124191124819_
                                           _hd124190124822_
                                           _tl124189124824_))
                                      (___match127319127320_
                                       _e124188124811_
                                       _hd124187124814_
                                       _tl124186124816_
                                       _e124191124819_
                                       _hd124190124822_
                                       _tl124189124824_))
                                  (___match127319127320_
                                   _e124188124811_
                                   _hd124187124814_
                                   _tl124186124816_
                                   _e124191124819_
                                   _hd124190124822_
                                   _tl124189124824_))))
                          (___match127319127320_
                           _e124188124811_
                           _hd124187124814_
                           _tl124186124816_
                           _e124191124819_
                           _hd124190124822_
                           _tl124189124824_))
                      (___match127319127320_
                       _e124188124811_
                       _hd124187124814_
                       _tl124186124816_
                       _e124191124819_
                       _hd124190124822_
                       _tl124189124824_))
                  (___match127319127320_
                   _e124188124811_
                   _hd124187124814_
                   _tl124186124816_
                   _e124191124819_
                   _hd124190124822_
                   _tl124189124824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127319127320_
                                                   _e124188124811_
                                                   _hd124187124814_
                                                   _tl124186124816_
                                                   _e124191124819_
                                                   _hd124190124822_
                                                   _tl124189124824_))))
                                          (___match127319127320_
                                           _e124188124811_
                                           _hd124187124814_
                                           _tl124186124816_
                                           _e124191124819_
                                           _hd124190124822_
                                           _tl124189124824_))
                                      (___match127319127320_
                                       _e124188124811_
                                       _hd124187124814_
                                       _tl124186124816_
                                       _e124191124819_
                                       _hd124190124822_
                                       _tl124189124824_))))
                              (___match127319127320_
                               _e124188124811_
                               _hd124187124814_
                               _tl124186124816_
                               _e124191124819_
                               _hd124190124822_
                               _tl124189124824_))
                          (___match127319127320_
                           _e124188124811_
                           _hd124187124814_
                           _tl124186124816_
                           _e124191124819_
                           _hd124190124822_
                           _tl124189124824_))
                      (___match127319127320_
                       _e124188124811_
                       _hd124187124814_
                       _tl124186124816_
                       _e124191124819_
                       _hd124190124822_
                       _tl124189124824_))))
              (___match127319127320_
               _e124188124811_
               _hd124187124814_
               _tl124186124816_
               _e124191124819_
               _hd124190124822_
               _tl124189124824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127319127320_
                                               _e124188124811_
                                               _hd124187124814_
                                               _tl124186124816_
                                               _e124191124819_
                                               _hd124190124822_
                                               _tl124189124824_))
                                          (___match127319127320_
                                           _e124188124811_
                                           _hd124187124814_
                                           _tl124186124816_
                                           _e124191124819_
                                           _hd124190124822_
                                           _tl124189124824_))))
                                  (___match127319127320_
                                   _e124188124811_
                                   _hd124187124814_
                                   _tl124186124816_
                                   _e124191124819_
                                   _hd124190124822_
                                   _tl124189124824_))
                              (___match127319127320_
                               _e124188124811_
                               _hd124187124814_
                               _tl124186124816_
                               _e124191124819_
                               _hd124190124822_
                               _tl124189124824_))
                          (___match127319127320_
                           _e124188124811_
                           _hd124187124814_
                           _tl124186124816_
                           _e124191124819_
                           _hd124190124822_
                           _tl124189124824_))))
                  (___match127319127320_
                   _e124188124811_
                   _hd124187124814_
                   _tl124186124816_
                   _e124191124819_
                   _hd124190124822_
                   _tl124189124824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127319127320_
                                                   _e124188124811_
                                                   _hd124187124814_
                                                   _tl124186124816_
                                                   _e124191124819_
                                                   _hd124190124822_
                                                   _tl124189124824_))
                                              (___match127319127320_
                                               _e124188124811_
                                               _hd124187124814_
                                               _tl124186124816_
                                               _e124191124819_
                                               _hd124190124822_
                                               _tl124189124824_))))
                                      (___match127319127320_
                                       _e124188124811_
                                       _hd124187124814_
                                       _tl124186124816_
                                       _e124191124819_
                                       _hd124190124822_
                                       _tl124189124824_))
                                  (___match127319127320_
                                   _e124188124811_
                                   _hd124187124814_
                                   _tl124186124816_
                                   _e124191124819_
                                   _hd124190124822_
                                   _tl124189124824_))
                              (___match127319127320_
                               _e124188124811_
                               _hd124187124814_
                               _tl124186124816_
                               _e124191124819_
                               _hd124190124822_
                               _tl124189124824_))))
                      (___match127319127320_
                       _e124188124811_
                       _hd124187124814_
                       _tl124186124816_
                       _e124191124819_
                       _hd124190124822_
                       _tl124189124824_))))
              (___match127319127320_
               _e124188124811_
               _hd124187124814_
               _tl124186124816_
               _e124191124819_
               _hd124190124822_
               _tl124189124824_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127319127320_
                                                   _e124188124811_
                                                   _hd124187124814_
                                                   _tl124186124816_
                                                   _e124191124819_
                                                   _hd124190124822_
                                                   _tl124189124824_))))
                                          (___match127319127320_
                                           _e124188124811_
                                           _hd124187124814_
                                           _tl124186124816_
                                           _e124191124819_
                                           _hd124190124822_
                                           _tl124189124824_))
                                      (___match127319127320_
                                       _e124188124811_
                                       _hd124187124814_
                                       _tl124186124816_
                                       _e124191124819_
                                       _hd124190124822_
                                       _tl124189124824_))
                                  (___match127319127320_
                                   _e124188124811_
                                   _hd124187124814_
                                   _tl124186124816_
                                   _e124191124819_
                                   _hd124190124822_
                                   _tl124189124824_))))
                          (___match127319127320_
                           _e124188124811_
                           _hd124187124814_
                           _tl124186124816_
                           _e124191124819_
                           _hd124190124822_
                           _tl124189124824_))))
                  (___match127319127320_
                   _e124188124811_
                   _hd124187124814_
                   _tl124186124816_
                   _e124191124819_
                   _hd124190124822_
                   _tl124189124824_))
              (___match127319127320_
               _e124188124811_
               _hd124187124814_
               _tl124186124816_
               _e124191124819_
               _hd124190124822_
               _tl124189124824_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127319127320_
                                                   _e124188124811_
                                                   _hd124187124814_
                                                   _tl124186124816_
                                                   _e124191124819_
                                                   _hd124190124822_
                                                   _tl124189124824_))))
                                          (___match127319127320_
                                           _e124188124811_
                                           _hd124187124814_
                                           _tl124186124816_
                                           _e124191124819_
                                           _hd124190124822_
                                           _tl124189124824_))))
                                  (___match127319127320_
                                   _e124188124811_
                                   _hd124187124814_
                                   _tl124186124816_
                                   _e124191124819_
                                   _hd124190124822_
                                   _tl124189124824_))))
                          (___match127453127454_
                           _e124188124811_
                           _hd124187124814_
                           _tl124186124816_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127134127135_))
                  (let ((_e124179125028_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127134127135_))))
                    (let ((_tl124177125033_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124179125028_)))
                          (_hd124178125031_
                           (let ()
                             (declare (not safe))
                             (##car _e124179125028_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125036_ _tl124177125033_))
                            (___kont127136127137_ _L125036_))
                          (___match127161127162_
                           _e124179125028_
                           _hd124178125031_
                           _tl124177125033_))))
                  (let () (declare (not safe)) (_g124174124370_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx124123_)
        (letrec ((_clause-e124125_
                  (lambda (_form124166_)
                    (let ((__obj128807
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
                       __obj128807
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124166_))
                       (if (let ((__tmp128874
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128874))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124166_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124166_))
                               '#f)
                           '#f))
                      __obj128807))))
          (let* ((_g124127124137_
                  (lambda (_g124128124134_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124128124134_))))
                 (_g124126124163_
                  (lambda (_g124128124140_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124128124140_))
                        (let ((_e124132124142_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124128124140_))))
                          (let ((_hd124131124145_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124132124142_)))
                                (_tl124130124147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124132124142_))))
                            ((lambda (_L124150_)
                               (let ((_clauses124161_
                                      (map _clause-e124125_ _L124150_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124161_)))
                             _tl124130124147_)))
                        (let ()
                          (declare (not safe))
                          (_g124127124137_ _g124128124140_))))))
            (declare (not safe))
            (_g124126124163_ _stx124123_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx124055_)
        (let* ((_g124057124074_
                (lambda (_g124058124071_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124058124071_))))
               (_g124056124120_
                (lambda (_g124058124077_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124058124077_))
                      (let ((_e124063124079_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124058124077_))))
                        (let ((_hd124062124082_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124063124079_)))
                              (_tl124061124084_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124063124079_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124061124084_))
                              (let ((_e124066124087_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124061124084_))))
                                (let ((_hd124065124090_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124066124087_)))
                                      (_tl124064124092_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124066124087_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124064124092_))
                                      (let ((_e124069124095_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124064124092_))))
                                        (let ((_hd124068124098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124069124095_)))
                                              (_tl124067124100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124069124095_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124067124100_))
                                              ((lambda (_L124103_ _L124104_)
                                                 (let ((__tmp128875
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L124103_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128875
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124068124098_
                                               _hd124065124090_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124057124074_
                                                 _g124058124077_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124057124074_ _g124058124077_)))))
                              (let ()
                                (declare (not safe))
                                (_g124057124074_ _g124058124077_)))))
                      (let ()
                        (declare (not safe))
                        (_g124057124074_ _g124058124077_))))))
          (declare (not safe))
          (_g124056124120_ _stx124055_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123960_)
        (let* ((___stx127462127463_ _stx123960_)
               (_g123963123983_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127462127463_)))))
          (let ((___kont127464127465_
                 (lambda (_L124027_ _L124028_)
                   (let ((_type-e124045124047_
                          (let ((__tmp128876
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124028_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128876))))
                     (if _type-e124045124047_
                         (let ((_type-e124050_ _type-e124045124047_))
                           (_type-e124050_ _stx123960_ _L124027_))
                         '#f))))
                (___kont127466127467_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127462127463_))
                (let ((_e123969123995_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127462127463_))))
                  (let ((_tl123967124000_
                         (let () (declare (not safe)) (##cdr _e123969123995_)))
                        (_hd123968123998_
                         (let ()
                           (declare (not safe))
                           (##car _e123969123995_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123967124000_))
                        (let ((_e123972124003_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123967124000_))))
                          (let ((_tl123970124008_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123972124003_)))
                                (_hd123971124006_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123972124003_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123971124006_))
                                (let ((_e123975124011_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123971124006_))))
                                  (let ((_tl123973124016_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123975124011_)))
                                        (_hd123974124014_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123975124011_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123974124014_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123974124014_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123973124016_))
                                                (let ((_e123978124019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123973124016_))))
                                                  (let ((_tl123976124024_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123978124019_)))
                                                        (_hd123977124022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123978124019_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123976124024_))
                                                        (___kont127464127465_
                                                         _tl123970124008_
                                                         _hd123977124022_)
                                                        (___kont127466127467_))))
                                                (___kont127466127467_))
                                            (___kont127466127467_))
                                        (___kont127466127467_))))
                                (___kont127466127467_))))
                        (___kont127466127467_))))
                (___kont127466127467_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123909_)
        (let* ((_g123911123924_
                (lambda (_g123912123921_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123912123921_))))
               (_g123910123957_
                (lambda (_g123912123927_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123912123927_))
                      (let ((_e123916123929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123912123927_))))
                        (let ((_hd123915123932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123916123929_)))
                              (_tl123914123934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123916123929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123914123934_))
                              (let ((_e123919123937_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123914123934_))))
                                (let ((_hd123918123940_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123919123937_)))
                                      (_tl123917123942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123919123937_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123917123942_))
                                      ((lambda (_L123945_)
                                         (let ((__tmp128877
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123945_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128877)))
                                       _hd123918123940_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123911123924_ _g123912123927_)))))
                              (let ()
                                (declare (not safe))
                                (_g123911123924_ _g123912123927_)))))
                      (let ()
                        (declare (not safe))
                        (_g123911123924_ _g123912123927_))))))
          (declare (not safe))
          (_g123910123957_ _stx123909_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123143_)
        (let* ((___stx127500127501_ _form123143_)
               (_g123148123305_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127500127501_)))))
          (let ((___kont127502127503_
                 (lambda (_L123829_ _L123830_ _L123831_) '#t))
                (___kont127508127509_
                 (lambda (_L123617_
                          _L123618_
                          _L123619_
                          _L123620_
                          _L123621_
                          _L123622_)
                   '#t))
                (___kont127514127515_
                 (lambda (_L123413_ _L123414_ _L123415_ _L123416_) '#t))
                (___kont127516127517_ (lambda () '#f)))
            (let* ((___match127641127642_
                    (lambda (_e123267123317_
                             _hd123266123320_
                             _tl123265123322_
                             _e123270123325_
                             _hd123269123328_
                             _tl123268123330_
                             _e123273123333_
                             _hd123272123336_
                             _tl123271123338_
                             _e123276123341_
                             _hd123275123344_
                             _tl123274123346_
                             _e123279123349_
                             _hd123278123352_
                             _tl123277123354_
                             _e123282123357_
                             _hd123281123360_
                             _tl123280123362_
                             _e123285123365_
                             _hd123284123368_
                             _tl123283123370_
                             _e123288123373_
                             _hd123287123376_
                             _tl123286123378_
                             _e123291123381_
                             _hd123290123384_
                             _tl123289123386_
                             _e123294123389_
                             _hd123293123392_
                             _tl123292123394_
                             _e123297123397_
                             _hd123296123400_
                             _tl123295123402_
                             _e123300123405_
                             _hd123299123408_
                             _tl123298123410_)
                      (let ((_L123413_ _hd123299123408_)
                            (_L123414_ _hd123290123384_)
                            (_L123415_ _hd123281123360_)
                            (_L123416_ _hd123266123320_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123416_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123415_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123416_ _L123413_))
                                 (let ((__tmp128878
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123414_
                                           _L123416_))))
                                   (declare (not safe))
                                   (not __tmp128878)))
                            (___kont127514127515_
                             _L123413_
                             _L123414_
                             _L123415_
                             _L123416_)
                            (___kont127516127517_)))))
                   (___match127613127614_
                    (lambda (_e123267123317_
                             _hd123266123320_
                             _tl123265123322_
                             _e123270123325_
                             _hd123269123328_
                             _tl123268123330_
                             _e123273123333_
                             _hd123272123336_
                             _tl123271123338_
                             _e123276123341_
                             _hd123275123344_
                             _tl123274123346_
                             _e123279123349_
                             _hd123278123352_
                             _tl123277123354_
                             _e123282123357_
                             _hd123281123360_
                             _tl123280123362_
                             _e123285123365_
                             _hd123284123368_
                             _tl123283123370_
                             _e123288123373_
                             _hd123287123376_
                             _tl123286123378_
                             _e123291123381_
                             _hd123290123384_
                             _tl123289123386_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123283123370_))
                          (let ((_e123294123389_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123283123370_))))
                            (let ((_tl123292123394_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123294123389_)))
                                  (_hd123293123392_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123294123389_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123293123392_))
                                  (let ((_e123297123397_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123293123392_))))
                                    (let ((_tl123295123402_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123297123397_)))
                                          (_hd123296123400_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123297123397_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123296123400_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123296123400_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123295123402_))
                                                  (let ((_e123300123405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123295123402_))))
                                                    (let ((_tl123298123410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123300123405_)))
                                                          (_hd123299123408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123300123405_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123298123410_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123292123394_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123268123330_))
                          (___match127641127642_
                           _e123267123317_
                           _hd123266123320_
                           _tl123265123322_
                           _e123270123325_
                           _hd123269123328_
                           _tl123268123330_
                           _e123273123333_
                           _hd123272123336_
                           _tl123271123338_
                           _e123276123341_
                           _hd123275123344_
                           _tl123274123346_
                           _e123279123349_
                           _hd123278123352_
                           _tl123277123354_
                           _e123282123357_
                           _hd123281123360_
                           _tl123280123362_
                           _e123285123365_
                           _hd123284123368_
                           _tl123283123370_
                           _e123288123373_
                           _hd123287123376_
                           _tl123286123378_
                           _e123291123381_
                           _hd123290123384_
                           _tl123289123386_
                           _e123294123389_
                           _hd123293123392_
                           _tl123292123394_
                           _e123297123397_
                           _hd123296123400_
                           _tl123295123402_
                           _e123300123405_
                           _hd123299123408_
                           _tl123298123410_)
                          (___kont127516127517_))
                      (___kont127516127517_))
                  (___kont127516127517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127516127517_))
                                              (___kont127516127517_))
                                          (___kont127516127517_))))
                                  (___kont127516127517_))))
                          (___kont127516127517_))))
                   (___match127543127544_
                    (lambda (_e123203123457_
                             _hd123202123460_
                             _tl123201123462_
                             ___splice127510127511_
                             _target123204123465_
                             _tl123206123467_)
                      (letrec ((_loop123207123470_
                                (lambda (_hd123205123473_ _arg123211123475_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123205123473_))
                                      (let ((_e123208123478_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123205123473_))))
                                        (let ((_lp-tl123210123483_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123208123478_)))
                                              (_lp-hd123209123481_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123208123478_))))
                                          (let ((__tmp128893
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123209123481_
                                                         _arg123211123475_))))
                                            (declare (not safe))
                                            (_loop123207123470_
                                             _lp-tl123210123483_
                                             __tmp128893))))
                                      (let ((_arg123212123486_
                                             (reverse _arg123211123475_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123201123462_))
                                            (let ((_e123215123489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123201123462_))))
                                              (let ((_tl123213123494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123215123489_)))
                                                    (_hd123214123492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123215123489_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123214123492_))
                                                    (let ((_e123218123497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123214123492_))))
                                                      (let ((_tl123216123502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123218123497_)))
                    (_hd123217123500_
                     (let () (declare (not safe)) (##car _e123218123497_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123217123500_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123217123500_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123216123502_))
                            (let ((_e123221123505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123216123502_))))
                              (let ((_tl123219123510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123221123505_)))
                                    (_hd123220123508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123221123505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123220123508_))
                                    (let ((_e123224123513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123220123508_))))
                                      (let ((_tl123222123518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123224123513_)))
                                            (_hd123223123516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123224123513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123223123516_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123223123516_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123222123518_))
                                                    (let ((_e123227123521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123222123518_))))
                                                      (let ((_tl123225123526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123227123521_)))
                    (_hd123226123524_
                     (let () (declare (not safe)) (##car _e123227123521_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123225123526_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123219123510_))
                        (let ((_e123230123529_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123219123510_))))
                          (let ((_tl123228123534_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123230123529_)))
                                (_hd123229123532_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123230123529_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123229123532_))
                                (let ((_e123233123537_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123229123532_))))
                                  (let ((_tl123231123542_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123233123537_)))
                                        (_hd123232123540_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123233123537_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123232123540_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123232123540_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123231123542_))
                                                (let ((_e123236123545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123231123542_))))
                                                  (let ((_tl123234123550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123236123545_)))
                                                        (_hd123235123548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123236123545_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123234123550_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123228123534_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123228123534_))
                              '1)
                        (let ((___splice127512127513_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123228123534_
                                  '1))))
                          (let ((_tl123239123555_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127512127513_ '1)))
                                (_target123237123553_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127512127513_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123239123555_))
                                (let ((_e123248123558_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123239123555_))))
                                  (let ((_tl123246123563_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123248123558_)))
                                        (_hd123247123561_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123248123558_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123247123561_))
                                        (let ((_e123251123566_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123247123561_))))
                                          (let ((_tl123249123571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123251123566_)))
                                                (_hd123250123569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123251123566_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123250123569_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123250123569_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123249123571_))
                                                        (let ((_e123254123574_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123249123571_))))
                  (let ((_tl123252123579_
                         (let () (declare (not safe)) (##cdr _e123254123574_)))
                        (_hd123253123577_
                         (let ()
                           (declare (not safe))
                           (##car _e123254123574_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123252123579_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123246123563_))
                            (letrec ((_loop123240123582_
                                      (lambda (_hd123238123585_
                                               _xarg123244123587_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123238123585_))
                                            (let ((_e123241123590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123238123585_))))
                                              (let ((_lp-tl123243123595_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123241123590_)))
                                                    (_lp-hd123242123593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123241123590_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123242123593_))
                                                    (let ((_e123257123598_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123242123593_))))
                                                      (let ((_tl123255123603_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123257123598_)))
                    (_hd123256123601_
                     (let () (declare (not safe)) (##car _e123257123598_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123256123601_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123256123601_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123255123603_))
                            (let ((_e123260123606_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123255123603_))))
                              (let ((_tl123258123611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123260123606_)))
                                    (_hd123259123609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123260123606_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123258123611_))
                                    (let ((__tmp128892
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123259123609_
                                                   _xarg123244123587_))))
                                      (declare (not safe))
                                      (_loop123240123582_
                                       _lp-tl123243123595_
                                       __tmp128892))
                                    (___match127613127614_
                                     _e123203123457_
                                     _hd123202123460_
                                     _tl123201123462_
                                     _e123215123489_
                                     _hd123214123492_
                                     _tl123213123494_
                                     _e123218123497_
                                     _hd123217123500_
                                     _tl123216123502_
                                     _e123221123505_
                                     _hd123220123508_
                                     _tl123219123510_
                                     _e123224123513_
                                     _hd123223123516_
                                     _tl123222123518_
                                     _e123227123521_
                                     _hd123226123524_
                                     _tl123225123526_
                                     _e123230123529_
                                     _hd123229123532_
                                     _tl123228123534_
                                     _e123233123537_
                                     _hd123232123540_
                                     _tl123231123542_
                                     _e123236123545_
                                     _hd123235123548_
                                     _tl123234123550_))))
                            (___match127613127614_
                             _e123203123457_
                             _hd123202123460_
                             _tl123201123462_
                             _e123215123489_
                             _hd123214123492_
                             _tl123213123494_
                             _e123218123497_
                             _hd123217123500_
                             _tl123216123502_
                             _e123221123505_
                             _hd123220123508_
                             _tl123219123510_
                             _e123224123513_
                             _hd123223123516_
                             _tl123222123518_
                             _e123227123521_
                             _hd123226123524_
                             _tl123225123526_
                             _e123230123529_
                             _hd123229123532_
                             _tl123228123534_
                             _e123233123537_
                             _hd123232123540_
                             _tl123231123542_
                             _e123236123545_
                             _hd123235123548_
                             _tl123234123550_))
                        (___match127613127614_
                         _e123203123457_
                         _hd123202123460_
                         _tl123201123462_
                         _e123215123489_
                         _hd123214123492_
                         _tl123213123494_
                         _e123218123497_
                         _hd123217123500_
                         _tl123216123502_
                         _e123221123505_
                         _hd123220123508_
                         _tl123219123510_
                         _e123224123513_
                         _hd123223123516_
                         _tl123222123518_
                         _e123227123521_
                         _hd123226123524_
                         _tl123225123526_
                         _e123230123529_
                         _hd123229123532_
                         _tl123228123534_
                         _e123233123537_
                         _hd123232123540_
                         _tl123231123542_
                         _e123236123545_
                         _hd123235123548_
                         _tl123234123550_))
                    (___match127613127614_
                     _e123203123457_
                     _hd123202123460_
                     _tl123201123462_
                     _e123215123489_
                     _hd123214123492_
                     _tl123213123494_
                     _e123218123497_
                     _hd123217123500_
                     _tl123216123502_
                     _e123221123505_
                     _hd123220123508_
                     _tl123219123510_
                     _e123224123513_
                     _hd123223123516_
                     _tl123222123518_
                     _e123227123521_
                     _hd123226123524_
                     _tl123225123526_
                     _e123230123529_
                     _hd123229123532_
                     _tl123228123534_
                     _e123233123537_
                     _hd123232123540_
                     _tl123231123542_
                     _e123236123545_
                     _hd123235123548_
                     _tl123234123550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127613127614_
                                                     _e123203123457_
                                                     _hd123202123460_
                                                     _tl123201123462_
                                                     _e123215123489_
                                                     _hd123214123492_
                                                     _tl123213123494_
                                                     _e123218123497_
                                                     _hd123217123500_
                                                     _tl123216123502_
                                                     _e123221123505_
                                                     _hd123220123508_
                                                     _tl123219123510_
                                                     _e123224123513_
                                                     _hd123223123516_
                                                     _tl123222123518_
                                                     _e123227123521_
                                                     _hd123226123524_
                                                     _tl123225123526_
                                                     _e123230123529_
                                                     _hd123229123532_
                                                     _tl123228123534_
                                                     _e123233123537_
                                                     _hd123232123540_
                                                     _tl123231123542_
                                                     _e123236123545_
                                                     _hd123235123548_
                                                     _tl123234123550_))))
                                            (let ((_xarg123245123614_
                                                   (reverse _xarg123244123587_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123213123494_))
                                                  (let ((_L123617_
                                                         _hd123253123577_)
                                                        (_L123618_
                                                         _xarg123245123614_)
                                                        (_L123619_
                                                         _hd123235123548_)
                                                        (_L123620_
                                                         _hd123226123524_)
                                                        (_L123621_
                                                         _tl123206123467_)
                                                        (_L123622_
                                                         _arg123212123486_))
                                                    (if (and (let ((__tmp128890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128891
                                   (lambda (_g123665123668_ _g123666123670_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123665123668_
                                             _g123666123670_)))))
                              (declare (not safe))
                              (foldr1 __tmp128891 '() _L123622_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128890))
                     (let () (declare (not safe)) (gx#identifier? _L123621_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123620_ 'apply))
                     (fx= (length (let ((__tmp128888
                                         (lambda (_g123672123675_
                                                  _g123673123677_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123672123675_
                                                   _g123673123677_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128888 '() _L123622_)))
                          (length (let ((__tmp128889
                                         (lambda (_g123679123682_
                                                  _g123680123684_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123679123682_
                                                   _g123680123684_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128889 '() _L123618_))))
                     (let ((__tmp128886
                            (let ((__tmp128887
                                   (lambda (_g123686123689_ _g123687123691_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123686123689_
                                             _g123687123691_)))))
                              (declare (not safe))
                              (foldr1 __tmp128887 '() _L123622_)))
                           (__tmp128884
                            (let ((__tmp128885
                                   (lambda (_g123693123696_ _g123694123698_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123693123696_
                                             _g123694123698_)))))
                              (declare (not safe))
                              (foldr1 __tmp128885 '() _L123618_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128886 __tmp128884))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123621_ _L123617_))
                     (let ((__tmp128879
                            (let ((__tmp128883
                                   (lambda (_g123700123702_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123700123702_
                                        _L123619_))))
                                  (__tmp128880
                                   (let ((__tmp128882
                                          (lambda (_g123704123707_
                                                   _g123705123709_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123704123707_
                                                    _g123705123709_))))
                                         (__tmp128881
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123621_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128882
                                             __tmp128881
                                             _L123622_))))
                              (declare (not safe))
                              (find __tmp128883 __tmp128880))))
                       (declare (not safe))
                       (not __tmp128879)))
                (___kont127508127509_
                 _L123617_
                 _L123618_
                 _L123619_
                 _L123620_
                 _L123621_
                 _L123622_)
                (___match127613127614_
                 _e123203123457_
                 _hd123202123460_
                 _tl123201123462_
                 _e123215123489_
                 _hd123214123492_
                 _tl123213123494_
                 _e123218123497_
                 _hd123217123500_
                 _tl123216123502_
                 _e123221123505_
                 _hd123220123508_
                 _tl123219123510_
                 _e123224123513_
                 _hd123223123516_
                 _tl123222123518_
                 _e123227123521_
                 _hd123226123524_
                 _tl123225123526_
                 _e123230123529_
                 _hd123229123532_
                 _tl123228123534_
                 _e123233123537_
                 _hd123232123540_
                 _tl123231123542_
                 _e123236123545_
                 _hd123235123548_
                 _tl123234123550_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127613127614_
                                                   _e123203123457_
                                                   _hd123202123460_
                                                   _tl123201123462_
                                                   _e123215123489_
                                                   _hd123214123492_
                                                   _tl123213123494_
                                                   _e123218123497_
                                                   _hd123217123500_
                                                   _tl123216123502_
                                                   _e123221123505_
                                                   _hd123220123508_
                                                   _tl123219123510_
                                                   _e123224123513_
                                                   _hd123223123516_
                                                   _tl123222123518_
                                                   _e123227123521_
                                                   _hd123226123524_
                                                   _tl123225123526_
                                                   _e123230123529_
                                                   _hd123229123532_
                                                   _tl123228123534_
                                                   _e123233123537_
                                                   _hd123232123540_
                                                   _tl123231123542_
                                                   _e123236123545_
                                                   _hd123235123548_
                                                   _tl123234123550_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123240123582_ _target123237123553_ '())))
                            (___match127613127614_
                             _e123203123457_
                             _hd123202123460_
                             _tl123201123462_
                             _e123215123489_
                             _hd123214123492_
                             _tl123213123494_
                             _e123218123497_
                             _hd123217123500_
                             _tl123216123502_
                             _e123221123505_
                             _hd123220123508_
                             _tl123219123510_
                             _e123224123513_
                             _hd123223123516_
                             _tl123222123518_
                             _e123227123521_
                             _hd123226123524_
                             _tl123225123526_
                             _e123230123529_
                             _hd123229123532_
                             _tl123228123534_
                             _e123233123537_
                             _hd123232123540_
                             _tl123231123542_
                             _e123236123545_
                             _hd123235123548_
                             _tl123234123550_))
                        (___match127613127614_
                         _e123203123457_
                         _hd123202123460_
                         _tl123201123462_
                         _e123215123489_
                         _hd123214123492_
                         _tl123213123494_
                         _e123218123497_
                         _hd123217123500_
                         _tl123216123502_
                         _e123221123505_
                         _hd123220123508_
                         _tl123219123510_
                         _e123224123513_
                         _hd123223123516_
                         _tl123222123518_
                         _e123227123521_
                         _hd123226123524_
                         _tl123225123526_
                         _e123230123529_
                         _hd123229123532_
                         _tl123228123534_
                         _e123233123537_
                         _hd123232123540_
                         _tl123231123542_
                         _e123236123545_
                         _hd123235123548_
                         _tl123234123550_))))
                (___match127613127614_
                 _e123203123457_
                 _hd123202123460_
                 _tl123201123462_
                 _e123215123489_
                 _hd123214123492_
                 _tl123213123494_
                 _e123218123497_
                 _hd123217123500_
                 _tl123216123502_
                 _e123221123505_
                 _hd123220123508_
                 _tl123219123510_
                 _e123224123513_
                 _hd123223123516_
                 _tl123222123518_
                 _e123227123521_
                 _hd123226123524_
                 _tl123225123526_
                 _e123230123529_
                 _hd123229123532_
                 _tl123228123534_
                 _e123233123537_
                 _hd123232123540_
                 _tl123231123542_
                 _e123236123545_
                 _hd123235123548_
                 _tl123234123550_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127613127614_
                                                     _e123203123457_
                                                     _hd123202123460_
                                                     _tl123201123462_
                                                     _e123215123489_
                                                     _hd123214123492_
                                                     _tl123213123494_
                                                     _e123218123497_
                                                     _hd123217123500_
                                                     _tl123216123502_
                                                     _e123221123505_
                                                     _hd123220123508_
                                                     _tl123219123510_
                                                     _e123224123513_
                                                     _hd123223123516_
                                                     _tl123222123518_
                                                     _e123227123521_
                                                     _hd123226123524_
                                                     _tl123225123526_
                                                     _e123230123529_
                                                     _hd123229123532_
                                                     _tl123228123534_
                                                     _e123233123537_
                                                     _hd123232123540_
                                                     _tl123231123542_
                                                     _e123236123545_
                                                     _hd123235123548_
                                                     _tl123234123550_))
                                                (___match127613127614_
                                                 _e123203123457_
                                                 _hd123202123460_
                                                 _tl123201123462_
                                                 _e123215123489_
                                                 _hd123214123492_
                                                 _tl123213123494_
                                                 _e123218123497_
                                                 _hd123217123500_
                                                 _tl123216123502_
                                                 _e123221123505_
                                                 _hd123220123508_
                                                 _tl123219123510_
                                                 _e123224123513_
                                                 _hd123223123516_
                                                 _tl123222123518_
                                                 _e123227123521_
                                                 _hd123226123524_
                                                 _tl123225123526_
                                                 _e123230123529_
                                                 _hd123229123532_
                                                 _tl123228123534_
                                                 _e123233123537_
                                                 _hd123232123540_
                                                 _tl123231123542_
                                                 _e123236123545_
                                                 _hd123235123548_
                                                 _tl123234123550_))))
                                        (___match127613127614_
                                         _e123203123457_
                                         _hd123202123460_
                                         _tl123201123462_
                                         _e123215123489_
                                         _hd123214123492_
                                         _tl123213123494_
                                         _e123218123497_
                                         _hd123217123500_
                                         _tl123216123502_
                                         _e123221123505_
                                         _hd123220123508_
                                         _tl123219123510_
                                         _e123224123513_
                                         _hd123223123516_
                                         _tl123222123518_
                                         _e123227123521_
                                         _hd123226123524_
                                         _tl123225123526_
                                         _e123230123529_
                                         _hd123229123532_
                                         _tl123228123534_
                                         _e123233123537_
                                         _hd123232123540_
                                         _tl123231123542_
                                         _e123236123545_
                                         _hd123235123548_
                                         _tl123234123550_))))
                                (___match127613127614_
                                 _e123203123457_
                                 _hd123202123460_
                                 _tl123201123462_
                                 _e123215123489_
                                 _hd123214123492_
                                 _tl123213123494_
                                 _e123218123497_
                                 _hd123217123500_
                                 _tl123216123502_
                                 _e123221123505_
                                 _hd123220123508_
                                 _tl123219123510_
                                 _e123224123513_
                                 _hd123223123516_
                                 _tl123222123518_
                                 _e123227123521_
                                 _hd123226123524_
                                 _tl123225123526_
                                 _e123230123529_
                                 _hd123229123532_
                                 _tl123228123534_
                                 _e123233123537_
                                 _hd123232123540_
                                 _tl123231123542_
                                 _e123236123545_
                                 _hd123235123548_
                                 _tl123234123550_))))
                        (___match127613127614_
                         _e123203123457_
                         _hd123202123460_
                         _tl123201123462_
                         _e123215123489_
                         _hd123214123492_
                         _tl123213123494_
                         _e123218123497_
                         _hd123217123500_
                         _tl123216123502_
                         _e123221123505_
                         _hd123220123508_
                         _tl123219123510_
                         _e123224123513_
                         _hd123223123516_
                         _tl123222123518_
                         _e123227123521_
                         _hd123226123524_
                         _tl123225123526_
                         _e123230123529_
                         _hd123229123532_
                         _tl123228123534_
                         _e123233123537_
                         _hd123232123540_
                         _tl123231123542_
                         _e123236123545_
                         _hd123235123548_
                         _tl123234123550_))
                    (___match127613127614_
                     _e123203123457_
                     _hd123202123460_
                     _tl123201123462_
                     _e123215123489_
                     _hd123214123492_
                     _tl123213123494_
                     _e123218123497_
                     _hd123217123500_
                     _tl123216123502_
                     _e123221123505_
                     _hd123220123508_
                     _tl123219123510_
                     _e123224123513_
                     _hd123223123516_
                     _tl123222123518_
                     _e123227123521_
                     _hd123226123524_
                     _tl123225123526_
                     _e123230123529_
                     _hd123229123532_
                     _tl123228123534_
                     _e123233123537_
                     _hd123232123540_
                     _tl123231123542_
                     _e123236123545_
                     _hd123235123548_
                     _tl123234123550_))
                (___kont127516127517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127516127517_))
                                            (___kont127516127517_))
                                        (___kont127516127517_))))
                                (___kont127516127517_))))
                        (___kont127516127517_))
                    (___kont127516127517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127516127517_))
                                                (___kont127516127517_))
                                            (___kont127516127517_))))
                                    (___kont127516127517_))))
                            (___kont127516127517_))
                        (___kont127516127517_))
                    (___kont127516127517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127516127517_))))
                                            (___kont127516127517_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123207123470_ _target123204123465_ '())))))
                   (___match127531127532_
                    (lambda (_e123155123717_
                             _hd123154123720_
                             _tl123153123722_
                             ___splice127504127505_
                             _target123156123725_
                             _tl123158123727_)
                      (letrec ((_loop123159123730_
                                (lambda (_hd123157123733_ _arg123163123735_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123157123733_))
                                      (let ((_e123160123738_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123157123733_))))
                                        (let ((_lp-tl123162123743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123160123738_)))
                                              (_lp-hd123161123741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123160123738_))))
                                          (let ((__tmp128907
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123161123741_
                                                         _arg123163123735_))))
                                            (declare (not safe))
                                            (_loop123159123730_
                                             _lp-tl123162123743_
                                             __tmp128907))))
                                      (let ((_arg123164123746_
                                             (reverse _arg123163123735_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123153123722_))
                                            (let ((_e123167123749_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123153123722_))))
                                              (let ((_tl123165123754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123167123749_)))
                                                    (_hd123166123752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123167123749_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123166123752_))
                                                    (let ((_e123170123757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123166123752_))))
                                                      (let ((_tl123168123762_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123170123757_)))
                    (_hd123169123760_
                     (let () (declare (not safe)) (##car _e123170123757_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123169123760_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123169123760_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123168123762_))
                            (let ((_e123173123765_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123168123762_))))
                              (let ((_tl123171123770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123173123765_)))
                                    (_hd123172123768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123173123765_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123172123768_))
                                    (let ((_e123176123773_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123172123768_))))
                                      (let ((_tl123174123778_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123176123773_)))
                                            (_hd123175123776_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123176123773_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123175123776_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123175123776_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123174123778_))
                                                    (let ((_e123179123781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123174123778_))))
                                                      (let ((_tl123177123786_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123179123781_)))
                    (_hd123178123784_
                     (let () (declare (not safe)) (##car _e123179123781_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123177123786_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123171123770_))
                        (let ((___splice127506127507_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123171123770_
                                  '0))))
                          (let ((_tl123182123791_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127506127507_ '1)))
                                (_target123180123789_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127506127507_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123182123791_))
                                (letrec ((_loop123183123794_
                                          (lambda (_hd123181123797_
                                                   _xarg123187123799_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123181123797_))
                                                (let ((_e123184123802_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123181123797_))))
                                                  (let ((_lp-tl123186123807_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123184123802_)))
                                                        (_lp-hd123185123805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123184123802_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123185123805_))
                                                        (let ((_e123191123810_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123185123805_))))
                  (let ((_tl123189123815_
                         (let () (declare (not safe)) (##cdr _e123191123810_)))
                        (_hd123190123813_
                         (let ()
                           (declare (not safe))
                           (##car _e123191123810_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123190123813_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123190123813_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123189123815_))
                                (let ((_e123194123818_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123189123815_))))
                                  (let ((_tl123192123823_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123194123818_)))
                                        (_hd123193123821_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123194123818_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123192123823_))
                                        (let ((__tmp128906
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123193123821_
                                                       _xarg123187123799_))))
                                          (declare (not safe))
                                          (_loop123183123794_
                                           _lp-tl123186123807_
                                           __tmp128906))
                                        (___match127543127544_
                                         _e123155123717_
                                         _hd123154123720_
                                         _tl123153123722_
                                         ___splice127504127505_
                                         _target123156123725_
                                         _tl123158123727_))))
                                (___match127543127544_
                                 _e123155123717_
                                 _hd123154123720_
                                 _tl123153123722_
                                 ___splice127504127505_
                                 _target123156123725_
                                 _tl123158123727_))
                            (___match127543127544_
                             _e123155123717_
                             _hd123154123720_
                             _tl123153123722_
                             ___splice127504127505_
                             _target123156123725_
                             _tl123158123727_))
                        (___match127543127544_
                         _e123155123717_
                         _hd123154123720_
                         _tl123153123722_
                         ___splice127504127505_
                         _target123156123725_
                         _tl123158123727_))))
                (___match127543127544_
                 _e123155123717_
                 _hd123154123720_
                 _tl123153123722_
                 ___splice127504127505_
                 _target123156123725_
                 _tl123158123727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123188123826_
                                                       (reverse _xarg123187123799_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123165123754_))
                                                      (let ((_L123829_
                                                             _xarg123188123826_)
                                                            (_L123830_
                                                             _hd123178123784_)
                                                            (_L123831_
                                                             _arg123164123746_))
                                                        (if (and (let ((__tmp128904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128905
                                       (lambda (_g123859123862_
                                                _g123860123864_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123859123862_
                                                 _g123860123864_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128905 '() _L123831_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128904))
                         (fx= (length (let ((__tmp128902
                                             (lambda (_g123866123869_
                                                      _g123867123871_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123866123869_
                                                       _g123867123871_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128902 '() _L123831_)))
                              (length (let ((__tmp128903
                                             (lambda (_g123873123876_
                                                      _g123874123878_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123873123876_
                                                       _g123874123878_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128903 '() _L123829_))))
                         (let ((__tmp128900
                                (let ((__tmp128901
                                       (lambda (_g123880123883_
                                                _g123881123885_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123880123883_
                                                 _g123881123885_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128901 '() _L123831_)))
                               (__tmp128898
                                (let ((__tmp128899
                                       (lambda (_g123887123890_
                                                _g123888123892_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123887123890_
                                                 _g123888123892_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128899 '() _L123829_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128900
                                    __tmp128898))
                         (let ((__tmp128894
                                (let ((__tmp128897
                                       (lambda (_g123894123896_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123894123896_
                                            _L123830_))))
                                      (__tmp128895
                                       (let ((__tmp128896
                                              (lambda (_g123898123901_
                                                       _g123899123903_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123898123901_
                                                        _g123899123903_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128896 '() _L123831_))))
                                  (declare (not safe))
                                  (find __tmp128897 __tmp128895))))
                           (declare (not safe))
                           (not __tmp128894)))
                    (___kont127502127503_ _L123829_ _L123830_ _L123831_)
                    (___match127543127544_
                     _e123155123717_
                     _hd123154123720_
                     _tl123153123722_
                     ___splice127504127505_
                     _target123156123725_
                     _tl123158123727_)))
              (___match127543127544_
               _e123155123717_
               _hd123154123720_
               _tl123153123722_
               ___splice127504127505_
               _target123156123725_
               _tl123158123727_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123183123794_
                                     _target123180123789_
                                     '())))
                                (___match127543127544_
                                 _e123155123717_
                                 _hd123154123720_
                                 _tl123153123722_
                                 ___splice127504127505_
                                 _target123156123725_
                                 _tl123158123727_))))
                        (___match127543127544_
                         _e123155123717_
                         _hd123154123720_
                         _tl123153123722_
                         ___splice127504127505_
                         _target123156123725_
                         _tl123158123727_))
                    (___match127543127544_
                     _e123155123717_
                     _hd123154123720_
                     _tl123153123722_
                     ___splice127504127505_
                     _target123156123725_
                     _tl123158123727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127543127544_
                                                     _e123155123717_
                                                     _hd123154123720_
                                                     _tl123153123722_
                                                     ___splice127504127505_
                                                     _target123156123725_
                                                     _tl123158123727_))
                                                (___match127543127544_
                                                 _e123155123717_
                                                 _hd123154123720_
                                                 _tl123153123722_
                                                 ___splice127504127505_
                                                 _target123156123725_
                                                 _tl123158123727_))
                                            (___match127543127544_
                                             _e123155123717_
                                             _hd123154123720_
                                             _tl123153123722_
                                             ___splice127504127505_
                                             _target123156123725_
                                             _tl123158123727_))))
                                    (___match127543127544_
                                     _e123155123717_
                                     _hd123154123720_
                                     _tl123153123722_
                                     ___splice127504127505_
                                     _target123156123725_
                                     _tl123158123727_))))
                            (___match127543127544_
                             _e123155123717_
                             _hd123154123720_
                             _tl123153123722_
                             ___splice127504127505_
                             _target123156123725_
                             _tl123158123727_))
                        (___match127543127544_
                         _e123155123717_
                         _hd123154123720_
                         _tl123153123722_
                         ___splice127504127505_
                         _target123156123725_
                         _tl123158123727_))
                    (___match127543127544_
                     _e123155123717_
                     _hd123154123720_
                     _tl123153123722_
                     ___splice127504127505_
                     _target123156123725_
                     _tl123158123727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127543127544_
                                                     _e123155123717_
                                                     _hd123154123720_
                                                     _tl123153123722_
                                                     ___splice127504127505_
                                                     _target123156123725_
                                                     _tl123158123727_))))
                                            (___match127543127544_
                                             _e123155123717_
                                             _hd123154123720_
                                             _tl123153123722_
                                             ___splice127504127505_
                                             _target123156123725_
                                             _tl123158123727_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123159123730_ _target123156123725_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127500127501_))
                  (let ((_e123155123717_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127500127501_))))
                    (let ((_tl123153123722_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123155123717_)))
                          (_hd123154123720_
                           (let ()
                             (declare (not safe))
                             (##car _e123155123717_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123154123720_))
                          (let ((___splice127504127505_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123154123720_
                                    '0))))
                            (let ((_tl123158123727_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127504127505_ '1)))
                                  (_target123156123725_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127504127505_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123158123727_))
                                  (___match127531127532_
                                   _e123155123717_
                                   _hd123154123720_
                                   _tl123153123722_
                                   ___splice127504127505_
                                   _target123156123725_
                                   _tl123158123727_)
                                  (___match127543127544_
                                   _e123155123717_
                                   _hd123154123720_
                                   _tl123153123722_
                                   ___splice127504127505_
                                   _target123156123725_
                                   _tl123158123727_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123153123722_))
                              (let ((_e123270123325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123153123722_))))
                                (let ((_tl123268123330_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123270123325_)))
                                      (_hd123269123328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123270123325_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123269123328_))
                                      (let ((_e123273123333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123269123328_))))
                                        (let ((_tl123271123338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123273123333_)))
                                              (_hd123272123336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123273123333_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123272123336_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123272123336_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123271123338_))
                                                      (let ((_e123276123341_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123271123338_))))
                (let ((_tl123274123346_
                       (let () (declare (not safe)) (##cdr _e123276123341_)))
                      (_hd123275123344_
                       (let () (declare (not safe)) (##car _e123276123341_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123275123344_))
                      (let ((_e123279123349_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123275123344_))))
                        (let ((_tl123277123354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123279123349_)))
                              (_hd123278123352_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123279123349_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123278123352_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123278123352_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123277123354_))
                                      (let ((_e123282123357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123277123354_))))
                                        (let ((_tl123280123362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123282123357_)))
                                              (_hd123281123360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123282123357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123280123362_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123274123346_))
                                                  (let ((_e123285123365_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123274123346_))))
                                                    (let ((_tl123283123370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123285123365_)))
                                                          (_hd123284123368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123285123365_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123284123368_))
                                                          (let ((_e123288123373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123284123368_))))
                    (let ((_tl123286123378_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123288123373_)))
                          (_hd123287123376_
                           (let ()
                             (declare (not safe))
                             (##car _e123288123373_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123287123376_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123287123376_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123286123378_))
                                  (let ((_e123291123381_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123286123378_))))
                                    (let ((_tl123289123386_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123291123381_)))
                                          (_hd123290123384_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123291123381_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123289123386_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123283123370_))
                                              (let ((_e123294123389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123283123370_))))
                                                (let ((_tl123292123394_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123294123389_)))
                                                      (_hd123293123392_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123294123389_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123293123392_))
                                                      (let ((_e123297123397_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123293123392_))))
                (let ((_tl123295123402_
                       (let () (declare (not safe)) (##cdr _e123297123397_)))
                      (_hd123296123400_
                       (let () (declare (not safe)) (##car _e123297123397_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123296123400_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123296123400_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123295123402_))
                              (let ((_e123300123405_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123295123402_))))
                                (let ((_tl123298123410_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123300123405_)))
                                      (_hd123299123408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123300123405_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123298123410_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123292123394_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123268123330_))
                                              (___match127641127642_
                                               _e123155123717_
                                               _hd123154123720_
                                               _tl123153123722_
                                               _e123270123325_
                                               _hd123269123328_
                                               _tl123268123330_
                                               _e123273123333_
                                               _hd123272123336_
                                               _tl123271123338_
                                               _e123276123341_
                                               _hd123275123344_
                                               _tl123274123346_
                                               _e123279123349_
                                               _hd123278123352_
                                               _tl123277123354_
                                               _e123282123357_
                                               _hd123281123360_
                                               _tl123280123362_
                                               _e123285123365_
                                               _hd123284123368_
                                               _tl123283123370_
                                               _e123288123373_
                                               _hd123287123376_
                                               _tl123286123378_
                                               _e123291123381_
                                               _hd123290123384_
                                               _tl123289123386_
                                               _e123294123389_
                                               _hd123293123392_
                                               _tl123292123394_
                                               _e123297123397_
                                               _hd123296123400_
                                               _tl123295123402_
                                               _e123300123405_
                                               _hd123299123408_
                                               _tl123298123410_)
                                              (___kont127516127517_))
                                          (___kont127516127517_))
                                      (___kont127516127517_))))
                              (___kont127516127517_))
                          (___kont127516127517_))
                      (___kont127516127517_))))
              (___kont127516127517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127516127517_))
                                          (___kont127516127517_))))
                                  (___kont127516127517_))
                              (___kont127516127517_))
                          (___kont127516127517_))))
                  (___kont127516127517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127516127517_))
                                              (___kont127516127517_))))
                                      (___kont127516127517_))
                                  (___kont127516127517_))
                              (___kont127516127517_))))
                      (___kont127516127517_))))
              (___kont127516127517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127516127517_))
                                              (___kont127516127517_))))
                                      (___kont127516127517_))))
                              (___kont127516127517_)))))
                  (___kont127516127517_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122611_)
        (let* ((___stx127644127645_ _form122611_)
               (_g122615122739_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127644127645_)))))
          (let ((___kont127646127647_
                 (lambda (_L123109_ _L123110_ _L123111_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123110_))))
                (___kont127652127653_
                 (lambda (_L122957_ _L122958_ _L122959_ _L122960_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122957_))))
                (___kont127656127657_
                 (lambda (_L122824_ _L122825_ _L122826_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122824_)))))
            (let* ((___match127753127754_
                    (lambda (_e122707122744_
                             _hd122706122747_
                             _tl122705122749_
                             _e122710122752_
                             _hd122709122755_
                             _tl122708122757_
                             _e122713122760_
                             _hd122712122763_
                             _tl122711122765_
                             _e122716122768_
                             _hd122715122771_
                             _tl122714122773_
                             _e122719122776_
                             _hd122718122779_
                             _tl122717122781_
                             _e122722122784_
                             _hd122721122787_
                             _tl122720122789_
                             _e122725122792_
                             _hd122724122795_
                             _tl122723122797_
                             _e122728122800_
                             _hd122727122803_
                             _tl122726122805_
                             _e122731122808_
                             _hd122730122811_
                             _tl122729122813_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122723122797_))
                          (let ((_e122734122816_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122723122797_))))
                            (let ((_tl122732122821_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122734122816_)))
                                  (_hd122733122819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122734122816_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122732122821_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122708122757_))
                                      (___kont127656127657_
                                       _hd122730122811_
                                       _hd122721122787_
                                       _hd122706122747_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122615122739_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122615122739_)))))
                          (let () (declare (not safe)) (_g122615122739_)))))
                   (___match127683127684_
                    (lambda (_e122668122861_
                             _hd122667122864_
                             _tl122666122866_
                             ___splice127654127655_
                             _target122669122869_
                             _tl122671122871_)
                      (letrec ((_loop122672122874_
                                (lambda (_hd122670122877_ _arg122676122879_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122670122877_))
                                      (let ((_e122673122882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122670122877_))))
                                        (let ((_lp-tl122675122887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122673122882_)))
                                              (_lp-hd122674122885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122673122882_))))
                                          (let ((__tmp128908
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122674122885_
                                                         _arg122676122879_))))
                                            (declare (not safe))
                                            (_loop122672122874_
                                             _lp-tl122675122887_
                                             __tmp128908))))
                                      (let ((_arg122677122890_
                                             (reverse _arg122676122879_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122666122866_))
                                            (let ((_e122680122893_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122666122866_))))
                                              (let ((_tl122678122898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122680122893_)))
                                                    (_hd122679122896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122680122893_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122679122896_))
                                                    (let ((_e122683122901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122679122896_))))
                                                      (let ((_tl122681122906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122683122901_)))
                    (_hd122682122904_
                     (let () (declare (not safe)) (##car _e122683122901_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122682122904_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122682122904_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122681122906_))
                            (let ((_e122686122909_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122681122906_))))
                              (let ((_tl122684122914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122686122909_)))
                                    (_hd122685122912_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122686122909_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122685122912_))
                                    (let ((_e122689122917_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122685122912_))))
                                      (let ((_tl122687122922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122689122917_)))
                                            (_hd122688122920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122689122917_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122688122920_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122688122920_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122687122922_))
                                                    (let ((_e122692122925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122687122922_))))
                                                      (let ((_tl122690122930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122692122925_)))
                    (_hd122691122928_
                     (let () (declare (not safe)) (##car _e122692122925_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122690122930_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122684122914_))
                        (let ((_e122695122933_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122684122914_))))
                          (let ((_tl122693122938_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122695122933_)))
                                (_hd122694122936_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122695122933_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122694122936_))
                                (let ((_e122698122941_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122694122936_))))
                                  (let ((_tl122696122946_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122698122941_)))
                                        (_hd122697122944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122698122941_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122697122944_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122697122944_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122696122946_))
                                                (let ((_e122701122949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122696122946_))))
                                                  (let ((_tl122699122954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122701122949_)))
                                                        (_hd122700122952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122701122949_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122699122954_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122678122898_))
                                                            (___kont127652127653_
                                                             _hd122700122952_
                                                             _hd122691122928_
                                                             _tl122671122871_
                                                             _arg122677122890_)
                                                            (___match127753127754_
                                                             _e122668122861_
                                                             _hd122667122864_
                                                             _tl122666122866_
                                                             _e122680122893_
                                                             _hd122679122896_
                                                             _tl122678122898_
                                                             _e122683122901_
                                                             _hd122682122904_
                                                             _tl122681122906_
                                                             _e122686122909_
                                                             _hd122685122912_
                                                             _tl122684122914_
                                                             _e122689122917_
                                                             _hd122688122920_
                                                             _tl122687122922_
                                                             _e122692122925_
                                                             _hd122691122928_
                                                             _tl122690122930_
                                                             _e122695122933_
                                                             _hd122694122936_
                                                             _tl122693122938_
                                                             _e122698122941_
                                                             _hd122697122944_
                                                             _tl122696122946_
                                                             _e122701122949_
                                                             _hd122700122952_
                                                             _tl122699122954_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122615122739_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122615122739_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122615122739_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122615122739_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122615122739_)))))
                        (let () (declare (not safe)) (_g122615122739_)))
                    (let () (declare (not safe)) (_g122615122739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122615122739_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122615122739_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122615122739_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122615122739_)))))
                            (let () (declare (not safe)) (_g122615122739_)))
                        (let () (declare (not safe)) (_g122615122739_)))
                    (let () (declare (not safe)) (_g122615122739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122615122739_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122615122739_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122672122874_ _target122669122869_ '())))))
                   (___match127671127672_
                    (lambda (_e122622122997_
                             _hd122621123000_
                             _tl122620123002_
                             ___splice127648127649_
                             _target122623123005_
                             _tl122625123007_)
                      (letrec ((_loop122626123010_
                                (lambda (_hd122624123013_ _arg122630123015_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122624123013_))
                                      (let ((_e122627123018_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122624123013_))))
                                        (let ((_lp-tl122629123023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122627123018_)))
                                              (_lp-hd122628123021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122627123018_))))
                                          (let ((__tmp128910
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122628123021_
                                                         _arg122630123015_))))
                                            (declare (not safe))
                                            (_loop122626123010_
                                             _lp-tl122629123023_
                                             __tmp128910))))
                                      (let ((_arg122631123026_
                                             (reverse _arg122630123015_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122620123002_))
                                            (let ((_e122634123029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122620123002_))))
                                              (let ((_tl122632123034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122634123029_)))
                                                    (_hd122633123032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122634123029_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122633123032_))
                                                    (let ((_e122637123037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122633123032_))))
                                                      (let ((_tl122635123042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122637123037_)))
                    (_hd122636123040_
                     (let () (declare (not safe)) (##car _e122637123037_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122636123040_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122636123040_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122635123042_))
                            (let ((_e122640123045_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122635123042_))))
                              (let ((_tl122638123050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122640123045_)))
                                    (_hd122639123048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122640123045_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122639123048_))
                                    (let ((_e122643123053_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122639123048_))))
                                      (let ((_tl122641123058_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122643123053_)))
                                            (_hd122642123056_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122643123053_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122642123056_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122642123056_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122641123058_))
                                                    (let ((_e122646123061_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122641123058_))))
                                                      (let ((_tl122644123066_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122646123061_)))
                    (_hd122645123064_
                     (let () (declare (not safe)) (##car _e122646123061_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122644123066_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122638123050_))
                        (let ((___splice127650127651_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122638123050_
                                  '0))))
                          (let ((_tl122649123071_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127650127651_ '1)))
                                (_target122647123069_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127650127651_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122649123071_))
                                (letrec ((_loop122650123074_
                                          (lambda (_hd122648123077_
                                                   _xarg122654123079_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122648123077_))
                                                (let ((_e122651123082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122648123077_))))
                                                  (let ((_lp-tl122653123087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122651123082_)))
                                                        (_lp-hd122652123085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122651123082_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122652123085_))
                                                        (let ((_e122658123090_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122652123085_))))
                  (let ((_tl122656123095_
                         (let () (declare (not safe)) (##cdr _e122658123090_)))
                        (_hd122657123093_
                         (let ()
                           (declare (not safe))
                           (##car _e122658123090_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122657123093_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122657123093_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122656123095_))
                                (let ((_e122661123098_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122656123095_))))
                                  (let ((_tl122659123103_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122661123098_)))
                                        (_hd122660123101_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122661123098_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122659123103_))
                                        (let ((__tmp128909
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122660123101_
                                                       _xarg122654123079_))))
                                          (declare (not safe))
                                          (_loop122650123074_
                                           _lp-tl122653123087_
                                           __tmp128909))
                                        (___match127683127684_
                                         _e122622122997_
                                         _hd122621123000_
                                         _tl122620123002_
                                         ___splice127648127649_
                                         _target122623123005_
                                         _tl122625123007_))))
                                (___match127683127684_
                                 _e122622122997_
                                 _hd122621123000_
                                 _tl122620123002_
                                 ___splice127648127649_
                                 _target122623123005_
                                 _tl122625123007_))
                            (___match127683127684_
                             _e122622122997_
                             _hd122621123000_
                             _tl122620123002_
                             ___splice127648127649_
                             _target122623123005_
                             _tl122625123007_))
                        (___match127683127684_
                         _e122622122997_
                         _hd122621123000_
                         _tl122620123002_
                         ___splice127648127649_
                         _target122623123005_
                         _tl122625123007_))))
                (___match127683127684_
                 _e122622122997_
                 _hd122621123000_
                 _tl122620123002_
                 ___splice127648127649_
                 _target122623123005_
                 _tl122625123007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122655123106_
                                                       (reverse _xarg122654123079_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122632123034_))
                                                      (___kont127646127647_
                                                       _xarg122655123106_
                                                       _hd122645123064_
                                                       _arg122631123026_)
                                                      (___match127683127684_
                                                       _e122622122997_
                                                       _hd122621123000_
                                                       _tl122620123002_
                                                       ___splice127648127649_
                                                       _target122623123005_
                                                       _tl122625123007_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122650123074_
                                     _target122647123069_
                                     '())))
                                (___match127683127684_
                                 _e122622122997_
                                 _hd122621123000_
                                 _tl122620123002_
                                 ___splice127648127649_
                                 _target122623123005_
                                 _tl122625123007_))))
                        (___match127683127684_
                         _e122622122997_
                         _hd122621123000_
                         _tl122620123002_
                         ___splice127648127649_
                         _target122623123005_
                         _tl122625123007_))
                    (___match127683127684_
                     _e122622122997_
                     _hd122621123000_
                     _tl122620123002_
                     ___splice127648127649_
                     _target122623123005_
                     _tl122625123007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127683127684_
                                                     _e122622122997_
                                                     _hd122621123000_
                                                     _tl122620123002_
                                                     ___splice127648127649_
                                                     _target122623123005_
                                                     _tl122625123007_))
                                                (___match127683127684_
                                                 _e122622122997_
                                                 _hd122621123000_
                                                 _tl122620123002_
                                                 ___splice127648127649_
                                                 _target122623123005_
                                                 _tl122625123007_))
                                            (___match127683127684_
                                             _e122622122997_
                                             _hd122621123000_
                                             _tl122620123002_
                                             ___splice127648127649_
                                             _target122623123005_
                                             _tl122625123007_))))
                                    (___match127683127684_
                                     _e122622122997_
                                     _hd122621123000_
                                     _tl122620123002_
                                     ___splice127648127649_
                                     _target122623123005_
                                     _tl122625123007_))))
                            (___match127683127684_
                             _e122622122997_
                             _hd122621123000_
                             _tl122620123002_
                             ___splice127648127649_
                             _target122623123005_
                             _tl122625123007_))
                        (___match127683127684_
                         _e122622122997_
                         _hd122621123000_
                         _tl122620123002_
                         ___splice127648127649_
                         _target122623123005_
                         _tl122625123007_))
                    (___match127683127684_
                     _e122622122997_
                     _hd122621123000_
                     _tl122620123002_
                     ___splice127648127649_
                     _target122623123005_
                     _tl122625123007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127683127684_
                                                     _e122622122997_
                                                     _hd122621123000_
                                                     _tl122620123002_
                                                     ___splice127648127649_
                                                     _target122623123005_
                                                     _tl122625123007_))))
                                            (___match127683127684_
                                             _e122622122997_
                                             _hd122621123000_
                                             _tl122620123002_
                                             ___splice127648127649_
                                             _target122623123005_
                                             _tl122625123007_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122626123010_ _target122623123005_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127644127645_))
                  (let ((_e122622122997_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127644127645_))))
                    (let ((_tl122620123002_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122622122997_)))
                          (_hd122621123000_
                           (let ()
                             (declare (not safe))
                             (##car _e122622122997_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122621123000_))
                          (let ((___splice127648127649_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122621123000_
                                    '0))))
                            (let ((_tl122625123007_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127648127649_ '1)))
                                  (_target122623123005_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127648127649_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122625123007_))
                                  (___match127671127672_
                                   _e122622122997_
                                   _hd122621123000_
                                   _tl122620123002_
                                   ___splice127648127649_
                                   _target122623123005_
                                   _tl122625123007_)
                                  (___match127683127684_
                                   _e122622122997_
                                   _hd122621123000_
                                   _tl122620123002_
                                   ___splice127648127649_
                                   _target122623123005_
                                   _tl122625123007_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122620123002_))
                              (let ((_e122710122752_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122620123002_))))
                                (let ((_tl122708122757_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122710122752_)))
                                      (_hd122709122755_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122710122752_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122709122755_))
                                      (let ((_e122713122760_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122709122755_))))
                                        (let ((_tl122711122765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122713122760_)))
                                              (_hd122712122763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122713122760_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122712122763_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122712122763_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122711122765_))
                                                      (let ((_e122716122768_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122711122765_))))
                (let ((_tl122714122773_
                       (let () (declare (not safe)) (##cdr _e122716122768_)))
                      (_hd122715122771_
                       (let () (declare (not safe)) (##car _e122716122768_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122715122771_))
                      (let ((_e122719122776_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122715122771_))))
                        (let ((_tl122717122781_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122719122776_)))
                              (_hd122718122779_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122719122776_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122718122779_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122718122779_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122717122781_))
                                      (let ((_e122722122784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122717122781_))))
                                        (let ((_tl122720122789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122722122784_)))
                                              (_hd122721122787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122722122784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122720122789_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122714122773_))
                                                  (let ((_e122725122792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122714122773_))))
                                                    (let ((_tl122723122797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122725122792_)))
                                                          (_hd122724122795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122725122792_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122724122795_))
                                                          (let ((_e122728122800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122724122795_))))
                    (let ((_tl122726122805_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122728122800_)))
                          (_hd122727122803_
                           (let ()
                             (declare (not safe))
                             (##car _e122728122800_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122727122803_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122727122803_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122726122805_))
                                  (let ((_e122731122808_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122726122805_))))
                                    (let ((_tl122729122813_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122731122808_)))
                                          (_hd122730122811_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122731122808_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122729122813_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122723122797_))
                                              (let ((_e122734122816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122723122797_))))
                                                (let ((_tl122732122821_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122734122816_)))
                                                      (_hd122733122819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122734122816_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122732122821_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122708122757_))
                                                          (___kont127656127657_
                                                           _hd122730122811_
                                                           _hd122721122787_
                                                           _hd122621123000_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122615122739_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122615122739_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122615122739_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122615122739_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122615122739_)))
                              (let () (declare (not safe)) (_g122615122739_)))
                          (let () (declare (not safe)) (_g122615122739_)))))
                  (let () (declare (not safe)) (_g122615122739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122615122739_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122615122739_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122615122739_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122615122739_)))
                              (let ()
                                (declare (not safe))
                                (_g122615122739_)))))
                      (let () (declare (not safe)) (_g122615122739_)))))
              (let () (declare (not safe)) (_g122615122739_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122615122739_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122615122739_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122615122739_)))))
                              (let ()
                                (declare (not safe))
                                (_g122615122739_))))))
                  (let () (declare (not safe)) (_g122615122739_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122415_)
        (let* ((_g122417122431_
                (lambda (_g122418122428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122418122428_))))
               (_g122416122608_
                (lambda (_g122418122434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122418122434_))
                      (let ((_e122423122436_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122418122434_))))
                        (let ((_hd122422122439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122423122436_)))
                              (_tl122421122441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122423122436_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122421122441_))
                              (let ((_e122426122444_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122421122441_))))
                                (let ((_hd122425122447_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122426122444_)))
                                      (_tl122424122449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122426122444_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122424122449_))
                                      ((lambda (_L122452_ _L122453_)
                                         (let* ((___stx127766127767_ _L122453_)
                                                (_g122468122496_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127766127767_)))))
                                           (let ((___kont127768127769_
                                                  (lambda (_L122587_)
                                                    (length (let ((__tmp128911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122597122600_ _g122598122602_)
                             (let ()
                               (declare (not safe))
                               (cons _g122597122600_ _g122598122602_)))))
                      (declare (not safe))
                      (foldr1 __tmp128911 '() _L122587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127772127773_
                                                  (lambda (_L122538_ _L122539_)
                                                    (let ((__tmp128912
                                                           (length (let ((__tmp128913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122550122553_ _g122551122555_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122550122553_
                                            _g122551122555_)))))
                             (declare (not safe))
                             (foldr1 __tmp128913 '() _L122539_)))))
              (declare (not safe))
              (cons __tmp128912 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127776127777_
                                                  (lambda (_L122501_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127791127792_
                                                     (lambda (___splice127774127775_
                                                              _target122482122514_
                                                              _tl122484122516_)
                                                       (letrec ((_loop122485122519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122483122522_ _arg122489122524_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122483122522_))
                               (let ((_e122486122527_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122483122522_))))
                                 (let ((_lp-tl122488122532_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122486122527_)))
                                       (_lp-hd122487122530_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122486122527_))))
                                   (let ((__tmp128914
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122487122530_
                                                  _arg122489122524_))))
                                     (declare (not safe))
                                     (_loop122485122519_
                                      _lp-tl122488122532_
                                      __tmp128914))))
                               (let ((_arg122490122535_
                                      (reverse _arg122489122524_)))
                                 (___kont127772127773_
                                  _tl122484122516_
                                  _arg122490122535_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122485122519_ _target122482122514_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127785127786_
                                                     (lambda (___splice127770127771_
                                                              _target122471122563_
                                                              _tl122473122565_)
                                                       (letrec ((_loop122474122568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122472122571_ _arg122478122573_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122472122571_))
                               (let ((_e122475122576_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122472122571_))))
                                 (let ((_lp-tl122477122581_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122475122576_)))
                                       (_lp-hd122476122579_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122475122576_))))
                                   (let ((__tmp128915
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122476122579_
                                                  _arg122478122573_))))
                                     (declare (not safe))
                                     (_loop122474122568_
                                      _lp-tl122477122581_
                                      __tmp128915))))
                               (let ((_arg122479122584_
                                      (reverse _arg122478122573_)))
                                 (___kont127768127769_ _arg122479122584_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122474122568_ _target122471122563_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127766127767_))
                                                   (let ((___splice127770127771_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127766127767_
                                                             '0))))
                                                     (let ((_tl122473122565_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127770127771_
                                                               '1)))
                                                           (_target122471122563_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127770127771_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122473122565_))
                                                           (___match127785127786_
                                                            ___splice127770127771_
                                                            _target122471122563_
                                                            _tl122473122565_)
                                                           (___match127791127792_
                                                            ___splice127770127771_
                                                            _target122471122563_
                                                            _tl122473122565_))))
                                                   (___kont127776127777_
                                                    ___stx127766127767_))))))
                                       _hd122425122447_
                                       _hd122422122439_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122417122431_ _g122418122434_)))))
                              (let ()
                                (declare (not safe))
                                (_g122417122431_ _g122418122434_)))))
                      (let ()
                        (declare (not safe))
                        (_g122417122431_ _g122418122434_))))))
          (declare (not safe))
          (_g122416122608_ _form122415_))))
    (define gxc#lambda-expr?
      (lambda (_expr122368_)
        (let* ((___stx127794127795_ _expr122368_)
               (_g122371122381_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127794127795_)))))
          (let ((___kont127796127797_ (lambda (_L122401_) '#t))
                (___kont127798127799_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127794127795_))
                (let ((_e122376122393_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127794127795_))))
                  (let ((_tl122374122398_
                         (let () (declare (not safe)) (##cdr _e122376122393_)))
                        (_hd122375122396_
                         (let ()
                           (declare (not safe))
                           (##car _e122376122393_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122375122396_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122375122396_))
                            (___kont127796127797_ _tl122374122398_)
                            (___kont127798127799_))
                        (___kont127798127799_))))
                (___kont127798127799_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122321_)
        (let* ((___stx127812127813_ _expr122321_)
               (_g122324122334_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127812127813_)))))
          (let ((___kont127814127815_ (lambda (_L122354_) '#t))
                (___kont127816127817_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127812127813_))
                (let ((_e122329122346_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127812127813_))))
                  (let ((_tl122327122351_
                         (let () (declare (not safe)) (##cdr _e122329122346_)))
                        (_hd122328122349_
                         (let ()
                           (declare (not safe))
                           (##car _e122329122346_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122328122349_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122328122349_))
                            (___kont127814127815_ _tl122327122351_)
                            (___kont127816127817_))
                        (___kont127816127817_))))
                (___kont127816127817_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122190_)
        (let* ((___stx127830127831_ _expr122190_)
               (_g122193122223_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127830127831_)))))
          (let ((___kont127832127833_
                 (lambda (_L122291_ _L122292_ _L122293_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122293_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122292_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122291_))
                           '#f)
                       '#f)))
                (___kont127834127835_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127830127831_))
                (let ((_e122200122235_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127830127831_))))
                  (let ((_tl122198122240_
                         (let () (declare (not safe)) (##cdr _e122200122235_)))
                        (_hd122199122238_
                         (let ()
                           (declare (not safe))
                           (##car _e122200122235_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122199122238_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122199122238_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122198122240_))
                                (let ((_e122203122243_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122198122240_))))
                                  (let ((_tl122201122248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122203122243_)))
                                        (_hd122202122246_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122203122243_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122202122246_))
                                        (let ((_e122206122251_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122202122246_))))
                                          (let ((_tl122204122256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122206122251_)))
                                                (_hd122205122254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122206122251_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122205122254_))
                                                (let ((_e122209122259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122205122254_))))
                                                  (let ((_tl122207122264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122209122259_)))
                                                        (_hd122208122262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122209122259_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122208122262_))
                                                        (let ((_e122212122267_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122208122262_))))
                  (let ((_tl122210122272_
                         (let () (declare (not safe)) (##cdr _e122212122267_)))
                        (_hd122211122270_
                         (let ()
                           (declare (not safe))
                           (##car _e122212122267_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122210122272_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122207122264_))
                            (let ((_e122215122275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122207122264_))))
                              (let ((_tl122213122280_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122215122275_)))
                                    (_hd122214122278_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122215122275_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122213122280_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122204122256_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122201122248_))
                                            (let ((_e122218122283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122201122248_))))
                                              (let ((_tl122216122288_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122218122283_)))
                                                    (_hd122217122286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122218122283_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122216122288_))
                                                    (___kont127832127833_
                                                     _hd122217122286_
                                                     _hd122214122278_
                                                     _hd122211122270_)
                                                    (___kont127834127835_))))
                                            (___kont127834127835_))
                                        (___kont127834127835_))
                                    (___kont127834127835_))))
                            (___kont127834127835_))
                        (___kont127834127835_))))
                (___kont127834127835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127834127835_))))
                                        (___kont127834127835_))))
                                (___kont127834127835_))
                            (___kont127834127835_))
                        (___kont127834127835_))))
                (___kont127834127835_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121515_)
        (let* ((___stx127892127893_ _expr121515_)
               (_g121518121676_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127892127893_)))))
          (let ((___kont127894127895_
                 (lambda (_L122064_
                          _L122065_
                          _L122066_
                          _L122067_
                          _L122068_
                          _L122069_
                          _L122070_
                          _L122071_
                          _L122072_
                          _L122073_
                          _L122074_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122071_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122067_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122066_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122074_
                                      _L122065_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122073_
                                          _L122070_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122068_
                                              _L122064_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122072_
                                              _L122069_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127896127897_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127892127893_))
                (let ((_e121533121688_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127892127893_))))
                  (let ((_tl121531121693_
                         (let () (declare (not safe)) (##cdr _e121533121688_)))
                        (_hd121532121691_
                         (let ()
                           (declare (not safe))
                           (##car _e121533121688_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121532121691_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121532121691_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121531121693_))
                                (let ((_e121536121696_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121531121693_))))
                                  (let ((_tl121534121701_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121536121696_)))
                                        (_hd121535121699_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121536121696_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121535121699_))
                                        (let ((_e121539121704_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121535121699_))))
                                          (let ((_tl121537121709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121539121704_)))
                                                (_hd121538121707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121539121704_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121538121707_))
                                                (let ((_e121542121712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121538121707_))))
                                                  (let ((_tl121540121717_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121542121712_)))
                                                        (_hd121541121715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121542121712_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121541121715_))
                                                        (let ((_e121545121720_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121541121715_))))
                  (let ((_tl121543121725_
                         (let () (declare (not safe)) (##cdr _e121545121720_)))
                        (_hd121544121723_
                         (let ()
                           (declare (not safe))
                           (##car _e121545121720_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121543121725_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121540121717_))
                            (let ((_e121548121728_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121540121717_))))
                              (let ((_tl121546121733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121548121728_)))
                                    (_hd121547121731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121548121728_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121547121731_))
                                    (let ((_e121551121736_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121547121731_))))
                                      (let ((_tl121549121741_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121551121736_)))
                                            (_hd121550121739_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121551121736_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121550121739_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121550121739_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121549121741_))
                                                    (let ((_e121554121744_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121549121741_))))
                                                      (let ((_tl121552121749_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121554121744_)))
                    (_hd121553121747_
                     (let () (declare (not safe)) (##car _e121554121744_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121553121747_))
                    (let ((_e121557121752_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121553121747_))))
                      (let ((_tl121555121757_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121557121752_)))
                            (_hd121556121755_
                             (let ()
                               (declare (not safe))
                               (##car _e121557121752_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121556121755_))
                            (let ((_e121560121760_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121556121755_))))
                              (let ((_tl121558121765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121560121760_)))
                                    (_hd121559121763_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121560121760_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121559121763_))
                                    (let ((_e121563121768_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121559121763_))))
                                      (let ((_tl121561121773_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121563121768_)))
                                            (_hd121562121771_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121563121768_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121561121773_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121558121765_))
                                                (let ((_e121566121776_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121558121765_))))
                                                  (let ((_tl121564121781_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121566121776_)))
                                                        (_hd121565121779_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121566121776_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121564121781_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121555121757_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121552121749_))
                        (let ((_e121569121784_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121552121749_))))
                          (let ((_tl121567121789_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121569121784_)))
                                (_hd121568121787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121569121784_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121568121787_))
                                (let ((_e121572121792_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121568121787_))))
                                  (let ((_tl121570121797_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121572121792_)))
                                        (_hd121571121795_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121572121792_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121571121795_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121571121795_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121570121797_))
                                                (let ((_e121575121800_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121570121797_))))
                                                  (let ((_tl121573121805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121575121800_)))
                                                        (_hd121574121803_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121575121800_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121574121803_))
                                                        (let ((_e121578121808_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121574121803_))))
                  (let ((_tl121576121813_
                         (let () (declare (not safe)) (##cdr _e121578121808_)))
                        (_hd121577121811_
                         (let ()
                           (declare (not safe))
                           (##car _e121578121808_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121573121805_))
                        (let ((_e121581121816_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121573121805_))))
                          (let ((_tl121579121821_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121581121816_)))
                                (_hd121580121819_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121581121816_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121580121819_))
                                (let ((_e121584121824_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121580121819_))))
                                  (let ((_tl121582121829_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121584121824_)))
                                        (_hd121583121827_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121584121824_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121583121827_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121583121827_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121582121829_))
                                                (let ((_e121587121832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121582121829_))))
                                                  (let ((_tl121585121837_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121587121832_)))
                                                        (_hd121586121835_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121587121832_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121586121835_))
                                                        (let ((_e121590121840_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121586121835_))))
                  (let ((_tl121588121845_
                         (let () (declare (not safe)) (##cdr _e121590121840_)))
                        (_hd121589121843_
                         (let ()
                           (declare (not safe))
                           (##car _e121590121840_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121589121843_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121589121843_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121588121845_))
                                (let ((_e121593121848_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121588121845_))))
                                  (let ((_tl121591121853_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121593121848_)))
                                        (_hd121592121851_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121593121848_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121591121853_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121585121837_))
                                            (let ((_e121596121856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121585121837_))))
                                              (let ((_tl121594121861_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121596121856_)))
                                                    (_hd121595121859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121596121856_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121595121859_))
                                                    (let ((_e121599121864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121595121859_))))
                                                      (let ((_tl121597121869_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121599121864_)))
                    (_hd121598121867_
                     (let () (declare (not safe)) (##car _e121599121864_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121598121867_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121598121867_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121597121869_))
                            (let ((_e121602121872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121597121869_))))
                              (let ((_tl121600121877_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121602121872_)))
                                    (_hd121601121875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121602121872_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121600121877_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121594121861_))
                                        (let ((_e121605121880_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121594121861_))))
                                          (let ((_tl121603121885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121605121880_)))
                                                (_hd121604121883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121605121880_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121604121883_))
                                                (let ((_e121608121888_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121604121883_))))
                                                  (let ((_tl121606121893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121608121888_)))
                                                        (_hd121607121891_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121608121888_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121607121891_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121607121891_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121606121893_))
                        (let ((_e121611121896_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121606121893_))))
                          (let ((_tl121609121901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121611121896_)))
                                (_hd121610121899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121611121896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121609121901_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121579121821_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121567121789_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121546121733_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121537121709_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121534121701_))
                                                    (let ((_e121614121904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121534121701_))))
                                                      (let ((_tl121612121909_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121614121904_)))
                    (_hd121613121907_
                     (let () (declare (not safe)) (##car _e121614121904_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121613121907_))
                    (let ((_e121617121912_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121613121907_))))
                      (let ((_tl121615121917_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121617121912_)))
                            (_hd121616121915_
                             (let ()
                               (declare (not safe))
                               (##car _e121617121912_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121616121915_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121616121915_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121615121917_))
                                    (let ((_e121620121920_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121615121917_))))
                                      (let ((_tl121618121925_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121620121920_)))
                                            (_hd121619121923_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121620121920_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121618121925_))
                                            (let ((_e121623121928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121618121925_))))
                                              (let ((_tl121621121933_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121623121928_)))
                                                    (_hd121622121931_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121623121928_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121622121931_))
                                                    (let ((_e121626121936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121622121931_))))
                                                      (let ((_tl121624121941_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121626121936_)))
                    (_hd121625121939_
                     (let () (declare (not safe)) (##car _e121626121936_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121625121939_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121625121939_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121624121941_))
                            (let ((_e121629121944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121624121941_))))
                              (let ((_tl121627121949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121629121944_)))
                                    (_hd121628121947_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121629121944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121628121947_))
                                    (let ((_e121632121952_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121628121947_))))
                                      (let ((_tl121630121957_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121632121952_)))
                                            (_hd121631121955_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121632121952_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121631121955_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121631121955_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121630121957_))
                                                    (let ((_e121635121960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121630121957_))))
                                                      (let ((_tl121633121965_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121635121960_)))
                    (_hd121634121963_
                     (let () (declare (not safe)) (##car _e121635121960_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121633121965_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121627121949_))
                        (let ((_e121638121968_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121627121949_))))
                          (let ((_tl121636121973_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121638121968_)))
                                (_hd121637121971_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121638121968_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121637121971_))
                                (let ((_e121641121976_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121637121971_))))
                                  (let ((_tl121639121981_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121641121976_)))
                                        (_hd121640121979_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121641121976_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121640121979_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121640121979_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121639121981_))
                                                (let ((_e121644121984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121639121981_))))
                                                  (let ((_tl121642121989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121644121984_)))
                                                        (_hd121643121987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121644121984_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121642121989_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121636121973_))
                                                            (let ((_e121647121992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121636121973_))))
                      (let ((_tl121645121997_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121647121992_)))
                            (_hd121646121995_
                             (let ()
                               (declare (not safe))
                               (##car _e121647121992_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121646121995_))
                            (let ((_e121650122000_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121646121995_))))
                              (let ((_tl121648122005_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121650122000_)))
                                    (_hd121649122003_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121650122000_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121649122003_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121649122003_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121648122005_))
                                            (let ((_e121653122008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121648122005_))))
                                              (let ((_tl121651122013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121653122008_)))
                                                    (_hd121652122011_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121653122008_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121651122013_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121645121997_))
                                                        (let ((_e121656122016_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121645121997_))))
                  (let ((_tl121654122021_
                         (let () (declare (not safe)) (##cdr _e121656122016_)))
                        (_hd121655122019_
                         (let ()
                           (declare (not safe))
                           (##car _e121656122016_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121655122019_))
                        (let ((_e121659122024_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121655122019_))))
                          (let ((_tl121657122029_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121659122024_)))
                                (_hd121658122027_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121659122024_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121658122027_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121658122027_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121657122029_))
                                        (let ((_e121662122032_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121657122029_))))
                                          (let ((_tl121660122037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121662122032_)))
                                                (_hd121661122035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121662122032_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121660122037_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121654122021_))
                                                    (let ((_e121665122040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121654122021_))))
                                                      (let ((_tl121663122045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121665122040_)))
                    (_hd121664122043_
                     (let () (declare (not safe)) (##car _e121665122040_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121664122043_))
                    (let ((_e121668122048_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121664122043_))))
                      (let ((_tl121666122053_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121668122048_)))
                            (_hd121667122051_
                             (let ()
                               (declare (not safe))
                               (##car _e121668122048_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121667122051_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121667122051_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121666122053_))
                                    (let ((_e121671122056_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121666122053_))))
                                      (let ((_tl121669122061_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121671122056_)))
                                            (_hd121670122059_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121671122056_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121669122061_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121663122045_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121621121933_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121612121909_))
                                                        (___kont127894127895_
                                                         _hd121670122059_
                                                         _hd121661122035_
                                                         _hd121643121987_
                                                         _hd121634121963_
                                                         _hd121619121923_
                                                         _hd121610121899_
                                                         _hd121601121875_
                                                         _hd121592121851_
                                                         _hd121577121811_
                                                         _hd121562121771_
                                                         _hd121544121723_)
                                                        (___kont127896127897_))
                                                    (___kont127896127897_))
                                                (___kont127896127897_))
                                            (___kont127896127897_))))
                                    (___kont127896127897_))
                                (___kont127896127897_))
                            (___kont127896127897_))))
                    (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))
                                                (___kont127896127897_))))
                                        (___kont127896127897_))
                                    (___kont127896127897_))
                                (___kont127896127897_))))
                        (___kont127896127897_))))
                (___kont127896127897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))))
                                            (___kont127896127897_))
                                        (___kont127896127897_))
                                    (___kont127896127897_))))
                            (___kont127896127897_))))
                    (___kont127896127897_))
                (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127896127897_))
                                            (___kont127896127897_))
                                        (___kont127896127897_))))
                                (___kont127896127897_))))
                        (___kont127896127897_))
                    (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))
                                                (___kont127896127897_))
                                            (___kont127896127897_))))
                                    (___kont127896127897_))))
                            (___kont127896127897_))
                        (___kont127896127897_))
                    (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))))
                                            (___kont127896127897_))))
                                    (___kont127896127897_))
                                (___kont127896127897_))
                            (___kont127896127897_))))
                    (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))
                                                (___kont127896127897_))
                                            (___kont127896127897_))
                                        (___kont127896127897_))
                                    (___kont127896127897_))
                                (___kont127896127897_))))
                        (___kont127896127897_))
                    (___kont127896127897_))
                (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127896127897_))))
                                        (___kont127896127897_))
                                    (___kont127896127897_))))
                            (___kont127896127897_))
                        (___kont127896127897_))
                    (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))))
                                            (___kont127896127897_))
                                        (___kont127896127897_))))
                                (___kont127896127897_))
                            (___kont127896127897_))
                        (___kont127896127897_))))
                (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127896127897_))
                                            (___kont127896127897_))
                                        (___kont127896127897_))))
                                (___kont127896127897_))))
                        (___kont127896127897_))))
                (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127896127897_))
                                            (___kont127896127897_))
                                        (___kont127896127897_))))
                                (___kont127896127897_))))
                        (___kont127896127897_))
                    (___kont127896127897_))
                (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127896127897_))
                                            (___kont127896127897_))))
                                    (___kont127896127897_))))
                            (___kont127896127897_))))
                    (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127896127897_))
                                                (___kont127896127897_))
                                            (___kont127896127897_))))
                                    (___kont127896127897_))))
                            (___kont127896127897_))
                        (___kont127896127897_))))
                (___kont127896127897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127896127897_))))
                                        (___kont127896127897_))))
                                (___kont127896127897_))
                            (___kont127896127897_))
                        (___kont127896127897_))))
                (___kont127896127897_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121257_ _id121258_ _clauses121259_ _gensym?121260_)
        (let _lp121262_ ((_rest121264_ _clauses121259_)
                         (_ids121265_ '())
                         (_impls121266_ '())
                         (_clauses121267_ '()))
          (let* ((_rest121268121276_ _rest121264_)
                 (_else121270121284_
                  (lambda ()
                    (values (reverse _ids121265_)
                            (reverse _impls121266_)
                            (reverse _clauses121267_))))
                 (_K121272121489_
                  (lambda (_rest121287_ _clause121288_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121288_))
                        (let ((__tmp128971
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121288_ _clauses121267_))))
                          (declare (not safe))
                          (_lp121262_
                           _rest121287_
                           _ids121265_
                           _impls121266_
                           __tmp128971))
                        (let* ((_g121290121301_
                                (lambda (_g121291121298_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121291121298_))))
                               (_g121289121486_
                                (lambda (_g121291121304_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121291121304_))
                                      (let ((_e121296121306_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121291121304_))))
                                        (let ((_hd121295121309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121296121306_)))
                                              (_tl121294121311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121296121306_))))
                                          ((lambda (_L121314_ _L121315_)
                                             (let* ((_id121332_
                                                     (let ((__tmp128918
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121258_)))
                                                           (__tmp128917
                                                            (length _clauses121267_))
                                                           (__tmp128916
                                                            (if _gensym?121260_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128918
                                                        '"__"
                                                        __tmp128917
                                                        __tmp128916)))
                                                    (_id121334_
                                                     (let ((__tmp128919
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121257_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121332_
                                                        __tmp128919)))
                                                    (_impl121336_
                                                     (let ((__tmp128920
                                                            (let ((__tmp128922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128921
                           (let ()
                             (declare (not safe))
                             (cons _L121315_ _L121314_))))
                      (declare (not safe))
                      (cons __tmp128922 __tmp128921))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128920 _stx121257_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121483_
                                                     (let* ((___stx128276128277_
                                                             _L121315_)
                                                            (_g121340121368_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128276128277_)))))
               (let ((___kont128278128279_
                      (lambda (_L121462_)
                        (let ((__tmp128923
                               (let ((__tmp128924
                                      (let ((__tmp128925
                                             (let ((__tmp128926
                                                    (let ((__tmp128932
                                                           (let ((__tmp128933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121334_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128933)))
                  (__tmp128927
                   (let ((__tmp128928
                          (lambda (_g121472121475_ _g121473121477_)
                            (let ((__tmp128929
                                   (let ((__tmp128931
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128930
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121472121475_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128931 __tmp128930))))
                              (declare (not safe))
                              (cons __tmp128929 _g121473121477_)))))
                     (declare (not safe))
                     (foldr1 __tmp128928 '() _L121462_))))
              (declare (not safe))
              (cons __tmp128932 __tmp128927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128926))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128925
                                         _stx121257_))))
                                 (declare (not safe))
                                 (cons __tmp128924 '()))))
                          (declare (not safe))
                          (cons _L121315_ __tmp128923))))
                     (___kont128282128283_
                      (lambda (_L121413_ _L121414_)
                        (let ((__tmp128934
                               (let ((__tmp128935
                                      (let ((__tmp128936
                                             (let ((__tmp128937
                                                    (let ((__tmp128951
                                                           (let ((__tmp128952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128952)))
                  (__tmp128938
                   (let ((__tmp128949
                          (let ((__tmp128950
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121334_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128950)))
                         (__tmp128939
                          (let ((__tmp128945
                                 (let ((__tmp128946
                                        (let ((__tmp128948
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128947
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121413_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128948 __tmp128947))))
                                   (declare (not safe))
                                   (cons __tmp128946 '())))
                                (__tmp128940
                                 (let ((__tmp128941
                                        (lambda (_g121425121428_
                                                 _g121426121430_)
                                          (let ((__tmp128942
                                                 (let ((__tmp128944
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128943
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121425121428_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128944
                                                         __tmp128943))))
                                            (declare (not safe))
                                            (cons __tmp128942
                                                  _g121426121430_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128941 '() _L121414_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128945 __tmp128940))))
                     (declare (not safe))
                     (cons __tmp128949 __tmp128939))))
              (declare (not safe))
              (cons __tmp128951 __tmp128938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128937))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128936
                                         _stx121257_))))
                                 (declare (not safe))
                                 (cons __tmp128935 '()))))
                          (declare (not safe))
                          (cons _L121315_ __tmp128934))))
                     (___kont128286128287_
                      (lambda (_L121373_)
                        (let ((__tmp128953
                               (let ((__tmp128954
                                      (let ((__tmp128955
                                             (let ((__tmp128956
                                                    (let ((__tmp128964
                                                           (let ((__tmp128965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128965)))
                  (__tmp128957
                   (let ((__tmp128962
                          (let ((__tmp128963
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121334_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128963)))
                         (__tmp128958
                          (let ((__tmp128959
                                 (let ((__tmp128961
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128960
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121373_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128961 __tmp128960))))
                            (declare (not safe))
                            (cons __tmp128959 '()))))
                     (declare (not safe))
                     (cons __tmp128962 __tmp128958))))
              (declare (not safe))
              (cons __tmp128964 __tmp128957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128956))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128955
                                         _stx121257_))))
                                 (declare (not safe))
                                 (cons __tmp128954 '()))))
                          (declare (not safe))
                          (cons _L121315_ __tmp128953)))))
                 (let* ((___match128301128302_
                         (lambda (___splice128284128285_
                                  _target121354121389_
                                  _tl121356121391_)
                           (letrec ((_loop121357121394_
                                     (lambda (_hd121355121397_
                                              _arg121361121399_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121355121397_))
                                           (let ((_e121358121402_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121355121397_))))
                                             (let ((_lp-tl121360121407_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121358121402_)))
                                                   (_lp-hd121359121405_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121358121402_))))
                                               (let ((__tmp128966
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121359121405_
                                                              _arg121361121399_))))
                                                 (declare (not safe))
                                                 (_loop121357121394_
                                                  _lp-tl121360121407_
                                                  __tmp128966))))
                                           (let ((_arg121362121410_
                                                  (reverse _arg121361121399_)))
                                             (___kont128282128283_
                                              _tl121356121391_
                                              _arg121362121410_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121357121394_
                                _target121354121389_
                                '())))))
                        (___match128295128296_
                         (lambda (___splice128280128281_
                                  _target121343121438_
                                  _tl121345121440_)
                           (letrec ((_loop121346121443_
                                     (lambda (_hd121344121446_
                                              _arg121350121448_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121344121446_))
                                           (let ((_e121347121451_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121344121446_))))
                                             (let ((_lp-tl121349121456_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121347121451_)))
                                                   (_lp-hd121348121454_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121347121451_))))
                                               (let ((__tmp128967
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121348121454_
                                                              _arg121350121448_))))
                                                 (declare (not safe))
                                                 (_loop121346121443_
                                                  _lp-tl121349121456_
                                                  __tmp128967))))
                                           (let ((_arg121351121459_
                                                  (reverse _arg121350121448_)))
                                             (___kont128278128279_
                                              _arg121351121459_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121346121443_
                                _target121343121438_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128276128277_))
                       (let ((___splice128280128281_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128276128277_
                                 '0))))
                         (let ((_tl121345121440_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128280128281_ '1)))
                               (_target121343121438_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128280128281_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121345121440_))
                               (___match128295128296_
                                ___splice128280128281_
                                _target121343121438_
                                _tl121345121440_)
                               (___match128301128302_
                                ___splice128280128281_
                                _target121343121438_
                                _tl121345121440_))))
                       (___kont128286128287_ ___stx128276128277_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128970
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121334_
                                                              _ids121265_)))
                                                     (__tmp128969
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121336_
                                                              _impls121266_)))
                                                     (__tmp128968
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121483_
                                                              _clauses121267_))))
                                                 (declare (not safe))
                                                 (_lp121262_
                                                  _rest121287_
                                                  __tmp128970
                                                  __tmp128969
                                                  __tmp128968))))
                                           _tl121294121311_
                                           _hd121295121309_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121290121301_ _g121291121304_))))))
                          (declare (not safe))
                          (_g121289121486_ _clause121288_))))))
            (if (let () (declare (not safe)) (##pair? _rest121268121276_))
                (let ((_hd121273121492_
                       (let ()
                         (declare (not safe))
                         (##car _rest121268121276_)))
                      (_tl121274121494_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121268121276_))))
                  (let* ((_clause121497_ _hd121273121492_)
                         (_rest121499_ _tl121274121494_))
                    (declare (not safe))
                    (_K121272121489_ _rest121499_ _clause121497_)))
                (let () (declare (not safe)) (_else121270121284_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121504_ _id121505_ _clauses121506_)
        (let ((_gensym?121508_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121504_
           _id121505_
           _clauses121506_
           _gensym?121508_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128973_
        (let ((_g128972_ (let () (declare (not safe)) (##length _g128973_))))
          (cond ((let () (declare (not safe)) (##fx= _g128972_ 3))
                 (apply (lambda (_stx121504_ _id121505_ _clauses121506_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121504_
                             _id121505_
                             _clauses121506_)))
                        _g128973_))
                ((let () (declare (not safe)) (##fx= _g128972_ 4))
                 (apply (lambda (_stx121510_
                                 _id121511_
                                 _clauses121512_
                                 _gensym?121513_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121510_
                             _id121511_
                             _clauses121512_
                             _gensym?121513_)))
                        _g128973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128973_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120534_)
        (letrec ((_case-lambda-clause-def120536_
                  (lambda (_id121253_ _impl121254_)
                    (let ((__tmp128974
                           (let ((__tmp128975
                                  (let ((__tmp128978
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121253_ '())))
                                        (__tmp128976
                                         (let ((__tmp128977
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl121254_))))
                                           (declare (not safe))
                                           (cons __tmp128977 '()))))
                                    (declare (not safe))
                                    (cons __tmp128978 __tmp128976))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128975))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128974 _stx120534_))))
                 (_opt-lambda-dispatch-name120537_
                  (lambda (_id121249_)
                    (if (uninterned-symbol? _id121249_)
                        (let ((_str121251_ (symbol->string _id121249_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121251_))
                              '"%"
                              _id121249_))
                        _id121249_)))
                 (_kw-lambda-dispatch-name120538_
                  (lambda (_id121244_ _name121245_)
                    (if (uninterned-symbol? _id121244_)
                        (let ((_str121247_ (symbol->string _id121244_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121247_))
                              _name121245_
                              _id121244_))
                        _id121244_))))
          (let* ((___stx128324128325_ _stx120534_)
                 (_g120543120602_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128324128325_)))))
            (let ((___kont128326128327_
                   (lambda (_L121153_ _L121154_)
                     (let* ((___stx128304128305_ _L121153_)
                            (_g121171121185_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128304128305_)))))
                       (let ((___kont128306128307_
                              (lambda (_L121229_) _stx120534_))
                             (___kont128308128309_
                              (lambda (_L121198_)
                                (let ((_g128979_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120534_
                                          _L121154_
                                          _L121198_))))
                                  (begin
                                    (let ((_g128980_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128979_)
                                                 (##vector-length _g128979_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128980_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128980_)))
                                    (let ((_ids121208_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128979_ 0)))
                                          (_impls121209_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128979_ 1)))
                                          (_clauses121210_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128979_ 2))))
                                      (let* ((_g128981_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121208_))
                                             (_defs121213_
                                              (map _case-lambda-clause-def120536_
                                                   _ids121208_
                                                   _impls121209_)))
                                        (let ((__tmp128983
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121154_)))
                                              (__tmp128982
                                               (map gxc#identifier-symbol
                                                    _ids121208_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128983
                                           '" => "
                                           __tmp128982))
                                        (let ((__tmp128984
                                               (let ((__tmp128985
                                                      (let ((__tmp128986
                                                             (let ((__tmp128987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128988
                                   (let ((__tmp128989
                                          (let ((__tmp128994
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121154_ '())))
                                                (__tmp128990
                                                 (let ((__tmp128991
                                                        (let ((__tmp128993
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121210_)))
                      (__tmp128992
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128993 __tmp128992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128991 '()))))
                                            (declare (not safe))
                                            (cons __tmp128994 __tmp128990))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128989))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128988
                               _stx120534_))))
                       (declare (not safe))
                       (cons __tmp128987 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128986 _defs121213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128985))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128984
                                           _stx120534_)))))))))
                         (let ((___match128315128316_
                                (lambda (_e121176121221_
                                         _hd121175121224_
                                         _tl121174121226_)
                                  (let ((_L121229_ _tl121174121226_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121229_))
                                        (___kont128306128307_ _L121229_)
                                        (___kont128308128309_
                                         _tl121174121226_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128304128305_))
                               (let ((_e121176121221_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128304128305_))))
                                 (let ((_tl121174121226_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121176121221_)))
                                       (_hd121175121224_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121176121221_))))
                                   (___match128315128316_
                                    _e121176121221_
                                    _hd121175121224_
                                    _tl121174121226_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121171121185_))))))))
                  (___kont128328128329_
                   (lambda (_L120971_ _L120972_)
                     (let* ((_g120988121018_
                             (lambda (_g120989121015_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120989121015_))))
                            (_g120987121113_
                             (lambda (_g120989121021_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120989121021_))
                                   (let ((_e120995121023_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120989121021_))))
                                     (let ((_hd120994121026_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120995121023_)))
                                           (_tl120993121028_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120995121023_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120993121028_))
                                           (let ((_e120998121031_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120993121028_))))
                                             (let ((_hd120997121034_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120998121031_)))
                                                   (_tl120996121036_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120998121031_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120997121034_))
                                                   (let ((_e121001121039_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120997121034_))))
                                                     (let ((_hd121000121042_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121001121039_)))
                                                           (_tl120999121044_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121001121039_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121000121042_))
                                                           (let ((_e121004121047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121000121042_))))
                     (let ((_hd121003121050_
                            (let ()
                              (declare (not safe))
                              (##car _e121004121047_)))
                           (_tl121002121052_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121004121047_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121003121050_))
                           (let ((_e121007121055_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121003121050_))))
                             (let ((_hd121006121058_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121007121055_)))
                                   (_tl121005121060_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121007121055_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121005121060_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121002121052_))
                                       (let ((_e121010121063_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121002121052_))))
                                         (let ((_hd121009121066_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121010121063_)))
                                               (_tl121008121068_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121010121063_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121008121068_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120999121044_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120996121036_))
                                                       (let ((_e121013121071_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120996121036_))))
                 (let ((_hd121012121074_
                        (let () (declare (not safe)) (##car _e121013121071_)))
                       (_tl121011121076_
                        (let () (declare (not safe)) (##cdr _e121013121071_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121011121076_))
                       ((lambda (_L121079_ _L121080_ _L121081_)
                          (let* ((_lambda-id121105_
                                  (let ((__tmp128997
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120972_)))
                                        (__tmp128995
                                         (let ((__tmp128996
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121081_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120537_
                                            __tmp128996))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128997
                                     '"__"
                                     __tmp128995)))
                                 (_lambda-id121107_
                                  (let ((__tmp128998
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120534_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121105_
                                     __tmp128998)))
                                 (_g128999_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121107_)))
                                 (_new-case-lambda-expr121110_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121079_
                                     _L121081_
                                     _lambda-id121107_))))
                            (let ((__tmp129001
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120972_)))
                                  (__tmp129000
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121107_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129001
                               '" => "
                               __tmp129000))
                            (let ((__tmp129002
                                   (let ((__tmp129003
                                          (let ((__tmp129011
                                                 (let ((__tmp129012
                                                        (let ((__tmp129013
                                                               (let ((__tmp129016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121107_ '())))
                             (__tmp129014
                              (let ((__tmp129015
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L121080_))))
                                (declare (not safe))
                                (cons __tmp129015 '()))))
                         (declare (not safe))
                         (cons __tmp129016 __tmp129014))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129012
                                                    _stx120534_)))
                                                (__tmp129004
                                                 (let ((__tmp129005
                                                        (let ((__tmp129006
                                                               (let ((__tmp129007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129008
                                     (let ((__tmp129010
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120972_ '())))
                                           (__tmp129009
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121110_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129010 __tmp129009))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129008))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129007 _stx120534_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp129006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129005 '()))))
                                            (declare (not safe))
                                            (cons __tmp129011 __tmp129004))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129003))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129002
                               _stx120534_))))
                        _hd121012121074_
                        _hd121009121066_
                        _hd121006121058_)
                       (let ()
                         (declare (not safe))
                         (_g120988121018_ _g120989121021_)))))
               (let () (declare (not safe)) (_g120988121018_ _g120989121021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120988121018_
                                                      _g120989121021_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120988121018_
                                                  _g120989121021_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120988121018_ _g120989121021_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120988121018_ _g120989121021_)))))
                           (let ()
                             (declare (not safe))
                             (_g120988121018_ _g120989121021_)))))
                   (let ()
                     (declare (not safe))
                     (_g120988121018_ _g120989121021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120988121018_
                                                      _g120989121021_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120988121018_
                                              _g120989121021_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120988121018_ _g120989121021_))))))
                       (declare (not safe))
                       (_g120987121113_ _L120971_))))
                  (___kont128330128331_
                   (lambda (_L120685_ _L120686_)
                     (let* ((_g120702120755_
                             (lambda (_g120703120752_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120703120752_))))
                            (_g120701120931_
                             (lambda (_g120703120758_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120703120758_))
                                   (let ((_e120711120760_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120703120758_))))
                                     (let ((_hd120710120763_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120711120760_)))
                                           (_tl120709120765_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120711120760_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120709120765_))
                                           (let ((_e120714120768_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120709120765_))))
                                             (let ((_hd120713120771_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120714120768_)))
                                                   (_tl120712120773_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120714120768_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120713120771_))
                                                   (let ((_e120717120776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120713120771_))))
                                                     (let ((_hd120716120779_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120717120776_)))
                                                           (_tl120715120781_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120717120776_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120716120779_))
                                                           (let ((_e120720120784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120716120779_))))
                     (let ((_hd120719120787_
                            (let ()
                              (declare (not safe))
                              (##car _e120720120784_)))
                           (_tl120718120789_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120720120784_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120719120787_))
                           (let ((_e120723120792_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120719120787_))))
                             (let ((_hd120722120795_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120723120792_)))
                                   (_tl120721120797_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120723120792_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120721120797_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120718120789_))
                                       (let ((_e120726120800_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120718120789_))))
                                         (let ((_hd120725120803_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120726120800_)))
                                               (_tl120724120805_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120726120800_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120725120803_))
                                               (let ((_e120729120808_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120725120803_))))
                                                 (let ((_hd120728120811_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120729120808_)))
                                                       (_tl120727120813_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120729120808_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120727120813_))
                                                       (let ((_e120732120816_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120727120813_))))
                 (let ((_hd120731120819_
                        (let () (declare (not safe)) (##car _e120732120816_)))
                       (_tl120730120821_
                        (let () (declare (not safe)) (##cdr _e120732120816_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120731120819_))
                       (let ((_e120735120824_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120731120819_))))
                         (let ((_hd120734120827_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120735120824_)))
                               (_tl120733120829_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120735120824_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120734120827_))
                               (let ((_e120738120832_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120734120827_))))
                                 (let ((_hd120737120835_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120738120832_)))
                                       (_tl120736120837_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120738120832_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120737120835_))
                                       (let ((_e120741120840_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120737120835_))))
                                         (let ((_hd120740120843_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120741120840_)))
                                               (_tl120739120845_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120741120840_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120739120845_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120736120837_))
                                                   (let ((_e120744120848_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120736120837_))))
                                                     (let ((_hd120743120851_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120744120848_)))
                                                           (_tl120742120853_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120744120848_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120742120853_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120733120829_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120730120821_))
                           (let ((_e120747120856_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120730120821_))))
                             (let ((_hd120746120859_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120747120856_)))
                                   (_tl120745120861_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120747120856_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120745120861_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120724120805_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120715120781_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120712120773_))
                                               (let ((_e120750120864_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120712120773_))))
                                                 (let ((_hd120749120867_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120750120864_)))
                                                       (_tl120748120869_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120750120864_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120748120869_))
                                                       ((lambda (_L120872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120873_
                         _L120874_
                         _L120875_
                         _L120876_)
                  (let* ((_get-kws-id120916_
                          (let ((__tmp129019
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120686_)))
                                (__tmp129017
                                 (let ((__tmp129018
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120876_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120538_
                                    __tmp129018
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129019 '"__" __tmp129017)))
                         (_get-kws-id120918_
                          (let ((__tmp129020
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120534_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120916_
                             __tmp129020)))
                         (_main-id120920_
                          (let ((__tmp129023
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120686_)))
                                (__tmp129021
                                 (let ((__tmp129022
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120875_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120538_
                                    __tmp129022
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129023 '"__" __tmp129021)))
                         (_main-id120922_
                          (let ((__tmp129024
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120534_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120920_
                             __tmp129024)))
                         (_g129025_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120918_)))
                         (_g129026_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120922_)))
                         (_new-kw-dispatch120926_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120872_
                             _L120876_
                             _get-kws-id120918_)))
                         (_new-get-kws120928_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120873_
                             _L120875_
                             _main-id120922_))))
                    (let ((__tmp129029
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120686_)))
                          (__tmp129028
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120918_)))
                          (__tmp129027
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120922_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129029
                       '" => "
                       __tmp129028
                       '" => "
                       __tmp129027))
                    (let ((__tmp129030
                           (let ((__tmp129031
                                  (let ((__tmp129044
                                         (let ((__tmp129045
                                                (let ((__tmp129046
                                                       (let ((__tmp129047
                                                              (let ((__tmp129049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120922_ '())))
                            (__tmp129048
                             (let ()
                               (declare (not safe))
                               (cons _L120874_ '()))))
                        (declare (not safe))
                        (cons __tmp129049 __tmp129048))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129046
                                                   _stx120534_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp129045)))
                                        (__tmp129032
                                         (let ((__tmp129039
                                                (let ((__tmp129040
                                                       (let ((__tmp129041
                                                              (let ((__tmp129043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120918_ '())))
                            (__tmp129042
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120928_ '()))))
                        (declare (not safe))
                        (cons __tmp129043 __tmp129042))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129040
                                                   _stx120534_)))
                                               (__tmp129033
                                                (let ((__tmp129034
                                                       (let ((__tmp129035
                                                              (let ((__tmp129036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129038
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120686_ '())))
                                   (__tmp129037
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120926_ '()))))
                               (declare (not safe))
                               (cons __tmp129038 __tmp129037))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129036))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129035 _stx120534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129034 '()))))
                                           (declare (not safe))
                                           (cons __tmp129039 __tmp129033))))
                                    (declare (not safe))
                                    (cons __tmp129044 __tmp129032))))
                             (declare (not safe))
                             (cons '%#begin __tmp129031))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129030 _stx120534_))))
                _hd120749120867_
                _hd120746120859_
                _hd120743120851_
                _hd120740120843_
                _hd120722120795_)
               (let ()
                 (declare (not safe))
                 (_g120702120755_ _g120703120758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120702120755_
                                                  _g120703120758_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120702120755_
                                              _g120703120758_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120702120755_ _g120703120758_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120702120755_ _g120703120758_)))))
                           (let ()
                             (declare (not safe))
                             (_g120702120755_ _g120703120758_)))
                       (let ()
                         (declare (not safe))
                         (_g120702120755_ _g120703120758_)))
                   (let ()
                     (declare (not safe))
                     (_g120702120755_ _g120703120758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120702120755_
                                                      _g120703120758_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120702120755_
                                                  _g120703120758_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120702120755_ _g120703120758_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120702120755_ _g120703120758_)))))
                       (let ()
                         (declare (not safe))
                         (_g120702120755_ _g120703120758_)))))
               (let ()
                 (declare (not safe))
                 (_g120702120755_ _g120703120758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120702120755_
                                                  _g120703120758_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120702120755_ _g120703120758_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120702120755_ _g120703120758_)))))
                           (let ()
                             (declare (not safe))
                             (_g120702120755_ _g120703120758_)))))
                   (let ()
                     (declare (not safe))
                     (_g120702120755_ _g120703120758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120702120755_
                                                      _g120703120758_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120702120755_
                                              _g120703120758_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120702120755_ _g120703120758_))))))
                       (declare (not safe))
                       (_g120701120931_ _L120685_))))
                  (___kont128332128333_
                   (lambda (_L120631_ _L120632_)
                     (let ((__tmp129050
                            (let ((__tmp129051
                                   (let ((__tmp129052
                                          (let ((__tmp129053
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120631_))))
                                            (declare (not safe))
                                            (cons __tmp129053 '()))))
                                     (declare (not safe))
                                     (cons _L120632_ __tmp129052))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129051))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129050 _stx120534_)))))
              (let* ((___match128417128418_
                      (lambda (_e120577120653_
                               _hd120576120656_
                               _tl120575120658_
                               _e120580120661_
                               _hd120579120664_
                               _tl120578120666_
                               _e120583120669_
                               _hd120582120672_
                               _tl120581120674_
                               _e120586120677_
                               _hd120585120680_
                               _tl120584120682_)
                        (let ((_L120685_ _hd120585120680_)
                              (_L120686_ _hd120582120672_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120686_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120685_)))
                              (___kont128330128331_ _L120685_ _L120686_)
                              (___kont128332128333_
                               _hd120585120680_
                               _hd120579120664_)))))
                     (___match128389128390_
                      (lambda (_e120563120939_
                               _hd120562120942_
                               _tl120561120944_
                               _e120566120947_
                               _hd120565120950_
                               _tl120564120952_
                               _e120569120955_
                               _hd120568120958_
                               _tl120567120960_
                               _e120572120963_
                               _hd120571120966_
                               _tl120570120968_)
                        (let ((_L120971_ _hd120571120966_)
                              (_L120972_ _hd120568120958_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120972_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120971_)))
                              (___kont128328128329_ _L120971_ _L120972_)
                              (___match128417128418_
                               _e120563120939_
                               _hd120562120942_
                               _tl120561120944_
                               _e120566120947_
                               _hd120565120950_
                               _tl120564120952_
                               _e120569120955_
                               _hd120568120958_
                               _tl120567120960_
                               _e120572120963_
                               _hd120571120966_
                               _tl120570120968_)))))
                     (___match128361128362_
                      (lambda (_e120549121121_
                               _hd120548121124_
                               _tl120547121126_
                               _e120552121129_
                               _hd120551121132_
                               _tl120550121134_
                               _e120555121137_
                               _hd120554121140_
                               _tl120553121142_
                               _e120558121145_
                               _hd120557121148_
                               _tl120556121150_)
                        (let ((_L121153_ _hd120557121148_)
                              (_L121154_ _hd120554121140_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121154_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121153_)))
                              (___kont128326128327_ _L121153_ _L121154_)
                              (___match128389128390_
                               _e120549121121_
                               _hd120548121124_
                               _tl120547121126_
                               _e120552121129_
                               _hd120551121132_
                               _tl120550121134_
                               _e120555121137_
                               _hd120554121140_
                               _tl120553121142_
                               _e120558121145_
                               _hd120557121148_
                               _tl120556121150_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128324128325_))
                    (let ((_e120549121121_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128324128325_))))
                      (let ((_tl120547121126_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120549121121_)))
                            (_hd120548121124_
                             (let ()
                               (declare (not safe))
                               (##car _e120549121121_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120547121126_))
                            (let ((_e120552121129_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120547121126_))))
                              (let ((_tl120550121134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120552121129_)))
                                    (_hd120551121132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120552121129_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120551121132_))
                                    (let ((_e120555121137_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120551121132_))))
                                      (let ((_tl120553121142_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120555121137_)))
                                            (_hd120554121140_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120555121137_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120553121142_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120550121134_))
                                                (let ((_e120558121145_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120550121134_))))
                                                  (let ((_tl120556121150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120558121145_)))
                                                        (_hd120557121148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120558121145_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120556121150_))
                                                        (___match128361128362_
                                                         _e120549121121_
                                                         _hd120548121124_
                                                         _tl120547121126_
                                                         _e120552121129_
                                                         _hd120551121132_
                                                         _tl120550121134_
                                                         _e120555121137_
                                                         _hd120554121140_
                                                         _tl120553121142_
                                                         _e120558121145_
                                                         _hd120557121148_
                                                         _tl120556121150_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120543120602_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120543120602_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120550121134_))
                                                (let ((_e120597120623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120550121134_))))
                                                  (let ((_tl120595120628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120597120623_)))
                                                        (_hd120596120626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120597120623_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120595120628_))
                                                        (___kont128332128333_
                                                         _hd120596120626_
                                                         _hd120551121132_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120543120602_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120543120602_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120550121134_))
                                        (let ((_e120597120623_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120550121134_))))
                                          (let ((_tl120595120628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120597120623_)))
                                                (_hd120596120626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120597120623_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120595120628_))
                                                (___kont128332128333_
                                                 _hd120596120626_
                                                 _hd120551121132_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120543120602_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120543120602_))))))
                            (let () (declare (not safe)) (_g120543120602_)))))
                    (let () (declare (not safe)) (_g120543120602_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119466_)
        (letrec* ((_bind-e__126720126721_
                   (lambda (_id120518_ _expr120519_ _compile?120520_)
                     (let ((__tmp129056
                            (let ()
                              (declare (not safe))
                              (cons _id120518_ '())))
                           (__tmp129054
                            (let ((__tmp129055
                                   (if _compile?120520_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120519_))
                                       _expr120519_)))
                              (declare (not safe))
                              (cons __tmp129055 '()))))
                       (declare (not safe))
                       (cons __tmp129056 __tmp129054))))
                  (_bind-e__0__126722126723_
                   (lambda (_id120525_ _expr120526_)
                     (let ((_compile?120528_ '#t))
                       (declare (not safe))
                       (_bind-e__126720126721_
                        _id120525_
                        _expr120526_
                        _compile?120528_))))
                  (_bind-e119468_
                   (lambda _g129058_
                     (let ((_g129057_
                            (let ()
                              (declare (not safe))
                              (##length _g129058_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129057_ 2))
                              (apply (lambda (_id120525_ _expr120526_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126722126723_
                                          _id120525_
                                          _expr120526_)))
                                     _g129058_))
                             ((let () (declare (not safe)) (##fx= _g129057_ 3))
                              (apply (lambda (_id120530_
                                              _expr120531_
                                              _compile?120532_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126720126721_
                                          _id120530_
                                          _expr120531_
                                          _compile?120532_)))
                                     _g129058_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129058_))))))
                  (_compile-bindings119469_
                   (lambda (_bindings120102_)
                     (let _lp120104_ ((_rest120106_ _bindings120102_)
                                      (_lift1120107_ '())
                                      (_lift2120108_ '())
                                      (_bind120109_ '()))
                       (let* ((_rest120110120118_ _rest120106_)
                              (_else120112120126_
                               (lambda ()
                                 (values (reverse _lift1120107_)
                                         (reverse _lift2120108_)
                                         (reverse _bind120109_))))
                              (_K120114120505_
                               (lambda (_rest120129_ _hd120130_)
                                 (let* ((___stx128460128461_ _hd120130_)
                                        (_g120134120170_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128460128461_)))))
                                   (let ((___kont128462128463_
                                          (lambda (_L120412_ _L120413_)
                                            (let* ((___stx128440128441_
                                                    _L120412_)
                                                   (_g120428120442_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128440128441_)))))
                                              (let ((___kont128442128443_
                                                     (lambda (_L120490_)
                                                       (let ((__tmp129059
                                                              (let ((__tmp129060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126720126721_
                                _L120413_
                                _L120412_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129060 _bind120109_))))
                 (declare (not safe))
                 (_lp120104_
                  _rest120129_
                  _lift1120107_
                  _lift2120108_
                  __tmp129059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128444128445_
                                                     (lambda (_L120455_)
                                                       (let ((_g129061_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119466_
                         _L120413_
                         _L120455_
                         '#t))))
                 (begin
                   (let ((_g129062_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129061_)
                                (##vector-length _g129061_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129062_ 3)))
                         (error "Context expects 3 values" _g129062_)))
                   (let ((_ids120465_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129061_ 0)))
                         (_impls120466_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129061_ 1)))
                         (_clauses120467_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129061_ 2))))
                     (let* ((_g129063_
                             (for-each gx#core-bind-runtime! _ids120465_))
                            (_xbind120470_
                             (map _bind-e119468_ _ids120465_ _impls120466_))
                            (_expr*120472_
                             (let ((__tmp129065
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120467_)))
                                   (__tmp129064
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129065
                                __tmp129064)))
                            (_bind*120474_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126720126721_
                                _L120413_
                                _expr*120472_
                                '#f))))
                       (let ((__tmp129067
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120413_)))
                             (__tmp129066
                              (map gxc#identifier-symbol _ids120465_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129067
                          '" => "
                          __tmp129066))
                       (let ((__tmp129069
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120108_ _xbind120470_)))
                             (__tmp129068
                              (let ()
                                (declare (not safe))
                                (cons _bind*120474_ _bind120109_))))
                         (declare (not safe))
                         (_lp120104_
                          _rest120129_
                          _lift1120107_
                          __tmp129069
                          __tmp129068)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128451128452_
                                                       (lambda (_e120433120482_
                                                                _hd120432120485_
                                                                _tl120431120487_)
                                                         (let ((_L120490_
                                                                _tl120431120487_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120490_))
                       (___kont128442128443_ _L120490_)
                       (___kont128444128445_ _tl120431120487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128440128441_))
                                                      (let ((_e120433120482_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128440128441_))))
                (let ((_tl120431120487_
                       (let () (declare (not safe)) (##cdr _e120433120482_)))
                      (_hd120432120485_
                       (let () (declare (not safe)) (##car _e120433120482_))))
                  (___match128451128452_
                   _e120433120482_
                   _hd120432120485_
                   _tl120431120487_)))
              (let () (declare (not safe)) (_g120428120442_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128464128465_
                                          (lambda (_L120240_ _L120241_)
                                            (let* ((_g120255120285_
                                                    (lambda (_g120256120282_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120256120282_))))
                                                   (_g120254120380_
                                                    (lambda (_g120256120288_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120256120288_))
                                                          (let ((_e120262120290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120256120288_))))
                    (let ((_hd120261120293_
                           (let ()
                             (declare (not safe))
                             (##car _e120262120290_)))
                          (_tl120260120295_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120262120290_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120260120295_))
                          (let ((_e120265120298_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120260120295_))))
                            (let ((_hd120264120301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120265120298_)))
                                  (_tl120263120303_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120265120298_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120264120301_))
                                  (let ((_e120268120306_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120264120301_))))
                                    (let ((_hd120267120309_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120268120306_)))
                                          (_tl120266120311_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120268120306_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120267120309_))
                                          (let ((_e120271120314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120267120309_))))
                                            (let ((_hd120270120317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120271120314_)))
                                                  (_tl120269120319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120271120314_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120270120317_))
                                                  (let ((_e120274120322_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120270120317_))))
                                                    (let ((_hd120273120325_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120274120322_)))
                                                          (_tl120272120327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120274120322_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120272120327_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120269120319_))
                      (let ((_e120277120330_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120269120319_))))
                        (let ((_hd120276120333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120277120330_)))
                              (_tl120275120335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120277120330_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120275120335_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120266120311_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120263120303_))
                                      (let ((_e120280120338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120263120303_))))
                                        (let ((_hd120279120341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120280120338_)))
                                              (_tl120278120343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120280120338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120278120343_))
                                              ((lambda (_L120346_
                                                        _L120347_
                                                        _L120348_)
                                                 (let* ((_lambda-id120372_
                                                         (let ((__tmp129071
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120241_)))
                       (__tmp129070 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129071 __tmp129070)))
                (_lambda-id120374_
                 (let ((__tmp129072
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119466_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120372_ __tmp129072)))
                (_g129073_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120374_)))
                (_new-case-lambda-expr120377_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120346_
                    _L120348_
                    _lambda-id120374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129075
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120241_)))
                                                         (__tmp129074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120374_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129075
                                                      '" => "
                                                      __tmp129074))
                                                   (let ((__tmp129078
                                                          (let ((__tmp129079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126720126721_
                            _L120241_
                            _new-case-lambda-expr120377_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129079 _rest120129_)))
                 (__tmp129076
                  (let ((__tmp129077
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126722126723_
                            _lambda-id120374_
                            _L120347_))))
                    (declare (not safe))
                    (cons __tmp129077 _lift1120107_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120104_
                                                      __tmp129078
                                                      __tmp129076
                                                      _lift2120108_
                                                      _bind120109_))))
                                               _hd120279120341_
                                               _hd120276120333_
                                               _hd120273120325_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120255120285_
                                                 _g120256120288_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120255120285_ _g120256120288_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120255120285_ _g120256120288_)))
                              (let ()
                                (declare (not safe))
                                (_g120255120285_ _g120256120288_)))))
                      (let ()
                        (declare (not safe))
                        (_g120255120285_ _g120256120288_)))
                  (let ()
                    (declare (not safe))
                    (_g120255120285_ _g120256120288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120255120285_
                                                     _g120256120288_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120255120285_
                                             _g120256120288_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120255120285_ _g120256120288_)))))
                          (let ()
                            (declare (not safe))
                            (_g120255120285_ _g120256120288_)))))
                  (let ()
                    (declare (not safe))
                    (_g120255120285_ _g120256120288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120254120380_ _L120240_))))
                                         (___kont128466128467_
                                          (lambda (_L120191_ _L120192_)
                                            (let ((__tmp129080
                                                   (let ((__tmp129081
                                                          (let ((__tmp129082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129083
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L120191_))))
                           (declare (not safe))
                           (cons __tmp129083 '()))))
                    (declare (not safe))
                    (cons _L120192_ __tmp129082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129081
                                                           _bind120109_))))
                                              (declare (not safe))
                                              (_lp120104_
                                               _rest120129_
                                               _lift1120107_
                                               _lift2120108_
                                               __tmp129080)))))
                                     (let* ((___match128511128512_
                                             (lambda (_e120151120216_
                                                      _hd120150120219_
                                                      _tl120149120221_
                                                      _e120154120224_
                                                      _hd120153120227_
                                                      _tl120152120229_
                                                      _e120157120232_
                                                      _hd120156120235_
                                                      _tl120155120237_)
                                               (let ((_L120240_
                                                      _hd120156120235_)
                                                     (_L120241_
                                                      _hd120153120227_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120241_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120240_)))
                                                     (___kont128464128465_
                                                      _L120240_
                                                      _L120241_)
                                                     (___kont128466128467_
                                                      _hd120156120235_
                                                      _hd120150120219_)))))
                                            (___match128489128490_
                                             (lambda (_e120140120388_
                                                      _hd120139120391_
                                                      _tl120138120393_
                                                      _e120143120396_
                                                      _hd120142120399_
                                                      _tl120141120401_
                                                      _e120146120404_
                                                      _hd120145120407_
                                                      _tl120144120409_)
                                               (let ((_L120412_
                                                      _hd120145120407_)
                                                     (_L120413_
                                                      _hd120142120399_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120413_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120412_)))
                                                     (___kont128462128463_
                                                      _L120412_
                                                      _L120413_)
                                                     (___match128511128512_
                                                      _e120140120388_
                                                      _hd120139120391_
                                                      _tl120138120393_
                                                      _e120143120396_
                                                      _hd120142120399_
                                                      _tl120141120401_
                                                      _e120146120404_
                                                      _hd120145120407_
                                                      _tl120144120409_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128460128461_))
                                           (let ((_e120140120388_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128460128461_))))
                                             (let ((_tl120138120393_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120140120388_)))
                                                   (_hd120139120391_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120140120388_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120139120391_))
                                                   (let ((_e120143120396_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120139120391_))))
                                                     (let ((_tl120141120401_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120143120396_)))
                                                           (_hd120142120399_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120143120396_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120141120401_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120138120393_))
                       (let ((_e120146120404_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120138120393_))))
                         (let ((_tl120144120409_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120146120404_)))
                               (_hd120145120407_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120146120404_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120144120409_))
                               (___match128489128490_
                                _e120140120388_
                                _hd120139120391_
                                _tl120138120393_
                                _e120143120396_
                                _hd120142120399_
                                _tl120141120401_
                                _e120146120404_
                                _hd120145120407_
                                _tl120144120409_)
                               (let ()
                                 (declare (not safe))
                                 (_g120134120170_)))))
                       (let () (declare (not safe)) (_g120134120170_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120138120393_))
                       (let ((_e120165120183_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120138120393_))))
                         (let ((_tl120163120188_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120165120183_)))
                               (_hd120164120186_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120165120183_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120163120188_))
                               (___kont128466128467_
                                _hd120164120186_
                                _hd120139120391_)
                               (let ()
                                 (declare (not safe))
                                 (_g120134120170_)))))
                       (let () (declare (not safe)) (_g120134120170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120138120393_))
                                                       (let ((_e120165120183_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120138120393_))))
                 (let ((_tl120163120188_
                        (let () (declare (not safe)) (##cdr _e120165120183_)))
                       (_hd120164120186_
                        (let () (declare (not safe)) (##car _e120165120183_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120163120188_))
                       (___kont128466128467_ _hd120164120186_ _hd120139120391_)
                       (let () (declare (not safe)) (_g120134120170_)))))
               (let () (declare (not safe)) (_g120134120170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120134120170_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120110120118_))
                             (let ((_hd120115120508_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120110120118_)))
                                   (_tl120116120510_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120110120118_))))
                               (let* ((_hd120513_ _hd120115120508_)
                                      (_rest120515_ _tl120116120510_))
                                 (declare (not safe))
                                 (_K120114120505_ _rest120515_ _hd120513_)))
                             (let ()
                               (declare (not safe))
                               (_else120112120126_)))))))
                  (_lift-kw-lambda?119470_
                   (lambda (_bind120026_)
                     (let* ((___stx128528128529_ _bind120026_)
                            (_g120029120046_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128528128529_)))))
                       (let ((___kont128530128531_
                              (lambda (_L120082_ _L120083_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120083_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120082_))
                                    '#f)))
                             (___kont128532128533_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128528128529_))
                             (let ((_e120035120058_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128528128529_))))
                               (let ((_tl120033120063_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120035120058_)))
                                     (_hd120034120061_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120035120058_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120034120061_))
                                     (let ((_e120038120066_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120034120061_))))
                                       (let ((_tl120036120071_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120038120066_)))
                                             (_hd120037120069_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120038120066_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120036120071_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120033120063_))
                                                 (let ((_e120041120074_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120033120063_))))
                                                   (let ((_tl120039120079_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120041120074_)))
                                                         (_hd120040120077_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120041120074_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120039120079_))
                                                         (___kont128530128531_
                                                          _hd120040120077_
                                                          _hd120037120069_)
                                                         (___kont128532128533_))))
                                                 (___kont128532128533_))
                                             (___kont128532128533_))))
                                     (___kont128532128533_))))
                             (___kont128532128533_))))))
                  (_lift-kw-lambda-bindings119471_
                   (lambda (_bindings119638_)
                     (let _lp119640_ ((_rest119642_ _bindings119638_)
                                      (_lift1119643_ '())
                                      (_lift2119644_ '())
                                      (_bind119645_ '()))
                       (let* ((_rest119646119654_ _rest119642_)
                              (_else119648119662_
                               (lambda ()
                                 (values (reverse _lift1119643_)
                                         (reverse _lift2119644_)
                                         (reverse _bind119645_))))
                              (_K119650120014_
                               (lambda (_rest119665_ _hd119666_)
                                 (let* ((___stx128558128559_ _hd119666_)
                                        (_g119669119694_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128558128559_)))))
                                   (let ((___kont128560128561_
                                          (lambda (_L119764_ _L119765_)
                                            (let* ((_g119779119832_
                                                    (lambda (_g119780119829_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119780119829_))))
                                                   (_g119778120008_
                                                    (lambda (_g119780119835_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119780119835_))
                                                          (let ((_e119788119837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119780119835_))))
                    (let ((_hd119787119840_
                           (let ()
                             (declare (not safe))
                             (##car _e119788119837_)))
                          (_tl119786119842_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119788119837_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119786119842_))
                          (let ((_e119791119845_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119786119842_))))
                            (let ((_hd119790119848_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119791119845_)))
                                  (_tl119789119850_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119791119845_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119790119848_))
                                  (let ((_e119794119853_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119790119848_))))
                                    (let ((_hd119793119856_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119794119853_)))
                                          (_tl119792119858_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119794119853_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119793119856_))
                                          (let ((_e119797119861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119793119856_))))
                                            (let ((_hd119796119864_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119797119861_)))
                                                  (_tl119795119866_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119797119861_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119796119864_))
                                                  (let ((_e119800119869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119796119864_))))
                                                    (let ((_hd119799119872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119800119869_)))
                                                          (_tl119798119874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119800119869_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119798119874_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119795119866_))
                      (let ((_e119803119877_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119795119866_))))
                        (let ((_hd119802119880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119803119877_)))
                              (_tl119801119882_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119803119877_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119802119880_))
                              (let ((_e119806119885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119802119880_))))
                                (let ((_hd119805119888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119806119885_)))
                                      (_tl119804119890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119806119885_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119804119890_))
                                      (let ((_e119809119893_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119804119890_))))
                                        (let ((_hd119808119896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119809119893_)))
                                              (_tl119807119898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119809119893_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119808119896_))
                                              (let ((_e119812119901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119808119896_))))
                                                (let ((_hd119811119904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119812119901_)))
                                                      (_tl119810119906_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119812119901_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119811119904_))
                                                      (let ((_e119815119909_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119811119904_))))
                (let ((_hd119814119912_
                       (let () (declare (not safe)) (##car _e119815119909_)))
                      (_tl119813119914_
                       (let () (declare (not safe)) (##cdr _e119815119909_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119814119912_))
                      (let ((_e119818119917_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119814119912_))))
                        (let ((_hd119817119920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119818119917_)))
                              (_tl119816119922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119818119917_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119816119922_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119813119914_))
                                  (let ((_e119821119925_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119813119914_))))
                                    (let ((_hd119820119928_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119821119925_)))
                                          (_tl119819119930_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119821119925_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119819119930_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119810119906_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119807119898_))
                                                  (let ((_e119824119933_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119807119898_))))
                                                    (let ((_hd119823119936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119824119933_)))
                                                          (_tl119822119938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119824119933_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119822119938_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119801119882_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119792119858_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119789119850_))
                              (let ((_e119827119941_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119789119850_))))
                                (let ((_hd119826119944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119827119941_)))
                                      (_tl119825119946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119827119941_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119825119946_))
                                      ((lambda (_L119949_
                                                _L119950_
                                                _L119951_
                                                _L119952_
                                                _L119953_)
                                         (let* ((_get-kws-id119993_
                                                 (let ((__tmp129085
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119765_)))
                                                       (__tmp129084
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129085
                                                    __tmp129084)))
                                                (_get-kws-id119995_
                                                 (let ((__tmp129086
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119466_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119993_
                                                    __tmp129086)))
                                                (_main-id119997_
                                                 (let ((__tmp129088
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119765_)))
                                                       (__tmp129087
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129088
                                                    __tmp129087)))
                                                (_main-id119999_
                                                 (let ((__tmp129089
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119466_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119997_
                                                    __tmp129089)))
                                                (_g129090_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119995_)))
                                                (_g129091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119999_)))
                                                (_new-kw-dispatch120003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119949_
                                                    _L119953_
                                                    _get-kws-id119995_)))
                                                (_new-get-kws120005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119950_
                                                    _L119952_
                                                    _main-id119999_))))
                                           (let ((__tmp129094
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119765_)))
                                                 (__tmp129093
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119995_)))
                                                 (__tmp129092
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119999_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129094
                                              '" => "
                                              __tmp129093
                                              '" => "
                                              __tmp129092))
                                           (let ((__tmp129099
                                                  (let ((__tmp129100
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126720126721_
                                                            _main-id119999_
                                                            _L119951_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129100
                                                          _lift1119643_)))
                                                 (__tmp129097
                                                  (let ((__tmp129098
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126720126721_
                                                            _get-kws-id119995_
                                                            _new-get-kws120005_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129098
                                                          _lift2119644_)))
                                                 (__tmp129095
                                                  (let ((__tmp129096
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126720126721_
                                                            _L119765_
                                                            _new-kw-dispatch120003_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129096
                                                          _bind119645_))))
                                             (declare (not safe))
                                             (_lp119640_
                                              _rest119665_
                                              __tmp129099
                                              __tmp129097
                                              __tmp129095))))
                                       _hd119826119944_
                                       _hd119823119936_
                                       _hd119820119928_
                                       _hd119817119920_
                                       _hd119799119872_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119779119832_ _g119780119835_)))))
                              (let ()
                                (declare (not safe))
                                (_g119779119832_ _g119780119835_)))
                          (let ()
                            (declare (not safe))
                            (_g119779119832_ _g119780119835_)))
                      (let ()
                        (declare (not safe))
                        (_g119779119832_ _g119780119835_)))
                  (let ()
                    (declare (not safe))
                    (_g119779119832_ _g119780119835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119779119832_
                                                     _g119780119835_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119779119832_
                                                 _g119780119835_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119779119832_
                                             _g119780119835_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119779119832_ _g119780119835_)))
                              (let ()
                                (declare (not safe))
                                (_g119779119832_ _g119780119835_)))))
                      (let ()
                        (declare (not safe))
                        (_g119779119832_ _g119780119835_)))))
              (let ()
                (declare (not safe))
                (_g119779119832_ _g119780119835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119779119832_
                                                 _g119780119835_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119779119832_ _g119780119835_)))))
                              (let ()
                                (declare (not safe))
                                (_g119779119832_ _g119780119835_)))))
                      (let ()
                        (declare (not safe))
                        (_g119779119832_ _g119780119835_)))
                  (let ()
                    (declare (not safe))
                    (_g119779119832_ _g119780119835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119779119832_
                                                     _g119780119835_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119779119832_
                                             _g119780119835_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119779119832_ _g119780119835_)))))
                          (let ()
                            (declare (not safe))
                            (_g119779119832_ _g119780119835_)))))
                  (let ()
                    (declare (not safe))
                    (_g119779119832_ _g119780119835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119778120008_ _L119764_))))
                                         (___kont128562128563_
                                          (lambda (_L119715_ _L119716_)
                                            (let ((__tmp129101
                                                   (let ((__tmp129102
                                                          (let ((__tmp129103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119715_ '()))))
                    (declare (not safe))
                    (cons _L119716_ __tmp129103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129102
                                                           _bind119645_))))
                                              (declare (not safe))
                                              (_lp119640_
                                               _rest119665_
                                               _lift1119643_
                                               _lift2119644_
                                               __tmp129101)))))
                                     (let ((___match128585128586_
                                            (lambda (_e119675119740_
                                                     _hd119674119743_
                                                     _tl119673119745_
                                                     _e119678119748_
                                                     _hd119677119751_
                                                     _tl119676119753_
                                                     _e119681119756_
                                                     _hd119680119759_
                                                     _tl119679119761_)
                                              (let ((_L119764_
                                                     _hd119680119759_)
                                                    (_L119765_
                                                     _hd119677119751_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119765_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119764_)))
                                                    (___kont128560128561_
                                                     _L119764_
                                                     _L119765_)
                                                    (___kont128562128563_
                                                     _hd119680119759_
                                                     _hd119674119743_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128558128559_))
                                           (let ((_e119675119740_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128558128559_))))
                                             (let ((_tl119673119745_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119675119740_)))
                                                   (_hd119674119743_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119675119740_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119674119743_))
                                                   (let ((_e119678119748_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119674119743_))))
                                                     (let ((_tl119676119753_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119678119748_)))
                                                           (_hd119677119751_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119678119748_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119676119753_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119673119745_))
                       (let ((_e119681119756_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119673119745_))))
                         (let ((_tl119679119761_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119681119756_)))
                               (_hd119680119759_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119681119756_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119679119761_))
                               (___match128585128586_
                                _e119675119740_
                                _hd119674119743_
                                _tl119673119745_
                                _e119678119748_
                                _hd119677119751_
                                _tl119676119753_
                                _e119681119756_
                                _hd119680119759_
                                _tl119679119761_)
                               (let ()
                                 (declare (not safe))
                                 (_g119669119694_)))))
                       (let () (declare (not safe)) (_g119669119694_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119673119745_))
                       (let ((_e119689119707_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119673119745_))))
                         (let ((_tl119687119712_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119689119707_)))
                               (_hd119688119710_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119689119707_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119687119712_))
                               (___kont128562128563_
                                _hd119688119710_
                                _hd119674119743_)
                               (let ()
                                 (declare (not safe))
                                 (_g119669119694_)))))
                       (let () (declare (not safe)) (_g119669119694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119673119745_))
                                                       (let ((_e119689119707_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119673119745_))))
                 (let ((_tl119687119712_
                        (let () (declare (not safe)) (##cdr _e119689119707_)))
                       (_hd119688119710_
                        (let () (declare (not safe)) (##car _e119689119707_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119687119712_))
                       (___kont128562128563_ _hd119688119710_ _hd119674119743_)
                       (let () (declare (not safe)) (_g119669119694_)))))
               (let () (declare (not safe)) (_g119669119694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119669119694_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119646119654_))
                             (let ((_hd119651120017_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119646119654_)))
                                   (_tl119652120019_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119646119654_))))
                               (let* ((_hd120022_ _hd119651120017_)
                                      (_rest120024_ _tl119652120019_))
                                 (declare (not safe))
                                 (_K119650120014_ _rest120024_ _hd120022_)))
                             (let ()
                               (declare (not safe))
                               (_else119648119662_))))))))
          (let* ((___stx128602128603_ _stx119466_)
                 (_g119474119500_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128602128603_)))))
            (let ((___kont128604128605_
                   (lambda (_L119560_ _L119561_)
                     (let ((__tmp129105
                            (lambda ()
                              (if (let ((__tmp129132
                                         (let ((__tmp129133
                                                (lambda (_g119589119592_
                                                         _g119590119594_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119589119592_
                                                          _g119590119594_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129133
                                                   '()
                                                   _L119561_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119470_
                                            __tmp129132))
                                  (let ((_g129119_
                                         (let ((__tmp129121
                                                (let ((__tmp129122
                                                       (lambda (_g119596119599_
                                                                _g119597119601_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119596119599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119597119601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129122
                                                          '()
                                                          _L119561_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119471_
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
                                      (let ((_lift1119604_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 0)))
                                            (_lift2119605_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 1)))
                                            (_hd119606_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 2))))
                                        (let* ((_expr119608_
                                                (let ((__tmp129123
                                                       (let ((__tmp129124
                                                              (let ((__tmp129125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119560_ '()))))
                        (declare (not safe))
                        (cons _hd119606_ __tmp129125))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129123
                                                   _stx119466_)))
                                               (_expr119610_
                                                (let ((__tmp129126
                                                       (let ((__tmp129127
                                                              (let ((__tmp129128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119608_ '()))))
                        (declare (not safe))
                        (cons _lift2119605_ __tmp129128))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129126
                                                   _stx119466_)))
                                               (_expr119612_
                                                (let ((__tmp129129
                                                       (let ((__tmp129130
                                                              (let ((__tmp129131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119610_ '()))))
                        (declare (not safe))
                        (cons _lift1119604_ __tmp129131))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129129
                                                   _stx119466_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119612_))))))
                                  (let ((_g129106_
                                         (let ((__tmp129108
                                                (let ((__tmp129109
                                                       (lambda (_g119614119617_
                                                                _g119615119619_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119614119617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119615119619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129109
                                                          '()
                                                          _L119561_))))
                                           (declare (not safe))
                                           (_compile-bindings119469_
                                            __tmp129108))))
                                    (begin
                                      (let ((_g129107_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129106_)
                                                   (##vector-length _g129106_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129107_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129107_)))
                                      (let ((_lift1119622_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129106_ 0)))
                                            (_lift2119623_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129106_ 1)))
                                            (_hd119624_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129106_ 2))))
                                        (let* ((_body119626_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119560_)))
                                               (_expr119628_
                                                (let ((__tmp129110
                                                       (let ((__tmp129111
                                                              (let ((__tmp129112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119626_ '()))))
                        (declare (not safe))
                        (cons _hd119624_ __tmp129112))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129110
                                                   _stx119466_)))
                                               (_expr119630_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119623_))
                                                    _expr119628_
                                                    (let ((__tmp129113
                                                           (let ((__tmp129114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129115
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119628_ '()))))
                            (declare (not safe))
                            (cons _lift2119623_ __tmp129115))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129114))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129113 _stx119466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119632_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119622_))
                                                    _expr119630_
                                                    (let ((__tmp129116
                                                           (let ((__tmp129117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129118
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119630_ '()))))
                            (declare (not safe))
                            (cons _lift1119622_ __tmp129118))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129117))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129116 _stx119466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119632_)))))))
                           (__tmp129104
                            (let ((__obj128808
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128808)
                              __obj128808)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129105
                        gx#current-expander-context
                        __tmp129104))))
                  (___kont128608128609_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119466_)))))
              (let ((___match128629128630_
                     (lambda (_e119480119512_
                              _hd119479119515_
                              _tl119478119517_
                              _e119483119520_
                              _hd119482119523_
                              _tl119481119525_
                              ___splice128606128607_
                              _target119484119528_
                              _tl119486119530_)
                       (letrec ((_loop119487119533_
                                 (lambda (_hd119485119536_ _bind119491119538_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119485119536_))
                                       (let ((_e119488119541_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119485119536_))))
                                         (let ((_lp-tl119490119546_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119488119541_)))
                                               (_lp-hd119489119544_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119488119541_))))
                                           (let ((__tmp129136
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119489119544_
                                                          _bind119491119538_))))
                                             (declare (not safe))
                                             (_loop119487119533_
                                              _lp-tl119490119546_
                                              __tmp129136))))
                                       (let ((_bind119492119549_
                                              (reverse _bind119491119538_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119481119525_))
                                             (let ((_e119495119552_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119481119525_))))
                                               (let ((_tl119493119557_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119495119552_)))
                                                     (_hd119494119555_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119495119552_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119493119557_))
                                                     (let ((_L119560_
                                                            _hd119494119555_)
                                                           (_L119561_
                                                            _bind119492119549_))
                                                       (if (let ((__tmp129134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129135
                                 (lambda (_g119581119584_ _g119582119586_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119581119584_ _g119582119586_)))))
                            (declare (not safe))
                            (foldr1 __tmp129135 '() _L119561_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129134))
                   (___kont128604128605_ _L119560_ _L119561_)
                   (___kont128608128609_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128608128609_))))
                                             (___kont128608128609_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119487119533_ _target119484119528_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128602128603_))
                    (let ((_e119480119512_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128602128603_))))
                      (let ((_tl119478119517_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119480119512_)))
                            (_hd119479119515_
                             (let ()
                               (declare (not safe))
                               (##car _e119480119512_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119478119517_))
                            (let ((_e119483119520_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119478119517_))))
                              (let ((_tl119481119525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119483119520_)))
                                    (_hd119482119523_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119483119520_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119482119523_))
                                    (let ((___splice128606128607_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119482119523_
                                              '0))))
                                      (let ((_tl119486119530_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128606128607_
                                                '1)))
                                            (_target119484119528_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128606128607_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119486119530_))
                                            (___match128629128630_
                                             _e119480119512_
                                             _hd119479119515_
                                             _tl119478119517_
                                             _e119483119520_
                                             _hd119482119523_
                                             _tl119481119525_
                                             ___splice128606128607_
                                             _target119484119528_
                                             _tl119486119530_)
                                            (___kont128608128609_))))
                                    (___kont128608128609_))))
                            (___kont128608128609_))))
                    (___kont128608128609_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118610_)
        (letrec* ((_bind-e__126725126726_
                   (lambda (_id119450_ _expr119451_ _compile?119452_)
                     (let ((__tmp129139
                            (let ()
                              (declare (not safe))
                              (cons _id119450_ '())))
                           (__tmp129137
                            (let ((__tmp129138
                                   (if _compile?119452_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119451_))
                                       _expr119451_)))
                              (declare (not safe))
                              (cons __tmp129138 '()))))
                       (declare (not safe))
                       (cons __tmp129139 __tmp129137))))
                  (_bind-e__0__126727126728_
                   (lambda (_id119457_ _expr119458_)
                     (let ((_compile?119460_ '#t))
                       (declare (not safe))
                       (_bind-e__126725126726_
                        _id119457_
                        _expr119458_
                        _compile?119460_))))
                  (_bind-e118612_
                   (lambda _g129141_
                     (let ((_g129140_
                            (let ()
                              (declare (not safe))
                              (##length _g129141_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129140_ 2))
                              (apply (lambda (_id119457_ _expr119458_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126727126728_
                                          _id119457_
                                          _expr119458_)))
                                     _g129141_))
                             ((let () (declare (not safe)) (##fx= _g129140_ 3))
                              (apply (lambda (_id119462_
                                              _expr119463_
                                              _compile?119464_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126725126726_
                                          _id119462_
                                          _expr119463_
                                          _compile?119464_)))
                                     _g129141_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129141_))))))
                  (_compile-bindings118613_
                   (lambda (_rest118748_)
                     (let _lp118750_ ((_rest118752_ _rest118748_)
                                      (_bind118753_ '()))
                       (let* ((_rest118754118762_ _rest118752_)
                              (_else118756118770_
                               (lambda () (reverse _bind118753_)))
                              (_K118758119437_
                               (lambda (_rest118773_ _hd118774_)
                                 (let* ((___stx128652128653_ _hd118774_)
                                        (_g118779118826_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128652128653_)))))
                                   (let ((___kont128654128655_
                                          (lambda (_L119344_ _L119345_)
                                            (let* ((___stx128632128633_
                                                    _L119344_)
                                                   (_g119360119374_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128632128633_)))))
                                              (let ((___kont128634128635_
                                                     (lambda (_L119422_)
                                                       (let ((__tmp129142
                                                              (let ((__tmp129143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126725126726_
                                _L119345_
                                _L119344_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129143 _bind118753_))))
                 (declare (not safe))
                 (_lp118750_ _rest118773_ __tmp129142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128636128637_
                                                     (lambda (_L119387_)
                                                       (let ((_g129144_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118610_
                         _L119345_
                         _L119387_
                         '#t))))
                 (begin
                   (let ((_g129145_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129144_)
                                (##vector-length _g129144_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129145_ 3)))
                         (error "Context expects 3 values" _g129145_)))
                   (let ((_ids119397_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129144_ 0)))
                         (_impls119398_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129144_ 1)))
                         (_clauses119399_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129144_ 2))))
                     (let* ((_g129146_
                             (for-each gx#core-bind-runtime! _ids119397_))
                            (_xbind119402_
                             (map _bind-e118612_ _ids119397_ _impls119398_))
                            (_expr*119404_
                             (let ((__tmp129148
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119399_)))
                                   (__tmp129147
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129148
                                __tmp129147)))
                            (_bind*119406_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126725126726_
                                _L119345_
                                _expr*119404_
                                '#f))))
                       (let ((__tmp129150
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119345_)))
                             (__tmp129149
                              (map gxc#identifier-symbol _ids119397_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129150
                          '" => "
                          __tmp129149))
                       (let ((__tmp129151
                              (let ((__tmp129152
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118753_
                                               _xbind119402_))))
                                (declare (not safe))
                                (cons _bind*119406_ __tmp129152))))
                         (declare (not safe))
                         (_lp118750_ _rest118773_ __tmp129151)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128643128644_
                                                       (lambda (_e119365119414_
                                                                _hd119364119417_
                                                                _tl119363119419_)
                                                         (let ((_L119422_
                                                                _tl119363119419_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119422_))
                       (___kont128634128635_ _L119422_)
                       (___kont128636128637_ _tl119363119419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128632128633_))
                                                      (let ((_e119365119414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128632128633_))))
                (let ((_tl119363119419_
                       (let () (declare (not safe)) (##cdr _e119365119414_)))
                      (_hd119364119417_
                       (let () (declare (not safe)) (##car _e119365119414_))))
                  (___match128643128644_
                   _e119365119414_
                   _hd119364119417_
                   _tl119363119419_)))
              (let () (declare (not safe)) (_g119360119374_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128656128657_
                                          (lambda (_L119172_ _L119173_)
                                            (let* ((_g119187119217_
                                                    (lambda (_g119188119214_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119188119214_))))
                                                   (_g119186119312_
                                                    (lambda (_g119188119220_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119188119220_))
                                                          (let ((_e119194119222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119188119220_))))
                    (let ((_hd119193119225_
                           (let ()
                             (declare (not safe))
                             (##car _e119194119222_)))
                          (_tl119192119227_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119194119222_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119192119227_))
                          (let ((_e119197119230_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119192119227_))))
                            (let ((_hd119196119233_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119197119230_)))
                                  (_tl119195119235_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119197119230_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119196119233_))
                                  (let ((_e119200119238_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119196119233_))))
                                    (let ((_hd119199119241_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119200119238_)))
                                          (_tl119198119243_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119200119238_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119199119241_))
                                          (let ((_e119203119246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119199119241_))))
                                            (let ((_hd119202119249_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119203119246_)))
                                                  (_tl119201119251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119203119246_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119202119249_))
                                                  (let ((_e119206119254_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119202119249_))))
                                                    (let ((_hd119205119257_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119206119254_)))
                                                          (_tl119204119259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119206119254_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119204119259_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119201119251_))
                      (let ((_e119209119262_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119201119251_))))
                        (let ((_hd119208119265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119209119262_)))
                              (_tl119207119267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119209119262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119207119267_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119198119243_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119195119235_))
                                      (let ((_e119212119270_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119195119235_))))
                                        (let ((_hd119211119273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119212119270_)))
                                              (_tl119210119275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119212119270_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119210119275_))
                                              ((lambda (_L119278_
                                                        _L119279_
                                                        _L119280_)
                                                 (let* ((_lambda-id119304_
                                                         (let ((__tmp129154
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119173_)))
                       (__tmp129153 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129154 __tmp129153)))
                (_lambda-id119306_
                 (let ((__tmp129155
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118610_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119304_ __tmp129155)))
                (_g129156_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119306_)))
                (_new-case-lambda-expr119309_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119278_
                    _L119280_
                    _lambda-id119306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129158
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119173_)))
                                                         (__tmp129157
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119306_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129158
                                                      '" => "
                                                      __tmp129157))
                                                   (let ((__tmp129161
                                                          (let ((__tmp129162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126725126726_
                            _L119173_
                            _new-case-lambda-expr119309_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129162 _rest118773_)))
                 (__tmp129159
                  (let ((__tmp129160
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126727126728_
                            _lambda-id119306_
                            _L119279_))))
                    (declare (not safe))
                    (cons __tmp129160 _bind118753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118750_
                                                      __tmp129161
                                                      __tmp129159))))
                                               _hd119211119273_
                                               _hd119208119265_
                                               _hd119205119257_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119187119217_
                                                 _g119188119220_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119187119217_ _g119188119220_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119187119217_ _g119188119220_)))
                              (let ()
                                (declare (not safe))
                                (_g119187119217_ _g119188119220_)))))
                      (let ()
                        (declare (not safe))
                        (_g119187119217_ _g119188119220_)))
                  (let ()
                    (declare (not safe))
                    (_g119187119217_ _g119188119220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119187119217_
                                                     _g119188119220_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119187119217_
                                             _g119188119220_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119187119217_ _g119188119220_)))))
                          (let ()
                            (declare (not safe))
                            (_g119187119217_ _g119188119220_)))))
                  (let ()
                    (declare (not safe))
                    (_g119187119217_ _g119188119220_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119186119312_ _L119172_))))
                                         (___kont128658128659_
                                          (lambda (_L118896_ _L118897_)
                                            (let* ((_g118911118964_
                                                    (lambda (_g118912118961_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118912118961_))))
                                                   (_g118910119140_
                                                    (lambda (_g118912118967_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118912118967_))
                                                          (let ((_e118920118969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118912118967_))))
                    (let ((_hd118919118972_
                           (let ()
                             (declare (not safe))
                             (##car _e118920118969_)))
                          (_tl118918118974_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118920118969_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118918118974_))
                          (let ((_e118923118977_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118918118974_))))
                            (let ((_hd118922118980_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118923118977_)))
                                  (_tl118921118982_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118923118977_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118922118980_))
                                  (let ((_e118926118985_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118922118980_))))
                                    (let ((_hd118925118988_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118926118985_)))
                                          (_tl118924118990_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118926118985_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118925118988_))
                                          (let ((_e118929118993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118925118988_))))
                                            (let ((_hd118928118996_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118929118993_)))
                                                  (_tl118927118998_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118929118993_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118928118996_))
                                                  (let ((_e118932119001_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118928118996_))))
                                                    (let ((_hd118931119004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118932119001_)))
                                                          (_tl118930119006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118932119001_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118930119006_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118927118998_))
                      (let ((_e118935119009_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118927118998_))))
                        (let ((_hd118934119012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118935119009_)))
                              (_tl118933119014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118935119009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118934119012_))
                              (let ((_e118938119017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118934119012_))))
                                (let ((_hd118937119020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118938119017_)))
                                      (_tl118936119022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118938119017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118936119022_))
                                      (let ((_e118941119025_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118936119022_))))
                                        (let ((_hd118940119028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118941119025_)))
                                              (_tl118939119030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118941119025_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118940119028_))
                                              (let ((_e118944119033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118940119028_))))
                                                (let ((_hd118943119036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118944119033_)))
                                                      (_tl118942119038_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118944119033_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118943119036_))
                                                      (let ((_e118947119041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118943119036_))))
                (let ((_hd118946119044_
                       (let () (declare (not safe)) (##car _e118947119041_)))
                      (_tl118945119046_
                       (let () (declare (not safe)) (##cdr _e118947119041_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118946119044_))
                      (let ((_e118950119049_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118946119044_))))
                        (let ((_hd118949119052_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118950119049_)))
                              (_tl118948119054_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118950119049_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118948119054_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118945119046_))
                                  (let ((_e118953119057_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118945119046_))))
                                    (let ((_hd118952119060_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118953119057_)))
                                          (_tl118951119062_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118953119057_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118951119062_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118942119038_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118939119030_))
                                                  (let ((_e118956119065_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118939119030_))))
                                                    (let ((_hd118955119068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118956119065_)))
                                                          (_tl118954119070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118956119065_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118954119070_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118933119014_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118924118990_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118921118982_))
                              (let ((_e118959119073_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118921118982_))))
                                (let ((_hd118958119076_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118959119073_)))
                                      (_tl118957119078_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118959119073_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118957119078_))
                                      ((lambda (_L119081_
                                                _L119082_
                                                _L119083_
                                                _L119084_
                                                _L119085_)
                                         (let* ((_get-kws-id119125_
                                                 (let ((__tmp129164
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118897_)))
                                                       (__tmp129163
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129164
                                                    __tmp129163)))
                                                (_get-kws-id119127_
                                                 (let ((__tmp129165
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118610_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119125_
                                                    __tmp129165)))
                                                (_main-id119129_
                                                 (let ((__tmp129167
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118897_)))
                                                       (__tmp129166
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129167
                                                    __tmp129166)))
                                                (_main-id119131_
                                                 (let ((__tmp129168
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118610_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119129_
                                                    __tmp129168)))
                                                (_g129169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119127_)))
                                                (_g129170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119131_)))
                                                (_new-kw-dispatch119135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119081_
                                                    _L119085_
                                                    _get-kws-id119127_)))
                                                (_new-get-kws119137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119082_
                                                    _L119084_
                                                    _main-id119131_))))
                                           (let ((__tmp129173
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118897_)))
                                                 (__tmp129172
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119127_)))
                                                 (__tmp129171
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119131_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129173
                                              '" => "
                                              __tmp129172
                                              '" => "
                                              __tmp129171))
                                           (let ((__tmp129174
                                                  (let ((__tmp129179
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126725126726_
                                                            _main-id119131_
                                                            _L119083_
                                                            '#f)))
                                                        (__tmp129175
                                                         (let ((__tmp129178
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126725126726_
                           _get-kws-id119127_
                           _new-get-kws119137_
                           '#f)))
                       (__tmp129176
                        (let ((__tmp129177
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126725126726_
                                  _L118897_
                                  _new-kw-dispatch119135_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129177 _rest118773_))))
                   (declare (not safe))
                   (cons __tmp129178 __tmp129176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129179
                                                          __tmp129175))))
                                             (declare (not safe))
                                             (_lp118750_
                                              __tmp129174
                                              _bind118753_))))
                                       _hd118958119076_
                                       _hd118955119068_
                                       _hd118952119060_
                                       _hd118949119052_
                                       _hd118931119004_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118911118964_ _g118912118967_)))))
                              (let ()
                                (declare (not safe))
                                (_g118911118964_ _g118912118967_)))
                          (let ()
                            (declare (not safe))
                            (_g118911118964_ _g118912118967_)))
                      (let ()
                        (declare (not safe))
                        (_g118911118964_ _g118912118967_)))
                  (let ()
                    (declare (not safe))
                    (_g118911118964_ _g118912118967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118911118964_
                                                     _g118912118967_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118911118964_
                                                 _g118912118967_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118911118964_
                                             _g118912118967_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118911118964_ _g118912118967_)))
                              (let ()
                                (declare (not safe))
                                (_g118911118964_ _g118912118967_)))))
                      (let ()
                        (declare (not safe))
                        (_g118911118964_ _g118912118967_)))))
              (let ()
                (declare (not safe))
                (_g118911118964_ _g118912118967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118911118964_
                                                 _g118912118967_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118911118964_ _g118912118967_)))))
                              (let ()
                                (declare (not safe))
                                (_g118911118964_ _g118912118967_)))))
                      (let ()
                        (declare (not safe))
                        (_g118911118964_ _g118912118967_)))
                  (let ()
                    (declare (not safe))
                    (_g118911118964_ _g118912118967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118911118964_
                                                     _g118912118967_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118911118964_
                                             _g118912118967_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118911118964_ _g118912118967_)))))
                          (let ()
                            (declare (not safe))
                            (_g118911118964_ _g118912118967_)))))
                  (let ()
                    (declare (not safe))
                    (_g118911118964_ _g118912118967_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118910119140_ _L118896_))))
                                         (___kont128660128661_
                                          (lambda (_L118847_ _L118848_)
                                            (let ((__tmp129180
                                                   (let ((__tmp129181
                                                          (let ((__tmp129182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129183
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118847_))))
                           (declare (not safe))
                           (cons __tmp129183 '()))))
                    (declare (not safe))
                    (cons _L118848_ __tmp129182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129181
                                                           _bind118753_))))
                                              (declare (not safe))
                                              (_lp118750_
                                               _rest118773_
                                               __tmp129180)))))
                                     (let* ((___match128727128728_
                                             (lambda (_e118807118872_
                                                      _hd118806118875_
                                                      _tl118805118877_
                                                      _e118810118880_
                                                      _hd118809118883_
                                                      _tl118808118885_
                                                      _e118813118888_
                                                      _hd118812118891_
                                                      _tl118811118893_)
                                               (let ((_L118896_
                                                      _hd118812118891_)
                                                     (_L118897_
                                                      _hd118809118883_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118897_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118896_)))
                                                     (___kont128658128659_
                                                      _L118896_
                                                      _L118897_)
                                                     (___kont128660128661_
                                                      _hd118812118891_
                                                      _hd118806118875_)))))
                                            (___match128705128706_
                                             (lambda (_e118796119148_
                                                      _hd118795119151_
                                                      _tl118794119153_
                                                      _e118799119156_
                                                      _hd118798119159_
                                                      _tl118797119161_
                                                      _e118802119164_
                                                      _hd118801119167_
                                                      _tl118800119169_)
                                               (let ((_L119172_
                                                      _hd118801119167_)
                                                     (_L119173_
                                                      _hd118798119159_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119173_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119172_)))
                                                     (___kont128656128657_
                                                      _L119172_
                                                      _L119173_)
                                                     (___match128727128728_
                                                      _e118796119148_
                                                      _hd118795119151_
                                                      _tl118794119153_
                                                      _e118799119156_
                                                      _hd118798119159_
                                                      _tl118797119161_
                                                      _e118802119164_
                                                      _hd118801119167_
                                                      _tl118800119169_)))))
                                            (___match128683128684_
                                             (lambda (_e118785119320_
                                                      _hd118784119323_
                                                      _tl118783119325_
                                                      _e118788119328_
                                                      _hd118787119331_
                                                      _tl118786119333_
                                                      _e118791119336_
                                                      _hd118790119339_
                                                      _tl118789119341_)
                                               (let ((_L119344_
                                                      _hd118790119339_)
                                                     (_L119345_
                                                      _hd118787119331_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119345_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119344_)))
                                                     (___kont128654128655_
                                                      _L119344_
                                                      _L119345_)
                                                     (___match128705128706_
                                                      _e118785119320_
                                                      _hd118784119323_
                                                      _tl118783119325_
                                                      _e118788119328_
                                                      _hd118787119331_
                                                      _tl118786119333_
                                                      _e118791119336_
                                                      _hd118790119339_
                                                      _tl118789119341_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128652128653_))
                                           (let ((_e118785119320_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128652128653_))))
                                             (let ((_tl118783119325_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118785119320_)))
                                                   (_hd118784119323_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118785119320_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118784119323_))
                                                   (let ((_e118788119328_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118784119323_))))
                                                     (let ((_tl118786119333_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118788119328_)))
                                                           (_hd118787119331_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118788119328_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118786119333_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118783119325_))
                       (let ((_e118791119336_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118783119325_))))
                         (let ((_tl118789119341_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118791119336_)))
                               (_hd118790119339_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118791119336_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118789119341_))
                               (___match128683128684_
                                _e118785119320_
                                _hd118784119323_
                                _tl118783119325_
                                _e118788119328_
                                _hd118787119331_
                                _tl118786119333_
                                _e118791119336_
                                _hd118790119339_
                                _tl118789119341_)
                               (let ()
                                 (declare (not safe))
                                 (_g118779118826_)))))
                       (let () (declare (not safe)) (_g118779118826_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118783119325_))
                       (let ((_e118821118839_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118783119325_))))
                         (let ((_tl118819118844_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118821118839_)))
                               (_hd118820118842_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118821118839_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118819118844_))
                               (___kont128660128661_
                                _hd118820118842_
                                _hd118784119323_)
                               (let ()
                                 (declare (not safe))
                                 (_g118779118826_)))))
                       (let () (declare (not safe)) (_g118779118826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118783119325_))
                                                       (let ((_e118821118839_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118783119325_))))
                 (let ((_tl118819118844_
                        (let () (declare (not safe)) (##cdr _e118821118839_)))
                       (_hd118820118842_
                        (let () (declare (not safe)) (##car _e118821118839_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118819118844_))
                       (___kont128660128661_ _hd118820118842_ _hd118784119323_)
                       (let () (declare (not safe)) (_g118779118826_)))))
               (let () (declare (not safe)) (_g118779118826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118779118826_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118754118762_))
                             (let ((_hd118759119440_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118754118762_)))
                                   (_tl118760119442_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118754118762_))))
                               (let* ((_hd119445_ _hd118759119440_)
                                      (_rest119447_ _tl118760119442_))
                                 (declare (not safe))
                                 (_K118758119437_ _rest119447_ _hd119445_)))
                             (let ()
                               (declare (not safe))
                               (_else118756118770_))))))))
          (let* ((___stx128744128745_ _stx118610_)
                 (_g118616118643_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128744128745_)))))
            (let ((___kont128746128747_
                   (lambda (_L118703_ _L118704_ _L118705_)
                     (let ((__tmp129185
                            (lambda ()
                              (let ((_hd118742_
                                     (let ((__tmp129186
                                            (let ((__tmp129187
                                                   (lambda (_g118734118737_
                                                            _g118735118739_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118734118737_
                                                             _g118735118739_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129187
                                                      '()
                                                      _L118704_))))
                                       (declare (not safe))
                                       (_compile-bindings118613_ __tmp129186)))
                                    (_body118743_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118703_))))
                                (let ((__tmp129188
                                       (let ((__tmp129189
                                              (let ((__tmp129190
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118743_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118742_
                                                      __tmp129190))))
                                         (declare (not safe))
                                         (cons _L118705_ __tmp129189))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129188
                                   _stx118610_)))))
                           (__tmp129184
                            (let ((__obj128809
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128809)
                              __obj128809)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129185
                        gx#current-expander-context
                        __tmp129184))))
                  (___kont128750128751_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118610_)))))
              (let ((___match128771128772_
                     (lambda (_e118623118655_
                              _hd118622118658_
                              _tl118621118660_
                              _e118626118663_
                              _hd118625118666_
                              _tl118624118668_
                              ___splice128748128749_
                              _target118627118671_
                              _tl118629118673_)
                       (letrec ((_loop118630118676_
                                 (lambda (_hd118628118679_ _bind118634118681_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118628118679_))
                                       (let ((_e118631118684_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118628118679_))))
                                         (let ((_lp-tl118633118689_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118631118684_)))
                                               (_lp-hd118632118687_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118631118684_))))
                                           (let ((__tmp129193
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118632118687_
                                                          _bind118634118681_))))
                                             (declare (not safe))
                                             (_loop118630118676_
                                              _lp-tl118633118689_
                                              __tmp129193))))
                                       (let ((_bind118635118692_
                                              (reverse _bind118634118681_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118624118668_))
                                             (let ((_e118638118695_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118624118668_))))
                                               (let ((_tl118636118700_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118638118695_)))
                                                     (_hd118637118698_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118638118695_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118636118700_))
                                                     (let ((_L118703_
                                                            _hd118637118698_)
                                                           (_L118704_
                                                            _bind118635118692_)
                                                           (_L118705_
                                                            _hd118622118658_))
                                                       (if (let ((__tmp129191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129192
                                 (lambda (_g118726118729_ _g118727118731_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118726118729_ _g118727118731_)))))
                            (declare (not safe))
                            (foldr1 __tmp129192 '() _L118704_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129191))
                   (___kont128746128747_ _L118703_ _L118704_ _L118705_)
                   (___kont128750128751_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128750128751_))))
                                             (___kont128750128751_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118630118676_ _target118627118671_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128744128745_))
                    (let ((_e118623118655_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128744128745_))))
                      (let ((_tl118621118660_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118623118655_)))
                            (_hd118622118658_
                             (let ()
                               (declare (not safe))
                               (##car _e118623118655_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118621118660_))
                            (let ((_e118626118663_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118621118660_))))
                              (let ((_tl118624118668_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118626118663_)))
                                    (_hd118625118666_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118626118663_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118625118666_))
                                    (let ((___splice128748128749_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118625118666_
                                              '0))))
                                      (let ((_tl118629118673_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128748128749_
                                                '1)))
                                            (_target118627118671_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128748128749_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118629118673_))
                                            (___match128771128772_
                                             _e118623118655_
                                             _hd118622118658_
                                             _tl118621118660_
                                             _e118626118663_
                                             _hd118625118666_
                                             _tl118624118668_
                                             ___splice128748128749_
                                             _target118627118671_
                                             _tl118629118673_)
                                            (___kont128750128751_))))
                                    (___kont128750128751_))))
                            (___kont128750128751_))))
                    (___kont128750128751_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118528_)
        (let* ((___stx128774128775_ _bind118528_)
               (_g118531118548_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128774128775_)))))
          (let ((___kont128776128777_
                 (lambda (_L118584_ _L118585_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118585_))
                       (let ((_$e118601_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118584_))))
                         (if _$e118601_
                             _$e118601_
                             (let ((_$e118604_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118584_))))
                               (if _$e118604_
                                   _$e118604_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118584_))))))
                       '#f)))
                (___kont128778128779_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128774128775_))
                (let ((_e118537118560_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128774128775_))))
                  (let ((_tl118535118565_
                         (let () (declare (not safe)) (##cdr _e118537118560_)))
                        (_hd118536118563_
                         (let ()
                           (declare (not safe))
                           (##car _e118537118560_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118536118563_))
                        (let ((_e118540118568_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118536118563_))))
                          (let ((_tl118538118573_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118540118568_)))
                                (_hd118539118571_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118540118568_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118538118573_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118535118565_))
                                    (let ((_e118543118576_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118535118565_))))
                                      (let ((_tl118541118581_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118543118576_)))
                                            (_hd118542118579_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118543118576_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118541118581_))
                                            (___kont128776128777_
                                             _hd118542118579_
                                             _hd118539118571_)
                                            (___kont128778128779_))))
                                    (___kont128778128779_))
                                (___kont128778128779_))))
                        (___kont128778128779_))))
                (___kont128778128779_))))))))
