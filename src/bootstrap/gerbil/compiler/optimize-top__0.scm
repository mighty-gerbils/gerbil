(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709128373)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126720_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128813 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126720_ __tmp128813))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126720_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126720_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126720_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126720_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126720_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126703_ . _args126705_)
        (let ((__tmp128815
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126705_)
                     (gxc#compile-e__0 _stx126703_)
                     (let ((_arg1126710_ (car _args126705_))
                           (_rest126712_ (cdr _args126705_)))
                       (if (null? _rest126712_)
                           (gxc#compile-e__1 _stx126703_ _arg1126710_)
                           (let ((_arg2126715_ (car _rest126712_))
                                 (_rest126717_ (cdr _rest126712_)))
                             (if (null? _rest126717_)
                                 (gxc#compile-e__2
                                  _stx126703_
                                  _arg1126710_
                                  _arg2126715_)
                                 (apply gxc#compile-e
                                        _stx126703_
                                        _arg1126710_
                                        _arg2126715_
                                        _rest126717_))))))))
              (__tmp128814 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128815
           gxc#current-compile-methods
           __tmp128814))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126700_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128816 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126700_ __tmp128816))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126700_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126700_ '%#call gxc#basic-expression-type-call%))
           _tbl126700_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126683_ . _args126685_)
        (let ((__tmp128818
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126685_)
                     (gxc#compile-e__0 _stx126683_)
                     (let ((_arg1126690_ (car _args126685_))
                           (_rest126692_ (cdr _args126685_)))
                       (if (null? _rest126692_)
                           (gxc#compile-e__1 _stx126683_ _arg1126690_)
                           (let ((_arg2126695_ (car _rest126692_))
                                 (_rest126697_ (cdr _rest126692_)))
                             (if (null? _rest126697_)
                                 (gxc#compile-e__2
                                  _stx126683_
                                  _arg1126690_
                                  _arg2126695_)
                                 (apply gxc#compile-e
                                        _stx126683_
                                        _arg1126690_
                                        _arg2126695_
                                        _rest126697_))))))))
              (__tmp128817 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128818
           gxc#current-compile-methods
           __tmp128817))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126680_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128819 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126680_ __tmp128819))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126680_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126680_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126680_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126680_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126680_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126680_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126680_ '%#set! gxc#collect-body-setq%))
           _tbl126680_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126663_ . _args126665_)
        (let ((__tmp128821
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126665_)
                     (gxc#compile-e__0 _stx126663_)
                     (let ((_arg1126670_ (car _args126665_))
                           (_rest126672_ (cdr _args126665_)))
                       (if (null? _rest126672_)
                           (gxc#compile-e__1 _stx126663_ _arg1126670_)
                           (let ((_arg2126675_ (car _rest126672_))
                                 (_rest126677_ (cdr _rest126672_)))
                             (if (null? _rest126677_)
                                 (gxc#compile-e__2
                                  _stx126663_
                                  _arg1126670_
                                  _arg2126675_)
                                 (apply gxc#compile-e
                                        _stx126663_
                                        _arg1126670_
                                        _arg2126675_
                                        _rest126677_))))))))
              (__tmp128820 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128821
           gxc#current-compile-methods
           __tmp128820))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126660_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128822 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126660_ __tmp128822))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126660_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126660_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126660_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126660_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126660_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126660_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126660_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126660_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126660_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126660_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126643_ . _args126645_)
        (let ((__tmp128824
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126645_)
                     (gxc#compile-e__0 _stx126643_)
                     (let ((_arg1126650_ (car _args126645_))
                           (_rest126652_ (cdr _args126645_)))
                       (if (null? _rest126652_)
                           (gxc#compile-e__1 _stx126643_ _arg1126650_)
                           (let ((_arg2126655_ (car _rest126652_))
                                 (_rest126657_ (cdr _rest126652_)))
                             (if (null? _rest126657_)
                                 (gxc#compile-e__2
                                  _stx126643_
                                  _arg1126650_
                                  _arg2126655_)
                                 (apply gxc#compile-e
                                        _stx126643_
                                        _arg1126650_
                                        _arg2126655_
                                        _rest126657_))))))))
              (__tmp128823 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128824
           gxc#current-compile-methods
           __tmp128823))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126640_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128825 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126640_ __tmp128825))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126640_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126640_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126640_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126640_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126640_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126623_ . _args126625_)
        (let ((__tmp128827
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126625_)
                     (gxc#compile-e__0 _stx126623_)
                     (let ((_arg1126630_ (car _args126625_))
                           (_rest126632_ (cdr _args126625_)))
                       (if (null? _rest126632_)
                           (gxc#compile-e__1 _stx126623_ _arg1126630_)
                           (let ((_arg2126635_ (car _rest126632_))
                                 (_rest126637_ (cdr _rest126632_)))
                             (if (null? _rest126637_)
                                 (gxc#compile-e__2
                                  _stx126623_
                                  _arg1126630_
                                  _arg2126635_)
                                 (apply gxc#compile-e
                                        _stx126623_
                                        _arg1126630_
                                        _arg2126635_
                                        _rest126637_))))))))
              (__tmp128826 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128827
           gxc#current-compile-methods
           __tmp128826))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126526_)
        (let* ((___stx126733126734_ _stx126526_)
               (_g126529126549_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126733126734_)))))
          (let ((___kont126735126736_
                 (lambda (_L126593_ _L126594_)
                   (let ((_sym126612_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126594_))))
                     (if (let ((__tmp128828 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128828 _sym126612_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126612_))
                         (let ((_type126613126615_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126593_))))
                           (if _type126613126615_
                               (let ((_type126618_ _type126613126615_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126612_
                                  _type126618_))
                               '#f))))))
                (___kont126737126738_ (lambda () '#!void)))
            (let ((___match126766126767_
                   (lambda (_e126535126561_
                            _hd126534126564_
                            _tl126533126566_
                            _e126538126569_
                            _hd126537126572_
                            _tl126536126574_
                            _e126541126577_
                            _hd126540126580_
                            _tl126539126582_
                            _e126544126585_
                            _hd126543126588_
                            _tl126542126590_)
                     (let ((_L126593_ _hd126543126588_)
                           (_L126594_ _hd126540126580_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126594_))
                           (___kont126735126736_ _L126593_ _L126594_)
                           (___kont126737126738_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126733126734_))
                  (let ((_e126535126561_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126733126734_))))
                    (let ((_tl126533126566_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126535126561_)))
                          (_hd126534126564_
                           (let ()
                             (declare (not safe))
                             (##car _e126535126561_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126533126566_))
                          (let ((_e126538126569_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126533126566_))))
                            (let ((_tl126536126574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126538126569_)))
                                  (_hd126537126572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126538126569_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126537126572_))
                                  (let ((_e126541126577_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126537126572_))))
                                    (let ((_tl126539126582_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126541126577_)))
                                          (_hd126540126580_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126541126577_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126539126582_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126536126574_))
                                              (let ((_e126544126585_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126536126574_))))
                                                (let ((_tl126542126590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126544126585_)))
                                                      (_hd126543126588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126544126585_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126542126590_))
                                                      (___match126766126767_
                                                       _e126535126561_
                                                       _hd126534126564_
                                                       _tl126533126566_
                                                       _e126538126569_
                                                       _hd126537126572_
                                                       _tl126536126574_
                                                       _e126541126577_
                                                       _hd126540126580_
                                                       _tl126539126582_
                                                       _e126544126585_
                                                       _hd126543126588_
                                                       _tl126542126590_)
                                                      (___kont126737126738_))))
                                              (___kont126737126738_))
                                          (___kont126737126738_))))
                                  (___kont126737126738_))))
                          (___kont126737126738_))))
                  (___kont126737126738_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx126382_)
        (let* ((___stx126769126770_ _stx126382_)
               (_g126385126416_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126769126770_)))))
          (let ((___kont126771126772_
                 (lambda (_L126498_ _L126499_)
                   (let ((_sym126515_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126499_))))
                     (if (let ((__tmp128829 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128829 _sym126515_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126515_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126515_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126515_))
                             (let ((_type126516126518_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126498_))))
                               (if _type126516126518_
                                   (let ((_type126521_ _type126516126518_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126515_
                                      _type126521_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126498_)))))
                (___kont126773126774_
                 (lambda (_L126445_ _L126446_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126445_)))))
            (let ((___match126802126803_
                   (lambda (_e126391126466_
                            _hd126390126469_
                            _tl126389126471_
                            _e126394126474_
                            _hd126393126477_
                            _tl126392126479_
                            _e126397126482_
                            _hd126396126485_
                            _tl126395126487_
                            _e126400126490_
                            _hd126399126493_
                            _tl126398126495_)
                     (let ((_L126498_ _hd126399126493_)
                           (_L126499_ _hd126396126485_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126499_))
                           (___kont126771126772_ _L126498_ _L126499_)
                           (___kont126773126774_
                            _hd126399126493_
                            _hd126393126477_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126769126770_))
                  (let ((_e126391126466_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126769126770_))))
                    (let ((_tl126389126471_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126391126466_)))
                          (_hd126390126469_
                           (let ()
                             (declare (not safe))
                             (##car _e126391126466_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126389126471_))
                          (let ((_e126394126474_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126389126471_))))
                            (let ((_tl126392126479_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126394126474_)))
                                  (_hd126393126477_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126394126474_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126393126477_))
                                  (let ((_e126397126482_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126393126477_))))
                                    (let ((_tl126395126487_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126397126482_)))
                                          (_hd126396126485_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126397126482_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126395126487_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126392126479_))
                                              (let ((_e126400126490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126392126479_))))
                                                (let ((_tl126398126495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126400126490_)))
                                                      (_hd126399126493_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126400126490_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126398126495_))
                                                      (___match126802126803_
                                                       _e126391126466_
                                                       _hd126390126469_
                                                       _tl126389126471_
                                                       _e126394126474_
                                                       _hd126393126477_
                                                       _tl126392126479_
                                                       _e126397126482_
                                                       _hd126396126485_
                                                       _tl126395126487_
                                                       _e126400126490_
                                                       _hd126399126493_
                                                       _tl126398126495_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126385126416_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126385126416_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126392126479_))
                                              (let ((_e126411126437_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126392126479_))))
                                                (let ((_tl126409126442_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126411126437_)))
                                                      (_hd126410126440_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126411126437_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126409126442_))
                                                      (___kont126773126774_
                                                       _hd126410126440_
                                                       _hd126393126477_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126385126416_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126385126416_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126392126479_))
                                      (let ((_e126411126437_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126392126479_))))
                                        (let ((_tl126409126442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126411126437_)))
                                              (_hd126410126440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126411126437_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126409126442_))
                                              (___kont126773126774_
                                               _hd126410126440_
                                               _hd126393126477_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126385126416_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126385126416_))))))
                          (let () (declare (not safe)) (_g126385126416_)))))
                  (let () (declare (not safe)) (_g126385126416_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx126167_)
        (letrec ((_collect-e126169_
                  (lambda (_hd126326_ _expr126327_)
                    (let* ((___stx126825126826_ _hd126326_)
                           (_g126330126340_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126825126826_)))))
                      (let ((___kont126827126828_
                             (lambda (_L126360_)
                               (let ((_sym126371_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126360_))))
                                 (if (let ((__tmp128830
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128830 _sym126371_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126371_))
                                     (let ((_type126372126374_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126327_))))
                                       (if _type126372126374_
                                           (let ((_type126377_
                                                  _type126372126374_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126371_
                                              _type126377_
                                              '#t))
                                           '#f))))))
                            (___kont126829126830_ (lambda () '#!void)))
                        (let ((___match126838126839_
                               (lambda (_e126335126352_
                                        _hd126334126355_
                                        _tl126333126357_)
                                 (let ((_L126360_ _hd126334126355_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126360_))
                                       (___kont126827126828_ _L126360_)
                                       (___kont126829126830_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126825126826_))
                              (let ((_e126335126352_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126825126826_))))
                                (let ((_tl126333126357_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126335126352_)))
                                      (_hd126334126355_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126335126352_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126333126357_))
                                      (___match126838126839_
                                       _e126335126352_
                                       _hd126334126355_
                                       _tl126333126357_)
                                      (___kont126829126830_))))
                              (___kont126829126830_))))))))
          (let* ((_g126171126206_
                  (lambda (_g126172126203_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126172126203_))))
                 (_g126170126323_
                  (lambda (_g126172126209_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126172126209_))
                        (let ((_e126178126211_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126172126209_))))
                          (let ((_hd126177126214_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126178126211_)))
                                (_tl126176126216_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126178126211_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126176126216_))
                                (let ((_e126181126219_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126176126216_))))
                                  (let ((_hd126180126222_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126181126219_)))
                                        (_tl126179126224_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126181126219_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126180126222_))
                                        (let ((_g128831_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126180126222_
                                                  '0))))
                                          (begin
                                            (let ((_g128832_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128831_)
                                                         (##vector-length
                                                          _g128831_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128832_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128832_)))
                                            (let ((_target126182126227_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128831_
                                                      0)))
                                                  (_tl126184126229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128831_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126184126229_))
                                                  (letrec ((_loop126185126232_
                                                            (lambda (_hd126183126235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126189126237_
                             _hd126190126239_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126183126235_))
                          (let ((_e126186126242_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126183126235_))))
                            (let ((_lp-hd126187126245_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126186126242_)))
                                  (_lp-tl126188126247_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126186126242_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126187126245_))
                                  (let ((_e126195126250_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126187126245_))))
                                    (let ((_hd126194126253_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126195126250_)))
                                          (_tl126193126255_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126195126250_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126193126255_))
                                          (let ((_e126198126258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126193126255_))))
                                            (let ((_hd126197126261_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126198126258_)))
                                                  (_tl126196126263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126198126258_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126196126263_))
                                                  (let ((__tmp128837
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126197126261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126189126237_)))
                (__tmp128836
                 (let ()
                   (declare (not safe))
                   (cons _hd126194126253_ _hd126190126239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126185126232_
                                                     _lp-tl126188126247_
                                                     __tmp128837
                                                     __tmp128836))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126171126206_
                                                     _g126172126209_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126171126206_
                                             _g126172126209_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126171126206_ _g126172126209_)))))
                          (let ((_expr126191126266_
                                 (reverse _expr126189126237_))
                                (_hd126192126268_ (reverse _hd126190126239_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126179126224_))
                                (let ((_e126201126271_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126179126224_))))
                                  (let ((_hd126200126274_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126201126271_)))
                                        (_tl126199126276_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126201126271_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126199126276_))
                                        ((lambda (_L126279_
                                                  _L126280_
                                                  _L126281_)
                                           (for-each
                                            _collect-e126169_
                                            (let ((__tmp128833
                                                   (lambda (_g126301126304_
                                                            _g126302126306_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126301126304_
                                                             _g126302126306_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128833
                                                      '()
                                                      _L126281_))
                                            (let ((__tmp128834
                                                   (lambda (_g126308126311_
                                                            _g126309126313_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126308126311_
                                                             _g126309126313_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128834
                                                      '()
                                                      _L126280_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128835
                                                   (lambda (_g126315126318_
                                                            _g126316126320_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126315126318_
                                                             _g126316126320_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128835
                                                      '()
                                                      _L126280_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L126279_)))
                                         _hd126200126274_
                                         _expr126191126266_
                                         _hd126192126268_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126171126206_ _g126172126209_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126171126206_ _g126172126209_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126185126232_
                                                       _target126182126227_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126171126206_
                                                     _g126172126209_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126171126206_ _g126172126209_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126171126206_ _g126172126209_)))))
                        (let ()
                          (declare (not safe))
                          (_g126171126206_ _g126172126209_))))))
            (declare (not safe))
            (_g126170126323_ _stx126167_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125659_)
        (let* ((___stx126841126842_ _stx125659_)
               (_g125663125778_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126841126842_)))))
          (let ((___kont126843126844_
                 (lambda (_L126117_ _L126118_ _L126119_ _L126120_ _L126121_)
                   (let ((__tmp128841
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126120_)))
                         (__tmp128840
                          (let () (declare (not safe)) (gx#stx-e _L126119_)))
                         (__tmp128839
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126118_)))
                         (__tmp128838
                          (let () (declare (not safe)) (gx#stx-e _L126117_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128841
                      __tmp128840
                      __tmp128839
                      __tmp128838))))
                (___kont126845126846_
                 (lambda (_L125945_ _L125946_ _L125947_ _L125948_)
                   (let ((__tmp128844
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125947_)))
                         (__tmp128843
                          (let () (declare (not safe)) (gx#stx-e _L125946_)))
                         (__tmp128842
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125945_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128844
                      __tmp128843
                      __tmp128842
                      '#f))))
                (___kont126847126848_
                 (lambda (_L125815_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128845
                           (lambda (_g125828125831_ _g125829125833_)
                             (let ()
                               (declare (not safe))
                               (cons _g125828125831_ _g125829125833_)))))
                      (declare (not safe))
                      (foldr1 __tmp128845 '() _L125815_))))))
            (let* ((___match127098127099_
                    (lambda (_e125764125783_
                             _hd125763125786_
                             _tl125762125788_
                             ___splice126849126850_
                             _target125765125791_
                             _tl125767125793_)
                      (letrec ((_loop125768125796_
                                (lambda (_hd125766125799_ _expr125772125801_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125766125799_))
                                      (let ((_e125769125804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125766125799_))))
                                        (let ((_lp-tl125771125809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125769125804_)))
                                              (_lp-hd125770125807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125769125804_))))
                                          (let ((__tmp128846
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125770125807_
                                                         _expr125772125801_))))
                                            (declare (not safe))
                                            (_loop125768125796_
                                             _lp-tl125771125809_
                                             __tmp128846))))
                                      (let ((_expr125773125812_
                                             (reverse _expr125772125801_)))
                                        (___kont126847126848_
                                         _expr125773125812_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125768125796_ _target125765125791_ '())))))
                   (___match126978126979_
                    (lambda (_e125672125989_
                             _hd125671125992_
                             _tl125670125994_
                             _e125675125997_
                             _hd125674126000_
                             _tl125673126002_
                             _e125678126005_
                             _hd125677126008_
                             _tl125676126010_
                             _e125681126013_
                             _hd125680126016_
                             _tl125679126018_
                             _e125684126021_
                             _hd125683126024_
                             _tl125682126026_
                             _e125687126029_
                             _hd125686126032_
                             _tl125685126034_
                             _e125690126037_
                             _hd125689126040_
                             _tl125688126042_
                             _e125693126045_
                             _hd125692126048_
                             _tl125691126050_
                             _e125696126053_
                             _hd125695126056_
                             _tl125694126058_
                             _e125699126061_
                             _hd125698126064_
                             _tl125697126066_
                             _e125702126069_
                             _hd125701126072_
                             _tl125700126074_
                             _e125705126077_
                             _hd125704126080_
                             _tl125703126082_
                             _e125708126085_
                             _hd125707126088_
                             _tl125706126090_
                             _e125711126093_
                             _hd125710126096_
                             _tl125709126098_
                             _e125714126101_
                             _hd125713126104_
                             _tl125712126106_
                             _e125717126109_
                             _hd125716126112_
                             _tl125715126114_)
                      (let ((_L126117_ _hd125716126112_)
                            (_L126118_ _hd125707126088_)
                            (_L126119_ _hd125698126064_)
                            (_L126120_ _hd125689126040_)
                            (_L126121_ _hd125680126016_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126121_
                               'bind-method!))
                            (___kont126843126844_
                             _L126117_
                             _L126118_
                             _L126119_
                             _L126120_
                             _L126121_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125670125994_))
                                (let ((___splice126849126850_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125670125994_
                                          '0))))
                                  (let ((_tl125767125793_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126849126850_
                                            '1)))
                                        (_target125765125791_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126849126850_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125767125793_))
                                        (___match127098127099_
                                         _e125672125989_
                                         _hd125671125992_
                                         _tl125670125994_
                                         ___splice126849126850_
                                         _target125765125791_
                                         _tl125767125793_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125663125778_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125663125778_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126841126842_))
                  (let ((_e125672125989_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126841126842_))))
                    (let ((_tl125670125994_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125672125989_)))
                          (_hd125671125992_
                           (let ()
                             (declare (not safe))
                             (##car _e125672125989_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125670125994_))
                          (let ((_e125675125997_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125670125994_))))
                            (let ((_tl125673126002_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125675125997_)))
                                  (_hd125674126000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125675125997_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125674126000_))
                                  (let ((_e125678126005_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125674126000_))))
                                    (let ((_tl125676126010_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125678126005_)))
                                          (_hd125677126008_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125678126005_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125677126008_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125677126008_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125676126010_))
                                                  (let ((_e125681126013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125676126010_))))
                                                    (let ((_tl125679126018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125681126013_)))
                                                          (_hd125680126016_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125681126013_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125679126018_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125673126002_))
                      (let ((_e125684126021_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125673126002_))))
                        (let ((_tl125682126026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125684126021_)))
                              (_hd125683126024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125684126021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125683126024_))
                              (let ((_e125687126029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125683126024_))))
                                (let ((_tl125685126034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125687126029_)))
                                      (_hd125686126032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125687126029_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125686126032_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125686126032_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125685126034_))
                                              (let ((_e125690126037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125685126034_))))
                                                (let ((_tl125688126042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125690126037_)))
                                                      (_hd125689126040_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125690126037_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125688126042_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125682126026_))
                                                          (let ((_e125693126045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125682126026_))))
                    (let ((_tl125691126050_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125693126045_)))
                          (_hd125692126048_
                           (let ()
                             (declare (not safe))
                             (##car _e125693126045_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125692126048_))
                          (let ((_e125696126053_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125692126048_))))
                            (let ((_tl125694126058_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125696126053_)))
                                  (_hd125695126056_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125696126053_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125695126056_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125695126056_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125694126058_))
                                          (let ((_e125699126061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125694126058_))))
                                            (let ((_tl125697126066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125699126061_)))
                                                  (_hd125698126064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125699126061_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125697126066_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125691126050_))
                                                      (let ((_e125702126069_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125691126050_))))
                (let ((_tl125700126074_
                       (let () (declare (not safe)) (##cdr _e125702126069_)))
                      (_hd125701126072_
                       (let () (declare (not safe)) (##car _e125702126069_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125701126072_))
                      (let ((_e125705126077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125701126072_))))
                        (let ((_tl125703126082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125705126077_)))
                              (_hd125704126080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125705126077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125704126080_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125704126080_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125703126082_))
                                      (let ((_e125708126085_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125703126082_))))
                                        (let ((_tl125706126090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125708126085_)))
                                              (_hd125707126088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125708126085_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125706126090_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125700126074_))
                                                  (let ((_e125711126093_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125700126074_))))
                                                    (let ((_tl125709126098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125711126093_)))
                                                          (_hd125710126096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125711126093_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125710126096_))
                                                          (let ((_e125714126101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125710126096_))))
                    (let ((_tl125712126106_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125714126101_)))
                          (_hd125713126104_
                           (let ()
                             (declare (not safe))
                             (##car _e125714126101_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125713126104_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125713126104_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125712126106_))
                                  (let ((_e125717126109_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125712126106_))))
                                    (let ((_tl125715126114_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125717126109_)))
                                          (_hd125716126112_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125717126109_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125715126114_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125709126098_))
                                              (___match126978126979_
                                               _e125672125989_
                                               _hd125671125992_
                                               _tl125670125994_
                                               _e125675125997_
                                               _hd125674126000_
                                               _tl125673126002_
                                               _e125678126005_
                                               _hd125677126008_
                                               _tl125676126010_
                                               _e125681126013_
                                               _hd125680126016_
                                               _tl125679126018_
                                               _e125684126021_
                                               _hd125683126024_
                                               _tl125682126026_
                                               _e125687126029_
                                               _hd125686126032_
                                               _tl125685126034_
                                               _e125690126037_
                                               _hd125689126040_
                                               _tl125688126042_
                                               _e125693126045_
                                               _hd125692126048_
                                               _tl125691126050_
                                               _e125696126053_
                                               _hd125695126056_
                                               _tl125694126058_
                                               _e125699126061_
                                               _hd125698126064_
                                               _tl125697126066_
                                               _e125702126069_
                                               _hd125701126072_
                                               _tl125700126074_
                                               _e125705126077_
                                               _hd125704126080_
                                               _tl125703126082_
                                               _e125708126085_
                                               _hd125707126088_
                                               _tl125706126090_
                                               _e125711126093_
                                               _hd125710126096_
                                               _tl125709126098_
                                               _e125714126101_
                                               _hd125713126104_
                                               _tl125712126106_
                                               _e125717126109_
                                               _hd125716126112_
                                               _tl125715126114_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125670125994_))
                                                  (let ((___splice126849126850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125670125994_
                                                            '0))))
                                                    (let ((_tl125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '1)))
                                                          (_target125765125791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125767125793_))
                                                          (___match127098127099_
                                                           _e125672125989_
                                                           _hd125671125992_
                                                           _tl125670125994_
                                                           ___splice126849126850_
                                                           _target125765125791_
                                                           _tl125767125793_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125663125778_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125670125994_))
                                              (let ((___splice126849126850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125670125994_
                                                        '0))))
                                                (let ((_tl125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '1)))
                                                      (_target125765125791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125767125793_))
                                                      (___match127098127099_
                                                       _e125672125989_
                                                       _hd125671125992_
                                                       _tl125670125994_
                                                       ___splice126849126850_
                                                       _target125765125791_
                                                       _tl125767125793_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125663125778_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125670125994_))
                                      (let ((___splice126849126850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125670125994_
                                                '0))))
                                        (let ((_tl125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '1)))
                                              (_target125765125791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125767125793_))
                                              (___match127098127099_
                                               _e125672125989_
                                               _hd125671125992_
                                               _tl125670125994_
                                               ___splice126849126850_
                                               _target125765125791_
                                               _tl125767125793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125670125994_))
                                  (let ((___splice126849126850_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125670125994_
                                            '0))))
                                    (let ((_tl125767125793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126849126850_
                                              '1)))
                                          (_target125765125791_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126849126850_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125767125793_))
                                          (___match127098127099_
                                           _e125672125989_
                                           _hd125671125992_
                                           _tl125670125994_
                                           ___splice126849126850_
                                           _target125765125791_
                                           _tl125767125793_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125663125778_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125663125778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125670125994_))
                              (let ((___splice126849126850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125670125994_
                                        '0))))
                                (let ((_tl125767125793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126849126850_
                                          '1)))
                                      (_target125765125791_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126849126850_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125767125793_))
                                      (___match127098127099_
                                       _e125672125989_
                                       _hd125671125992_
                                       _tl125670125994_
                                       ___splice126849126850_
                                       _target125765125791_
                                       _tl125767125793_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_)))))
                              (let ()
                                (declare (not safe))
                                (_g125663125778_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125670125994_))
                      (let ((___splice126849126850_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125670125994_ '0))))
                        (let ((_tl125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '1)))
                              (_target125765125791_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125767125793_))
                              (___match127098127099_
                               _e125672125989_
                               _hd125671125992_
                               _tl125670125994_
                               ___splice126849126850_
                               _target125765125791_
                               _tl125767125793_)
                              (let ()
                                (declare (not safe))
                                (_g125663125778_)))))
                      (let () (declare (not safe)) (_g125663125778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125700126074_))
                                                      (if (let ((__tmp128847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128847 'bind-method!))
                  (let ((_L125945_ _hd125707126088_)
                        (_L125946_ _hd125698126064_)
                        (_L125947_ _hd125689126040_)
                        (_L125948_ _hd125680126016_))
                    (___kont126845126846_
                     _L125945_
                     _L125946_
                     _L125947_
                     _L125948_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125670125994_))
                      (let ((___splice126849126850_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125670125994_ '0))))
                        (let ((_tl125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '1)))
                              (_target125765125791_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125767125793_))
                              (___match127098127099_
                               _e125672125989_
                               _hd125671125992_
                               _tl125670125994_
                               ___splice126849126850_
                               _target125765125791_
                               _tl125767125793_)
                              (let ()
                                (declare (not safe))
                                (_g125663125778_)))))
                      (let () (declare (not safe)) (_g125663125778_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125670125994_))
                  (let ((___splice126849126850_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125670125994_ '0))))
                    (let ((_tl125767125793_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126849126850_ '1)))
                          (_target125765125791_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126849126850_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125767125793_))
                          (___match127098127099_
                           _e125672125989_
                           _hd125671125992_
                           _tl125670125994_
                           ___splice126849126850_
                           _target125765125791_
                           _tl125767125793_)
                          (let () (declare (not safe)) (_g125663125778_)))))
                  (let () (declare (not safe)) (_g125663125778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125670125994_))
                                                  (let ((___splice126849126850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125670125994_
                                                            '0))))
                                                    (let ((_tl125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '1)))
                                                          (_target125765125791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125767125793_))
                                                          (___match127098127099_
                                                           _e125672125989_
                                                           _hd125671125992_
                                                           _tl125670125994_
                                                           ___splice126849126850_
                                                           _target125765125791_
                                                           _tl125767125793_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125663125778_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125670125994_))
                                          (let ((___splice126849126850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125670125994_
                                                    '0))))
                                            (let ((_tl125767125793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126849126850_
                                                      '1)))
                                                  (_target125765125791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126849126850_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125767125793_))
                                                  (___match127098127099_
                                                   _e125672125989_
                                                   _hd125671125992_
                                                   _tl125670125994_
                                                   ___splice126849126850_
                                                   _target125765125791_
                                                   _tl125767125793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125663125778_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125670125994_))
                                      (let ((___splice126849126850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125670125994_
                                                '0))))
                                        (let ((_tl125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '1)))
                                              (_target125765125791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125767125793_))
                                              (___match127098127099_
                                               _e125672125989_
                                               _hd125671125992_
                                               _tl125670125994_
                                               ___splice126849126850_
                                               _target125765125791_
                                               _tl125767125793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125670125994_))
                                  (let ((___splice126849126850_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125670125994_
                                            '0))))
                                    (let ((_tl125767125793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126849126850_
                                              '1)))
                                          (_target125765125791_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126849126850_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125767125793_))
                                          (___match127098127099_
                                           _e125672125989_
                                           _hd125671125992_
                                           _tl125670125994_
                                           ___splice126849126850_
                                           _target125765125791_
                                           _tl125767125793_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125663125778_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125663125778_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125670125994_))
                          (let ((___splice126849126850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125670125994_
                                    '0))))
                            (let ((_tl125767125793_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126849126850_ '1)))
                                  (_target125765125791_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126849126850_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125767125793_))
                                  (___match127098127099_
                                   _e125672125989_
                                   _hd125671125992_
                                   _tl125670125994_
                                   ___splice126849126850_
                                   _target125765125791_
                                   _tl125767125793_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125663125778_)))))
                          (let () (declare (not safe)) (_g125663125778_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125670125994_))
                  (let ((___splice126849126850_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125670125994_ '0))))
                    (let ((_tl125767125793_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126849126850_ '1)))
                          (_target125765125791_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126849126850_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125767125793_))
                          (___match127098127099_
                           _e125672125989_
                           _hd125671125992_
                           _tl125670125994_
                           ___splice126849126850_
                           _target125765125791_
                           _tl125767125793_)
                          (let () (declare (not safe)) (_g125663125778_)))))
                  (let () (declare (not safe)) (_g125663125778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125670125994_))
                                                      (let ((___splice126849126850_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125670125994_ '0))))
                (let ((_tl125767125793_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126849126850_ '1)))
                      (_target125765125791_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126849126850_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125767125793_))
                      (___match127098127099_
                       _e125672125989_
                       _hd125671125992_
                       _tl125670125994_
                       ___splice126849126850_
                       _target125765125791_
                       _tl125767125793_)
                      (let () (declare (not safe)) (_g125663125778_)))))
              (let () (declare (not safe)) (_g125663125778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125670125994_))
                                              (let ((___splice126849126850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125670125994_
                                                        '0))))
                                                (let ((_tl125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '1)))
                                                      (_target125765125791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125767125793_))
                                                      (___match127098127099_
                                                       _e125672125989_
                                                       _hd125671125992_
                                                       _tl125670125994_
                                                       ___splice126849126850_
                                                       _target125765125791_
                                                       _tl125767125793_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125663125778_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125670125994_))
                                          (let ((___splice126849126850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125670125994_
                                                    '0))))
                                            (let ((_tl125767125793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126849126850_
                                                      '1)))
                                                  (_target125765125791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126849126850_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125767125793_))
                                                  (___match127098127099_
                                                   _e125672125989_
                                                   _hd125671125992_
                                                   _tl125670125994_
                                                   ___splice126849126850_
                                                   _target125765125791_
                                                   _tl125767125793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125663125778_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125670125994_))
                                      (let ((___splice126849126850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125670125994_
                                                '0))))
                                        (let ((_tl125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '1)))
                                              (_target125765125791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125767125793_))
                                              (___match127098127099_
                                               _e125672125989_
                                               _hd125671125992_
                                               _tl125670125994_
                                               ___splice126849126850_
                                               _target125765125791_
                                               _tl125767125793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125670125994_))
                              (let ((___splice126849126850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125670125994_
                                        '0))))
                                (let ((_tl125767125793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126849126850_
                                          '1)))
                                      (_target125765125791_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126849126850_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125767125793_))
                                      (___match127098127099_
                                       _e125672125989_
                                       _hd125671125992_
                                       _tl125670125994_
                                       ___splice126849126850_
                                       _target125765125791_
                                       _tl125767125793_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_)))))
                              (let ()
                                (declare (not safe))
                                (_g125663125778_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125670125994_))
                      (let ((___splice126849126850_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125670125994_ '0))))
                        (let ((_tl125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '1)))
                              (_target125765125791_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125767125793_))
                              (___match127098127099_
                               _e125672125989_
                               _hd125671125992_
                               _tl125670125994_
                               ___splice126849126850_
                               _target125765125791_
                               _tl125767125793_)
                              (let ()
                                (declare (not safe))
                                (_g125663125778_)))))
                      (let () (declare (not safe)) (_g125663125778_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125670125994_))
                  (let ((___splice126849126850_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125670125994_ '0))))
                    (let ((_tl125767125793_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126849126850_ '1)))
                          (_target125765125791_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126849126850_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125767125793_))
                          (___match127098127099_
                           _e125672125989_
                           _hd125671125992_
                           _tl125670125994_
                           ___splice126849126850_
                           _target125765125791_
                           _tl125767125793_)
                          (let () (declare (not safe)) (_g125663125778_)))))
                  (let () (declare (not safe)) (_g125663125778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125670125994_))
                                                  (let ((___splice126849126850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125670125994_
                                                            '0))))
                                                    (let ((_tl125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '1)))
                                                          (_target125765125791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125767125793_))
                                                          (___match127098127099_
                                                           _e125672125989_
                                                           _hd125671125992_
                                                           _tl125670125994_
                                                           ___splice126849126850_
                                                           _target125765125791_
                                                           _tl125767125793_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125663125778_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125670125994_))
                                              (let ((___splice126849126850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125670125994_
                                                        '0))))
                                                (let ((_tl125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '1)))
                                                      (_target125765125791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125767125793_))
                                                      (___match127098127099_
                                                       _e125672125989_
                                                       _hd125671125992_
                                                       _tl125670125994_
                                                       ___splice126849126850_
                                                       _target125765125791_
                                                       _tl125767125793_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125663125778_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125670125994_))
                                          (let ((___splice126849126850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125670125994_
                                                    '0))))
                                            (let ((_tl125767125793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126849126850_
                                                      '1)))
                                                  (_target125765125791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126849126850_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125767125793_))
                                                  (___match127098127099_
                                                   _e125672125989_
                                                   _hd125671125992_
                                                   _tl125670125994_
                                                   ___splice126849126850_
                                                   _target125765125791_
                                                   _tl125767125793_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125663125778_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125670125994_))
                                  (let ((___splice126849126850_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125670125994_
                                            '0))))
                                    (let ((_tl125767125793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126849126850_
                                              '1)))
                                          (_target125765125791_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126849126850_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125767125793_))
                                          (___match127098127099_
                                           _e125672125989_
                                           _hd125671125992_
                                           _tl125670125994_
                                           ___splice126849126850_
                                           _target125765125791_
                                           _tl125767125793_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125663125778_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125663125778_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125670125994_))
                          (let ((___splice126849126850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125670125994_
                                    '0))))
                            (let ((_tl125767125793_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126849126850_ '1)))
                                  (_target125765125791_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126849126850_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125767125793_))
                                  (___match127098127099_
                                   _e125672125989_
                                   _hd125671125992_
                                   _tl125670125994_
                                   ___splice126849126850_
                                   _target125765125791_
                                   _tl125767125793_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125663125778_)))))
                          (let () (declare (not safe)) (_g125663125778_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125670125994_))
                      (let ((___splice126849126850_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125670125994_ '0))))
                        (let ((_tl125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '1)))
                              (_target125765125791_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126849126850_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125767125793_))
                              (___match127098127099_
                               _e125672125989_
                               _hd125671125992_
                               _tl125670125994_
                               ___splice126849126850_
                               _target125765125791_
                               _tl125767125793_)
                              (let ()
                                (declare (not safe))
                                (_g125663125778_)))))
                      (let () (declare (not safe)) (_g125663125778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125670125994_))
                                                      (let ((___splice126849126850_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125670125994_ '0))))
                (let ((_tl125767125793_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126849126850_ '1)))
                      (_target125765125791_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126849126850_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125767125793_))
                      (___match127098127099_
                       _e125672125989_
                       _hd125671125992_
                       _tl125670125994_
                       ___splice126849126850_
                       _target125765125791_
                       _tl125767125793_)
                      (let () (declare (not safe)) (_g125663125778_)))))
              (let () (declare (not safe)) (_g125663125778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125670125994_))
                                                  (let ((___splice126849126850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125670125994_
                                                            '0))))
                                                    (let ((_tl125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '1)))
                                                          (_target125765125791_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126849126850_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125767125793_))
                                                          (___match127098127099_
                                                           _e125672125989_
                                                           _hd125671125992_
                                                           _tl125670125994_
                                                           ___splice126849126850_
                                                           _target125765125791_
                                                           _tl125767125793_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125663125778_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125663125778_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125670125994_))
                                              (let ((___splice126849126850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125670125994_
                                                        '0))))
                                                (let ((_tl125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '1)))
                                                      (_target125765125791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126849126850_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125767125793_))
                                                      (___match127098127099_
                                                       _e125672125989_
                                                       _hd125671125992_
                                                       _tl125670125994_
                                                       ___splice126849126850_
                                                       _target125765125791_
                                                       _tl125767125793_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125663125778_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125670125994_))
                                      (let ((___splice126849126850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125670125994_
                                                '0))))
                                        (let ((_tl125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '1)))
                                              (_target125765125791_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126849126850_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125767125793_))
                                              (___match127098127099_
                                               _e125672125989_
                                               _hd125671125992_
                                               _tl125670125994_
                                               ___splice126849126850_
                                               _target125765125791_
                                               _tl125767125793_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125663125778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125670125994_))
                              (let ((___splice126849126850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125670125994_
                                        '0))))
                                (let ((_tl125767125793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126849126850_
                                          '1)))
                                      (_target125765125791_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126849126850_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125767125793_))
                                      (___match127098127099_
                                       _e125672125989_
                                       _hd125671125992_
                                       _tl125670125994_
                                       ___splice126849126850_
                                       _target125765125791_
                                       _tl125767125793_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125663125778_)))))
                              (let ()
                                (declare (not safe))
                                (_g125663125778_))))))
                  (let () (declare (not safe)) (_g125663125778_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125599_)
        (let* ((___stx127101127102_ _stx125599_)
               (_g125602125615_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127101127102_)))))
          (let ((___kont127103127104_
                 (lambda (_L125643_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125643_))))
                (___kont127105127106_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127101127102_))
                (let ((_e125607125627_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127101127102_))))
                  (let ((_tl125605125632_
                         (let () (declare (not safe)) (##cdr _e125607125627_)))
                        (_hd125606125630_
                         (let ()
                           (declare (not safe))
                           (##car _e125607125627_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125605125632_))
                        (let ((_e125610125635_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125605125632_))))
                          (let ((_tl125608125640_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125610125635_)))
                                (_hd125609125638_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125610125635_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125608125640_))
                                (___kont127103127104_ _hd125609125638_)
                                (___kont127105127106_))))
                        (___kont127105127106_))))
                (___kont127105127106_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125479_)
        (let* ((_g125481125498_
                (lambda (_g125482125495_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125482125495_))))
               (_g125480125596_
                (lambda (_g125482125501_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125482125501_))
                      (let ((_e125487125503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125482125501_))))
                        (let ((_hd125486125506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125487125503_)))
                              (_tl125485125508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125487125503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125485125508_))
                              (let ((_e125490125511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125485125508_))))
                                (let ((_hd125489125514_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125490125511_)))
                                      (_tl125488125516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125490125511_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125488125516_))
                                      (let ((_e125493125519_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125488125516_))))
                                        (let ((_hd125492125522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125493125519_)))
                                              (_tl125491125524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125493125519_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125491125524_))
                                              ((lambda (_L125527_ _L125528_)
                                                 (let* ((___stx127123127124_
                                                         _L125528_)
                                                        (_g125544125555_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127123127124_)))))
                                                   (let ((___kont127125127126_
                                                          (lambda (_L125575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125576_)
                    (let ((_$e125588_
                           (let ((__tmp128848
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125576_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128848))))
                      (if _$e125588_
                          ((lambda (_type-e125591_)
                             (_type-e125591_ _stx125479_ _L125528_))
                           _$e125588_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125527_))))))
                 (___kont127127127128_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127134127135_
                                                            (lambda (_e125550125567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125549125570_
                             _tl125548125572_)
                      (let ((_L125575_ _tl125548125572_)
                            (_L125576_ _hd125549125570_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125576_))
                            (___kont127125127126_ _L125575_ _L125576_)
                            (___kont127127127128_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127123127124_))
                   (let ((_e125550125567_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127123127124_))))
                     (let ((_tl125548125572_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125550125567_)))
                           (_hd125549125570_
                            (let ()
                              (declare (not safe))
                              (##car _e125550125567_))))
                       (___match127134127135_
                        _e125550125567_
                        _hd125549125570_
                        _tl125548125572_)))
                   (___kont127127127128_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125492125522_
                                               _hd125489125514_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125481125498_
                                                 _g125482125501_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125481125498_ _g125482125501_)))))
                              (let ()
                                (declare (not safe))
                                (_g125481125498_ _g125482125501_)))))
                      (let ()
                        (declare (not safe))
                        (_g125481125498_ _g125482125501_))))))
          (declare (not safe))
          (_g125480125596_ _stx125479_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125323_ _ann125324_)
        (let* ((_g125326125363_
                (lambda (_g125327125360_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125327125360_))))
               (_g125325125476_
                (lambda (_g125327125366_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125327125366_))
                      (let ((_e125337125368_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125327125366_))))
                        (let ((_hd125336125371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125337125368_)))
                              (_tl125335125373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125337125368_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125335125373_))
                              (let ((_e125340125376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125335125373_))))
                                (let ((_hd125339125379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125340125376_)))
                                      (_tl125338125381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125340125376_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125338125381_))
                                      (let ((_e125343125384_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125338125381_))))
                                        (let ((_hd125342125387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125343125384_)))
                                              (_tl125341125389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125343125384_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125341125389_))
                                              (let ((_e125346125392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125341125389_))))
                                                (let ((_hd125345125395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125346125392_)))
                                                      (_tl125344125397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125346125392_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125344125397_))
                                                      (let ((_e125349125400_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125344125397_))))
                (let ((_hd125348125403_
                       (let () (declare (not safe)) (##car _e125349125400_)))
                      (_tl125347125405_
                       (let () (declare (not safe)) (##cdr _e125349125400_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125347125405_))
                      (let ((_e125352125408_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125347125405_))))
                        (let ((_hd125351125411_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125352125408_)))
                              (_tl125350125413_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125352125408_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125350125413_))
                              (let ((_e125355125416_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125350125413_))))
                                (let ((_hd125354125419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125355125416_)))
                                      (_tl125353125421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125355125416_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125353125421_))
                                      (let ((_e125358125424_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125353125421_))))
                                        (let ((_hd125357125427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125358125424_)))
                                              (_tl125356125429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125358125424_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125356125429_))
                                              ((lambda (_L125432_
                                                        _L125433_
                                                        _L125434_
                                                        _L125435_
                                                        _L125436_
                                                        _L125437_
                                                        _L125438_)
                                                 (let ((_type-id125468_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125438_)))
                                                       (_super125469_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125437_)))
                                                       (_slots125470_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125436_)))
                                                       (_ctor-method125471_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125435_)))
                                                       (_struct?125472_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125434_)))
                                                       (_final?125473_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125433_)))
                                                       (_metaclass125474_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125432_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125432_))
                                                            '#f)))
                                                   (let ((__obj128806
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
                                                      __obj128806
                                                      _type-id125468_
                                                      _super125469_
                                                      _slots125470_
                                                      _ctor-method125471_
                                                      _struct?125472_
                                                      _final?125473_
                                                      _metaclass125474_)
                                                     __obj128806)))
                                               _hd125357125427_
                                               _hd125354125419_
                                               _hd125351125411_
                                               _hd125348125403_
                                               _hd125345125395_
                                               _hd125342125387_
                                               _hd125339125379_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125326125363_
                                                 _g125327125366_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125326125363_ _g125327125366_)))))
                              (let ()
                                (declare (not safe))
                                (_g125326125363_ _g125327125366_)))))
                      (let ()
                        (declare (not safe))
                        (_g125326125363_ _g125327125366_)))))
              (let ()
                (declare (not safe))
                (_g125326125363_ _g125327125366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125326125363_
                                                 _g125327125366_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125326125363_ _g125327125366_)))))
                              (let ()
                                (declare (not safe))
                                (_g125326125363_ _g125327125366_)))))
                      (let ()
                        (declare (not safe))
                        (_g125326125363_ _g125327125366_))))))
          (declare (not safe))
          (_g125325125476_ _ann125324_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125271_ _ann125272_)
        (let* ((_g125274125287_
                (lambda (_g125275125284_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125275125284_))))
               (_g125273125320_
                (lambda (_g125275125290_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125275125290_))
                      (let ((_e125279125292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125275125290_))))
                        (let ((_hd125278125295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125279125292_)))
                              (_tl125277125297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125279125292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125277125297_))
                              (let ((_e125282125300_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125277125297_))))
                                (let ((_hd125281125303_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125282125300_)))
                                      (_tl125280125305_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125282125300_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125280125305_))
                                      ((lambda (_L125308_)
                                         (let ((__tmp128849
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125308_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128849)))
                                       _hd125281125303_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125274125287_ _g125275125290_)))))
                              (let ()
                                (declare (not safe))
                                (_g125274125287_ _g125275125290_)))))
                      (let ()
                        (declare (not safe))
                        (_g125274125287_ _g125275125290_))))))
          (declare (not safe))
          (_g125273125320_ _ann125272_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125219_ _ann125220_)
        (let* ((_g125222125235_
                (lambda (_g125223125232_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125223125232_))))
               (_g125221125268_
                (lambda (_g125223125238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125223125238_))
                      (let ((_e125227125240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125223125238_))))
                        (let ((_hd125226125243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125227125240_)))
                              (_tl125225125245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125227125240_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125225125245_))
                              (let ((_e125230125248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125225125245_))))
                                (let ((_hd125229125251_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125230125248_)))
                                      (_tl125228125253_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125230125248_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125228125253_))
                                      ((lambda (_L125256_)
                                         (let ((__tmp128850
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125256_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128850)))
                                       _hd125229125251_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125222125235_ _g125223125238_)))))
                              (let ()
                                (declare (not safe))
                                (_g125222125235_ _g125223125238_)))))
                      (let ()
                        (declare (not safe))
                        (_g125222125235_ _g125223125238_))))))
          (declare (not safe))
          (_g125221125268_ _ann125220_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125135_ _ann125136_)
        (let* ((_g125138125159_
                (lambda (_g125139125156_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125139125156_))))
               (_g125137125216_
                (lambda (_g125139125162_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125139125162_))
                      (let ((_e125145125164_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125139125162_))))
                        (let ((_hd125144125167_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125145125164_)))
                              (_tl125143125169_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125145125164_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125143125169_))
                              (let ((_e125148125172_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125143125169_))))
                                (let ((_hd125147125175_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125148125172_)))
                                      (_tl125146125177_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125148125172_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125146125177_))
                                      (let ((_e125151125180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125146125177_))))
                                        (let ((_hd125150125183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125151125180_)))
                                              (_tl125149125185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125151125180_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125149125185_))
                                              (let ((_e125154125188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125149125185_))))
                                                (let ((_hd125153125191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125154125188_)))
                                                      (_tl125152125193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125154125188_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125152125193_))
                                                      ((lambda (_L125196_
                                                                _L125197_
                                                                _L125198_)
                                                         (let ((__tmp128853
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125198_)))
                       (__tmp128852
                        (let () (declare (not safe)) (gx#stx-e _L125197_)))
                       (__tmp128851
                        (let () (declare (not safe)) (gx#stx-e _L125196_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128853
                    __tmp128852
                    __tmp128851)))
               _hd125153125191_
               _hd125150125183_
               _hd125147125175_)
              (let ()
                (declare (not safe))
                (_g125138125159_ _g125139125162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125138125159_
                                                 _g125139125162_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125138125159_ _g125139125162_)))))
                              (let ()
                                (declare (not safe))
                                (_g125138125159_ _g125139125162_)))))
                      (let ()
                        (declare (not safe))
                        (_g125138125159_ _g125139125162_))))))
          (declare (not safe))
          (_g125137125216_ _ann125136_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125051_ _ann125052_)
        (let* ((_g125054125075_
                (lambda (_g125055125072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125055125072_))))
               (_g125053125132_
                (lambda (_g125055125078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125055125078_))
                      (let ((_e125061125080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125055125078_))))
                        (let ((_hd125060125083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125061125080_)))
                              (_tl125059125085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125061125080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125059125085_))
                              (let ((_e125064125088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125059125085_))))
                                (let ((_hd125063125091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125064125088_)))
                                      (_tl125062125093_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125064125088_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125062125093_))
                                      (let ((_e125067125096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125062125093_))))
                                        (let ((_hd125066125099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125067125096_)))
                                              (_tl125065125101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125067125096_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125065125101_))
                                              (let ((_e125070125104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125065125101_))))
                                                (let ((_hd125069125107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125070125104_)))
                                                      (_tl125068125109_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125070125104_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125068125109_))
                                                      ((lambda (_L125112_
                                                                _L125113_
                                                                _L125114_)
                                                         (let ((__tmp128856
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125114_)))
                       (__tmp128855
                        (let () (declare (not safe)) (gx#stx-e _L125113_)))
                       (__tmp128854
                        (let () (declare (not safe)) (gx#stx-e _L125112_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128856
                    __tmp128855
                    __tmp128854)))
               _hd125069125107_
               _hd125066125099_
               _hd125063125091_)
              (let ()
                (declare (not safe))
                (_g125054125075_ _g125055125078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125054125075_
                                                 _g125055125078_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125054125075_ _g125055125078_)))))
                              (let ()
                                (declare (not safe))
                                (_g125054125075_ _g125055125078_)))))
                      (let ()
                        (declare (not safe))
                        (_g125054125075_ _g125055125078_))))))
          (declare (not safe))
          (_g125053125132_ _ann125052_))))
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
      (lambda (_stx124171_)
        (let* ((___stx127137127138_ _stx124171_)
               (_g124177124373_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127137127138_)))))
          (let ((___kont127139127140_
                 (lambda (_L125039_)
                   (let ((__obj128807
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128807
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125039_))
                      '#f)
                     __obj128807)))
                (___kont127141127142_
                 (lambda (_L124966_
                          _L124967_
                          _L124968_
                          _L124969_
                          _L124970_
                          _L124971_)
                   (let* ((_tab125021_
                           (let () (declare (not safe)) (gx#stx-e _L124968_)))
                          (_keys125023_
                           (if _tab125021_
                               (let ((__tmp128857 (vector->list _tab125021_)))
                                 (declare (not safe))
                                 (filter values __tmp128857))
                               '#f)))
                     (let ((__tmp128858
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124967_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125023_
                        __tmp128858)))))
                (___kont127143127144_
                 (lambda (_L124699_
                          _L124700_
                          _L124701_
                          _L124702_
                          _L124703_
                          _L124704_
                          _L124705_
                          _L124706_
                          _L124707_
                          _L124708_)
                   (let ((__tmp128860
                          (map gx#stx-e
                               (let ((__tmp128861
                                      (lambda (_g124801124804_ _g124802124806_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124801124804_
                                                _g124802124806_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128861 '() _L124701_))))
                         (__tmp128859
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124705_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128860
                      __tmp128859))))
                (___kont127147127148_
                 (lambda (_L124409_)
                   (let ((__obj128808
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128808
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124409_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124409_)))
                     __obj128808)))
                (___kont127149127150_
                 (lambda (_L124386_)
                   (let ((__obj128809
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128809
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124386_))
                      '#f)
                     __obj128809))))
            (let* ((___match127456127457_
                    (lambda (_e124364124401_ _hd124363124404_ _tl124362124406_)
                      (let ((_L124409_ _tl124362124406_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124409_))
                            (___kont127147127148_ _L124409_)
                            (___kont127149127150_ _tl124362124406_)))))
                   (___match127450127451_
                    (lambda (_e124258124423_
                             _hd124257124426_
                             _tl124256124428_
                             _e124261124431_
                             _hd124260124434_
                             _tl124259124436_
                             _e124264124439_
                             _hd124263124442_
                             _tl124262124444_
                             _e124267124447_
                             _hd124266124450_
                             _tl124265124452_
                             _e124270124455_
                             _hd124269124458_
                             _tl124268124460_
                             _e124273124463_
                             _hd124272124466_
                             _tl124271124468_
                             _e124276124471_
                             _hd124275124474_
                             _tl124274124476_
                             _e124279124479_
                             _hd124278124482_
                             _tl124277124484_
                             _e124282124487_
                             _hd124281124490_
                             _tl124280124492_
                             _e124285124495_
                             _hd124284124498_
                             _tl124283124500_
                             _e124288124503_
                             _hd124287124506_
                             _tl124286124508_
                             _e124291124511_
                             _hd124290124514_
                             _tl124289124516_
                             _e124294124519_
                             _hd124293124522_
                             _tl124292124524_
                             _e124297124527_
                             _hd124296124530_
                             _tl124295124532_
                             ___splice127145127146_
                             _target124298124535_
                             _tl124300124537_
                             _e124315124540_
                             _hd124314124543_
                             _tl124313124545_
                             _e124318124548_
                             _hd124317124551_
                             _tl124316124553_
                             _e124321124556_
                             _hd124320124559_
                             _tl124319124561_)
                      (letrec ((_loop124301124564_
                                (lambda (_hd124299124567_
                                         _-absent-value124305124569_
                                         _key124306124571_
                                         _-xkwvar124307124573_
                                         _-hash-ref124308124575_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124299124567_))
                                      (let ((_e124302124578_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124299124567_))))
                                        (let ((_lp-tl124304124583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124302124578_)))
                                              (_lp-hd124303124581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124302124578_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124303124581_))
                                              (let ((_e124324124586_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124303124581_))))
                                                (let ((_tl124322124591_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124324124586_)))
                                                      (_hd124323124589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124324124586_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124323124589_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124323124589_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124322124591_))
                      (let ((_e124327124594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124322124591_))))
                        (let ((_tl124325124599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124327124594_)))
                              (_hd124326124597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124327124594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124326124597_))
                              (let ((_e124330124602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124326124597_))))
                                (let ((_tl124328124607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124330124602_)))
                                      (_hd124329124605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124330124602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124329124605_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124329124605_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124328124607_))
                                              (let ((_e124333124610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124328124607_))))
                                                (let ((_tl124331124615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124333124610_)))
                                                      (_hd124332124613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124333124610_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124331124615_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124325124599_))
                                                          (let ((_e124336124618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124325124599_))))
                    (let ((_tl124334124623_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124336124618_)))
                          (_hd124335124621_
                           (let ()
                             (declare (not safe))
                             (##car _e124336124618_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124335124621_))
                          (let ((_e124339124626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124335124621_))))
                            (let ((_tl124337124631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124339124626_)))
                                  (_hd124338124629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124339124626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124338124629_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124338124629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124337124631_))
                                          (let ((_e124342124634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124337124631_))))
                                            (let ((_tl124340124639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124342124634_)))
                                                  (_hd124341124637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124342124634_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124340124639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124334124623_))
                                                      (let ((_e124345124642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124334124623_))))
                (let ((_tl124343124647_
                       (let () (declare (not safe)) (##cdr _e124345124642_)))
                      (_hd124344124645_
                       (let () (declare (not safe)) (##car _e124345124642_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124344124645_))
                      (let ((_e124348124650_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124344124645_))))
                        (let ((_tl124346124655_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124348124650_)))
                              (_hd124347124653_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124348124650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124347124653_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124347124653_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124346124655_))
                                      (let ((_e124351124658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124346124655_))))
                                        (let ((_tl124349124663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124351124658_)))
                                              (_hd124350124661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124351124658_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124349124663_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124343124647_))
                                                  (let ((_e124354124666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124343124647_))))
                                                    (let ((_tl124352124671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124354124666_)))
                                                          (_hd124353124669_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124354124666_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124353124669_))
                                                          (let ((_e124357124674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124353124669_))))
                    (let ((_tl124355124679_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124357124674_)))
                          (_hd124356124677_
                           (let ()
                             (declare (not safe))
                             (##car _e124357124674_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124356124677_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124356124677_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124355124679_))
                                  (let ((_e124360124682_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124355124679_))))
                                    (let ((_tl124358124687_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124360124682_)))
                                          (_hd124359124685_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124360124682_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124358124687_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124352124671_))
                                              (let ((__tmp128876
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124359124685_
                                                             _-absent-value124305124569_)))
                                                    (__tmp128875
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124350124661_
                                                             _key124306124571_)))
                                                    (__tmp128874
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124341124637_
                                                             _-xkwvar124307124573_)))
                                                    (__tmp128873
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124332124613_
                                                             _-hash-ref124308124575_))))
                                                (declare (not safe))
                                                (_loop124301124564_
                                                 _lp-tl124304124583_
                                                 __tmp128876
                                                 __tmp128875
                                                 __tmp128874
                                                 __tmp128873))
                                              (___match127456127457_
                                               _e124258124423_
                                               _hd124257124426_
                                               _tl124256124428_))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))
                              (___match127456127457_
                               _e124258124423_
                               _hd124257124426_
                               _tl124256124428_))
                          (___match127456127457_
                           _e124258124423_
                           _hd124257124426_
                           _tl124256124428_))))
                  (___match127456127457_
                   _e124258124423_
                   _hd124257124426_
                   _tl124256124428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))
                                              (___match127456127457_
                                               _e124258124423_
                                               _hd124257124426_
                                               _tl124256124428_))))
                                      (___match127456127457_
                                       _e124258124423_
                                       _hd124257124426_
                                       _tl124256124428_))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))
                              (___match127456127457_
                               _e124258124423_
                               _hd124257124426_
                               _tl124256124428_))))
                      (___match127456127457_
                       _e124258124423_
                       _hd124257124426_
                       _tl124256124428_))))
              (___match127456127457_
               _e124258124423_
               _hd124257124426_
               _tl124256124428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))
                                      (___match127456127457_
                                       _e124258124423_
                                       _hd124257124426_
                                       _tl124256124428_))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))))
                          (___match127456127457_
                           _e124258124423_
                           _hd124257124426_
                           _tl124256124428_))))
                  (___match127456127457_
                   _e124258124423_
                   _hd124257124426_
                   _tl124256124428_))
              (___match127456127457_
               _e124258124423_
               _hd124257124426_
               _tl124256124428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127456127457_
                                               _e124258124423_
                                               _hd124257124426_
                                               _tl124256124428_))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))
                                      (___match127456127457_
                                       _e124258124423_
                                       _hd124257124426_
                                       _tl124256124428_))))
                              (___match127456127457_
                               _e124258124423_
                               _hd124257124426_
                               _tl124256124428_))))
                      (___match127456127457_
                       _e124258124423_
                       _hd124257124426_
                       _tl124256124428_))
                  (___match127456127457_
                   _e124258124423_
                   _hd124257124426_
                   _tl124256124428_))
              (___match127456127457_
               _e124258124423_
               _hd124257124426_
               _tl124256124428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127456127457_
                                               _e124258124423_
                                               _hd124257124426_
                                               _tl124256124428_))))
                                      (let ((_-hash-ref124312124696_
                                             (reverse _-hash-ref124308124575_))
                                            (_-xkwvar124311124694_
                                             (reverse _-xkwvar124307124573_))
                                            (_key124310124692_
                                             (reverse _key124306124571_))
                                            (_-absent-value124309124690_
                                             (reverse _-absent-value124305124569_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124265124452_))
                                            (let ((_L124699_ _hd124320124559_)
                                                  (_L124700_
                                                   _-absent-value124309124690_)
                                                  (_L124701_ _key124310124692_)
                                                  (_L124702_
                                                   _-xkwvar124311124694_)
                                                  (_L124703_
                                                   _-hash-ref124312124696_)
                                                  (_L124704_ _hd124296124530_)
                                                  (_L124705_ _hd124287124506_)
                                                  (_L124706_ _hd124278124482_)
                                                  (_L124707_ _tl124262124444_)
                                                  (_L124708_ _hd124263124442_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124708_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124707_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124706_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124708_
                                                          _L124704_))
                                                       (let ((__tmp128871
                                                              (let ((__tmp128872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124761124764_ _g124762124766_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124761124764_ _g124762124766_)))))
                        (declare (not safe))
                        (foldr1 __tmp128872 '() _L124701_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128871))
               (let ((__tmp128870
                      (lambda (_g124768124770_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124768124770_
                           'hash-ref))))
                     (__tmp128868
                      (let ((__tmp128869
                             (lambda (_g124772124775_ _g124773124777_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124772124775_ _g124773124777_)))))
                        (declare (not safe))
                        (foldr1 __tmp128869 '() _L124703_))))
                 (declare (not safe))
                 (andmap1 __tmp128870 __tmp128868))
               (let ((__tmp128867
                      (lambda (_g124779124781_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124779124781_
                           'absent-value))))
                     (__tmp128865
                      (let ((__tmp128866
                             (lambda (_g124783124786_ _g124784124788_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124783124786_ _g124784124788_)))))
                        (declare (not safe))
                        (foldr1 __tmp128866 '() _L124700_))))
                 (declare (not safe))
                 (andmap1 __tmp128867 __tmp128865))
               (let ((__tmp128864
                      (lambda (_g124790124792_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124790124792_ _L124708_))))
                     (__tmp128862
                      (let ((__tmp128863
                             (lambda (_g124794124797_ _g124795124799_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124794124797_ _g124795124799_)))))
                        (declare (not safe))
                        (foldr1 __tmp128863 '() _L124702_))))
                 (declare (not safe))
                 (andmap1 __tmp128864 __tmp128862)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127143127144_
                                                   _L124699_
                                                   _L124700_
                                                   _L124701_
                                                   _L124702_
                                                   _L124703_
                                                   _L124704_
                                                   _L124705_
                                                   _L124706_
                                                   _L124707_
                                                   _L124708_)
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_)))
                                            (___match127456127457_
                                             _e124258124423_
                                             _hd124257124426_
                                             _tl124256124428_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124301124564_
                           _target124298124535_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127322127323_
                    (lambda (_e124258124423_
                             _hd124257124426_
                             _tl124256124428_
                             _e124261124431_
                             _hd124260124434_
                             _tl124259124436_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124260124434_))
                          (let ((_e124264124439_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124260124434_))))
                            (let ((_tl124262124444_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124264124439_)))
                                  (_hd124263124442_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124264124439_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124259124436_))
                                  (let ((_e124267124447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124259124436_))))
                                    (let ((_tl124265124452_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124267124447_)))
                                          (_hd124266124450_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124267124447_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124266124450_))
                                          (let ((_e124270124455_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124266124450_))))
                                            (let ((_tl124268124460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124270124455_)))
                                                  (_hd124269124458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124270124455_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124269124458_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124269124458_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124268124460_))
                                                          (let ((_e124273124463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124268124460_))))
                    (let ((_tl124271124468_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124273124463_)))
                          (_hd124272124466_
                           (let ()
                             (declare (not safe))
                             (##car _e124273124463_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124272124466_))
                          (let ((_e124276124471_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124272124466_))))
                            (let ((_tl124274124476_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124276124471_)))
                                  (_hd124275124474_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124276124471_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124275124474_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124275124474_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124274124476_))
                                          (let ((_e124279124479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124274124476_))))
                                            (let ((_tl124277124484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124279124479_)))
                                                  (_hd124278124482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124279124479_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124277124484_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124271124468_))
                                                      (let ((_e124282124487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124271124468_))))
                (let ((_tl124280124492_
                       (let () (declare (not safe)) (##cdr _e124282124487_)))
                      (_hd124281124490_
                       (let () (declare (not safe)) (##car _e124282124487_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124281124490_))
                      (let ((_e124285124495_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124281124490_))))
                        (let ((_tl124283124500_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124285124495_)))
                              (_hd124284124498_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124285124495_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124284124498_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124284124498_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124283124500_))
                                      (let ((_e124288124503_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124283124500_))))
                                        (let ((_tl124286124508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124288124503_)))
                                              (_hd124287124506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124288124503_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124286124508_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124280124492_))
                                                  (let ((_e124291124511_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124280124492_))))
                                                    (let ((_tl124289124516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124291124511_)))
                                                          (_hd124290124514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124291124511_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124290124514_))
                                                          (let ((_e124294124519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124290124514_))))
                    (let ((_tl124292124524_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124294124519_)))
                          (_hd124293124522_
                           (let ()
                             (declare (not safe))
                             (##car _e124294124519_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124293124522_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124293124522_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124292124524_))
                                  (let ((_e124297124527_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124292124524_))))
                                    (let ((_tl124295124532_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124297124527_)))
                                          (_hd124296124530_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124297124527_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124295124532_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124289124516_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124289124516_))
                                                        '1)
                                                  (let ((___splice127145127146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124289124516_
                                                            '1))))
                                                    (let ((_tl124300124537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127145127146_
                                                              '1)))
                                                          (_target124298124535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127145127146_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124300124537_))
                                                          (let ((_e124315124540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124300124537_))))
                    (let ((_tl124313124545_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124315124540_)))
                          (_hd124314124543_
                           (let ()
                             (declare (not safe))
                             (##car _e124315124540_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124314124543_))
                          (let ((_e124318124548_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124314124543_))))
                            (let ((_tl124316124553_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124318124548_)))
                                  (_hd124317124551_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124318124548_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124317124551_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124317124551_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124316124553_))
                                          (let ((_e124321124556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124316124553_))))
                                            (let ((_tl124319124561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124321124556_)))
                                                  (_hd124320124559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124321124556_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124319124561_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124313124545_))
                                                      (___match127450127451_
                                                       _e124258124423_
                                                       _hd124257124426_
                                                       _tl124256124428_
                                                       _e124261124431_
                                                       _hd124260124434_
                                                       _tl124259124436_
                                                       _e124264124439_
                                                       _hd124263124442_
                                                       _tl124262124444_
                                                       _e124267124447_
                                                       _hd124266124450_
                                                       _tl124265124452_
                                                       _e124270124455_
                                                       _hd124269124458_
                                                       _tl124268124460_
                                                       _e124273124463_
                                                       _hd124272124466_
                                                       _tl124271124468_
                                                       _e124276124471_
                                                       _hd124275124474_
                                                       _tl124274124476_
                                                       _e124279124479_
                                                       _hd124278124482_
                                                       _tl124277124484_
                                                       _e124282124487_
                                                       _hd124281124490_
                                                       _tl124280124492_
                                                       _e124285124495_
                                                       _hd124284124498_
                                                       _tl124283124500_
                                                       _e124288124503_
                                                       _hd124287124506_
                                                       _tl124286124508_
                                                       _e124291124511_
                                                       _hd124290124514_
                                                       _tl124289124516_
                                                       _e124294124519_
                                                       _hd124293124522_
                                                       _tl124292124524_
                                                       _e124297124527_
                                                       _hd124296124530_
                                                       _tl124295124532_
                                                       ___splice127145127146_
                                                       _target124298124535_
                                                       _tl124300124537_
                                                       _e124315124540_
                                                       _hd124314124543_
                                                       _tl124313124545_
                                                       _e124318124548_
                                                       _hd124317124551_
                                                       _tl124316124553_
                                                       _e124321124556_
                                                       _hd124320124559_
                                                       _tl124319124561_)
                                                      (___match127456127457_
                                                       _e124258124423_
                                                       _hd124257124426_
                                                       _tl124256124428_))
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))
                                      (___match127456127457_
                                       _e124258124423_
                                       _hd124257124426_
                                       _tl124256124428_))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))))
                          (___match127456127457_
                           _e124258124423_
                           _hd124257124426_
                           _tl124256124428_))))
                  (___match127456127457_
                   _e124258124423_
                   _hd124257124426_
                   _tl124256124428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))
                                              (___match127456127457_
                                               _e124258124423_
                                               _hd124257124426_
                                               _tl124256124428_))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))
                              (___match127456127457_
                               _e124258124423_
                               _hd124257124426_
                               _tl124256124428_))
                          (___match127456127457_
                           _e124258124423_
                           _hd124257124426_
                           _tl124256124428_))))
                  (___match127456127457_
                   _e124258124423_
                   _hd124257124426_
                   _tl124256124428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))
                                              (___match127456127457_
                                               _e124258124423_
                                               _hd124257124426_
                                               _tl124256124428_))))
                                      (___match127456127457_
                                       _e124258124423_
                                       _hd124257124426_
                                       _tl124256124428_))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))
                              (___match127456127457_
                               _e124258124423_
                               _hd124257124426_
                               _tl124256124428_))))
                      (___match127456127457_
                       _e124258124423_
                       _hd124257124426_
                       _tl124256124428_))))
              (___match127456127457_
               _e124258124423_
               _hd124257124426_
               _tl124256124428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))
                                      (___match127456127457_
                                       _e124258124423_
                                       _hd124257124426_
                                       _tl124256124428_))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))))
                          (___match127456127457_
                           _e124258124423_
                           _hd124257124426_
                           _tl124256124428_))))
                  (___match127456127457_
                   _e124258124423_
                   _hd124257124426_
                   _tl124256124428_))
              (___match127456127457_
               _e124258124423_
               _hd124257124426_
               _tl124256124428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127456127457_
                                                   _e124258124423_
                                                   _hd124257124426_
                                                   _tl124256124428_))))
                                          (___match127456127457_
                                           _e124258124423_
                                           _hd124257124426_
                                           _tl124256124428_))))
                                  (___match127456127457_
                                   _e124258124423_
                                   _hd124257124426_
                                   _tl124256124428_))))
                          (___match127456127457_
                           _e124258124423_
                           _hd124257124426_
                           _tl124256124428_))))
                   (___match127310127311_
                    (lambda (_e124191124814_
                             _hd124190124817_
                             _tl124189124819_
                             _e124194124822_
                             _hd124193124825_
                             _tl124192124827_
                             _e124197124830_
                             _hd124196124833_
                             _tl124195124835_
                             _e124200124838_
                             _hd124199124841_
                             _tl124198124843_
                             _e124203124846_
                             _hd124202124849_
                             _tl124201124851_
                             _e124206124854_
                             _hd124205124857_
                             _tl124204124859_
                             _e124209124862_
                             _hd124208124865_
                             _tl124207124867_
                             _e124212124870_
                             _hd124211124873_
                             _tl124210124875_
                             _e124215124878_
                             _hd124214124881_
                             _tl124213124883_
                             _e124218124886_
                             _hd124217124889_
                             _tl124216124891_
                             _e124221124894_
                             _hd124220124897_
                             _tl124219124899_
                             _e124224124902_
                             _hd124223124905_
                             _tl124222124907_
                             _e124227124910_
                             _hd124226124913_
                             _tl124225124915_
                             _e124230124918_
                             _hd124229124921_
                             _tl124228124923_
                             _e124233124926_
                             _hd124232124929_
                             _tl124231124931_
                             _e124236124934_
                             _hd124235124937_
                             _tl124234124939_
                             _e124239124942_
                             _hd124238124945_
                             _tl124237124947_
                             _e124242124950_
                             _hd124241124953_
                             _tl124240124955_
                             _e124245124958_
                             _hd124244124961_
                             _tl124243124963_)
                      (let ((_L124966_ _hd124244124961_)
                            (_L124967_ _hd124235124937_)
                            (_L124968_ _hd124226124913_)
                            (_L124969_ _hd124217124889_)
                            (_L124970_ _hd124208124865_)
                            (_L124971_ _hd124193124825_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124971_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124970_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124969_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124971_ _L124966_)))
                            (___kont127141127142_
                             _L124966_
                             _L124967_
                             _L124968_
                             _L124969_
                             _L124970_
                             _L124971_)
                            (___match127322127323_
                             _e124191124814_
                             _hd124190124817_
                             _tl124189124819_
                             _e124194124822_
                             _hd124193124825_
                             _tl124192124827_)))))
                   (___match127164127165_
                    (lambda (_e124191124814_ _hd124190124817_ _tl124189124819_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124189124819_))
                          (let ((_e124194124822_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124189124819_))))
                            (let ((_tl124192124827_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124194124822_)))
                                  (_hd124193124825_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124194124822_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124192124827_))
                                  (let ((_e124197124830_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124192124827_))))
                                    (let ((_tl124195124835_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124197124830_)))
                                          (_hd124196124833_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124197124830_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124196124833_))
                                          (let ((_e124200124838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124196124833_))))
                                            (let ((_tl124198124843_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124200124838_)))
                                                  (_hd124199124841_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124200124838_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124199124841_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124199124841_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124198124843_))
                                                          (let ((_e124203124846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124198124843_))))
                    (let ((_tl124201124851_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124203124846_)))
                          (_hd124202124849_
                           (let ()
                             (declare (not safe))
                             (##car _e124203124846_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124202124849_))
                          (let ((_e124206124854_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124202124849_))))
                            (let ((_tl124204124859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124206124854_)))
                                  (_hd124205124857_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124206124854_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124205124857_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124205124857_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124204124859_))
                                          (let ((_e124209124862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124204124859_))))
                                            (let ((_tl124207124867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124209124862_)))
                                                  (_hd124208124865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124209124862_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124207124867_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124201124851_))
                                                      (let ((_e124212124870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124201124851_))))
                (let ((_tl124210124875_
                       (let () (declare (not safe)) (##cdr _e124212124870_)))
                      (_hd124211124873_
                       (let () (declare (not safe)) (##car _e124212124870_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124211124873_))
                      (let ((_e124215124878_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124211124873_))))
                        (let ((_tl124213124883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124215124878_)))
                              (_hd124214124881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124215124878_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124214124881_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124214124881_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124213124883_))
                                      (let ((_e124218124886_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124213124883_))))
                                        (let ((_tl124216124891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124218124886_)))
                                              (_hd124217124889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124218124886_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124216124891_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124210124875_))
                                                  (let ((_e124221124894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124210124875_))))
                                                    (let ((_tl124219124899_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124221124894_)))
                                                          (_hd124220124897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124221124894_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124220124897_))
                                                          (let ((_e124224124902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124220124897_))))
                    (let ((_tl124222124907_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124224124902_)))
                          (_hd124223124905_
                           (let ()
                             (declare (not safe))
                             (##car _e124224124902_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124223124905_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124223124905_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124222124907_))
                                  (let ((_e124227124910_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124222124907_))))
                                    (let ((_tl124225124915_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124227124910_)))
                                          (_hd124226124913_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124227124910_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124225124915_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124219124899_))
                                              (let ((_e124230124918_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124219124899_))))
                                                (let ((_tl124228124923_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124230124918_)))
                                                      (_hd124229124921_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124230124918_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124229124921_))
                                                      (let ((_e124233124926_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124229124921_))))
                (let ((_tl124231124931_
                       (let () (declare (not safe)) (##cdr _e124233124926_)))
                      (_hd124232124929_
                       (let () (declare (not safe)) (##car _e124233124926_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124232124929_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124232124929_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124231124931_))
                              (let ((_e124236124934_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124231124931_))))
                                (let ((_tl124234124939_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124236124934_)))
                                      (_hd124235124937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124236124934_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124234124939_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124228124923_))
                                          (let ((_e124239124942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124228124923_))))
                                            (let ((_tl124237124947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124239124942_)))
                                                  (_hd124238124945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124239124942_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124238124945_))
                                                  (let ((_e124242124950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124238124945_))))
                                                    (let ((_tl124240124955_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124242124950_)))
                                                          (_hd124241124953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124242124950_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124241124953_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124241124953_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124240124955_))
                          (let ((_e124245124958_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124240124955_))))
                            (let ((_tl124243124963_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124245124958_)))
                                  (_hd124244124961_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124245124958_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124243124963_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124237124947_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124195124835_))
                                          (___match127310127311_
                                           _e124191124814_
                                           _hd124190124817_
                                           _tl124189124819_
                                           _e124194124822_
                                           _hd124193124825_
                                           _tl124192124827_
                                           _e124197124830_
                                           _hd124196124833_
                                           _tl124195124835_
                                           _e124200124838_
                                           _hd124199124841_
                                           _tl124198124843_
                                           _e124203124846_
                                           _hd124202124849_
                                           _tl124201124851_
                                           _e124206124854_
                                           _hd124205124857_
                                           _tl124204124859_
                                           _e124209124862_
                                           _hd124208124865_
                                           _tl124207124867_
                                           _e124212124870_
                                           _hd124211124873_
                                           _tl124210124875_
                                           _e124215124878_
                                           _hd124214124881_
                                           _tl124213124883_
                                           _e124218124886_
                                           _hd124217124889_
                                           _tl124216124891_
                                           _e124221124894_
                                           _hd124220124897_
                                           _tl124219124899_
                                           _e124224124902_
                                           _hd124223124905_
                                           _tl124222124907_
                                           _e124227124910_
                                           _hd124226124913_
                                           _tl124225124915_
                                           _e124230124918_
                                           _hd124229124921_
                                           _tl124228124923_
                                           _e124233124926_
                                           _hd124232124929_
                                           _tl124231124931_
                                           _e124236124934_
                                           _hd124235124937_
                                           _tl124234124939_
                                           _e124239124942_
                                           _hd124238124945_
                                           _tl124237124947_
                                           _e124242124950_
                                           _hd124241124953_
                                           _tl124240124955_
                                           _e124245124958_
                                           _hd124244124961_
                                           _tl124243124963_)
                                          (___match127322127323_
                                           _e124191124814_
                                           _hd124190124817_
                                           _tl124189124819_
                                           _e124194124822_
                                           _hd124193124825_
                                           _tl124192124827_))
                                      (___match127322127323_
                                       _e124191124814_
                                       _hd124190124817_
                                       _tl124189124819_
                                       _e124194124822_
                                       _hd124193124825_
                                       _tl124192124827_))
                                  (___match127322127323_
                                   _e124191124814_
                                   _hd124190124817_
                                   _tl124189124819_
                                   _e124194124822_
                                   _hd124193124825_
                                   _tl124192124827_))))
                          (___match127322127323_
                           _e124191124814_
                           _hd124190124817_
                           _tl124189124819_
                           _e124194124822_
                           _hd124193124825_
                           _tl124192124827_))
                      (___match127322127323_
                       _e124191124814_
                       _hd124190124817_
                       _tl124189124819_
                       _e124194124822_
                       _hd124193124825_
                       _tl124192124827_))
                  (___match127322127323_
                   _e124191124814_
                   _hd124190124817_
                   _tl124189124819_
                   _e124194124822_
                   _hd124193124825_
                   _tl124192124827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127322127323_
                                                   _e124191124814_
                                                   _hd124190124817_
                                                   _tl124189124819_
                                                   _e124194124822_
                                                   _hd124193124825_
                                                   _tl124192124827_))))
                                          (___match127322127323_
                                           _e124191124814_
                                           _hd124190124817_
                                           _tl124189124819_
                                           _e124194124822_
                                           _hd124193124825_
                                           _tl124192124827_))
                                      (___match127322127323_
                                       _e124191124814_
                                       _hd124190124817_
                                       _tl124189124819_
                                       _e124194124822_
                                       _hd124193124825_
                                       _tl124192124827_))))
                              (___match127322127323_
                               _e124191124814_
                               _hd124190124817_
                               _tl124189124819_
                               _e124194124822_
                               _hd124193124825_
                               _tl124192124827_))
                          (___match127322127323_
                           _e124191124814_
                           _hd124190124817_
                           _tl124189124819_
                           _e124194124822_
                           _hd124193124825_
                           _tl124192124827_))
                      (___match127322127323_
                       _e124191124814_
                       _hd124190124817_
                       _tl124189124819_
                       _e124194124822_
                       _hd124193124825_
                       _tl124192124827_))))
              (___match127322127323_
               _e124191124814_
               _hd124190124817_
               _tl124189124819_
               _e124194124822_
               _hd124193124825_
               _tl124192124827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127322127323_
                                               _e124191124814_
                                               _hd124190124817_
                                               _tl124189124819_
                                               _e124194124822_
                                               _hd124193124825_
                                               _tl124192124827_))
                                          (___match127322127323_
                                           _e124191124814_
                                           _hd124190124817_
                                           _tl124189124819_
                                           _e124194124822_
                                           _hd124193124825_
                                           _tl124192124827_))))
                                  (___match127322127323_
                                   _e124191124814_
                                   _hd124190124817_
                                   _tl124189124819_
                                   _e124194124822_
                                   _hd124193124825_
                                   _tl124192124827_))
                              (___match127322127323_
                               _e124191124814_
                               _hd124190124817_
                               _tl124189124819_
                               _e124194124822_
                               _hd124193124825_
                               _tl124192124827_))
                          (___match127322127323_
                           _e124191124814_
                           _hd124190124817_
                           _tl124189124819_
                           _e124194124822_
                           _hd124193124825_
                           _tl124192124827_))))
                  (___match127322127323_
                   _e124191124814_
                   _hd124190124817_
                   _tl124189124819_
                   _e124194124822_
                   _hd124193124825_
                   _tl124192124827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127322127323_
                                                   _e124191124814_
                                                   _hd124190124817_
                                                   _tl124189124819_
                                                   _e124194124822_
                                                   _hd124193124825_
                                                   _tl124192124827_))
                                              (___match127322127323_
                                               _e124191124814_
                                               _hd124190124817_
                                               _tl124189124819_
                                               _e124194124822_
                                               _hd124193124825_
                                               _tl124192124827_))))
                                      (___match127322127323_
                                       _e124191124814_
                                       _hd124190124817_
                                       _tl124189124819_
                                       _e124194124822_
                                       _hd124193124825_
                                       _tl124192124827_))
                                  (___match127322127323_
                                   _e124191124814_
                                   _hd124190124817_
                                   _tl124189124819_
                                   _e124194124822_
                                   _hd124193124825_
                                   _tl124192124827_))
                              (___match127322127323_
                               _e124191124814_
                               _hd124190124817_
                               _tl124189124819_
                               _e124194124822_
                               _hd124193124825_
                               _tl124192124827_))))
                      (___match127322127323_
                       _e124191124814_
                       _hd124190124817_
                       _tl124189124819_
                       _e124194124822_
                       _hd124193124825_
                       _tl124192124827_))))
              (___match127322127323_
               _e124191124814_
               _hd124190124817_
               _tl124189124819_
               _e124194124822_
               _hd124193124825_
               _tl124192124827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127322127323_
                                                   _e124191124814_
                                                   _hd124190124817_
                                                   _tl124189124819_
                                                   _e124194124822_
                                                   _hd124193124825_
                                                   _tl124192124827_))))
                                          (___match127322127323_
                                           _e124191124814_
                                           _hd124190124817_
                                           _tl124189124819_
                                           _e124194124822_
                                           _hd124193124825_
                                           _tl124192124827_))
                                      (___match127322127323_
                                       _e124191124814_
                                       _hd124190124817_
                                       _tl124189124819_
                                       _e124194124822_
                                       _hd124193124825_
                                       _tl124192124827_))
                                  (___match127322127323_
                                   _e124191124814_
                                   _hd124190124817_
                                   _tl124189124819_
                                   _e124194124822_
                                   _hd124193124825_
                                   _tl124192124827_))))
                          (___match127322127323_
                           _e124191124814_
                           _hd124190124817_
                           _tl124189124819_
                           _e124194124822_
                           _hd124193124825_
                           _tl124192124827_))))
                  (___match127322127323_
                   _e124191124814_
                   _hd124190124817_
                   _tl124189124819_
                   _e124194124822_
                   _hd124193124825_
                   _tl124192124827_))
              (___match127322127323_
               _e124191124814_
               _hd124190124817_
               _tl124189124819_
               _e124194124822_
               _hd124193124825_
               _tl124192124827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127322127323_
                                                   _e124191124814_
                                                   _hd124190124817_
                                                   _tl124189124819_
                                                   _e124194124822_
                                                   _hd124193124825_
                                                   _tl124192124827_))))
                                          (___match127322127323_
                                           _e124191124814_
                                           _hd124190124817_
                                           _tl124189124819_
                                           _e124194124822_
                                           _hd124193124825_
                                           _tl124192124827_))))
                                  (___match127322127323_
                                   _e124191124814_
                                   _hd124190124817_
                                   _tl124189124819_
                                   _e124194124822_
                                   _hd124193124825_
                                   _tl124192124827_))))
                          (___match127456127457_
                           _e124191124814_
                           _hd124190124817_
                           _tl124189124819_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127137127138_))
                  (let ((_e124182125031_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127137127138_))))
                    (let ((_tl124180125036_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124182125031_)))
                          (_hd124181125034_
                           (let ()
                             (declare (not safe))
                             (##car _e124182125031_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125039_ _tl124180125036_))
                            (___kont127139127140_ _L125039_))
                          (___match127164127165_
                           _e124182125031_
                           _hd124181125034_
                           _tl124180125036_))))
                  (let () (declare (not safe)) (_g124177124373_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx124126_)
        (letrec ((_clause-e124128_
                  (lambda (_form124169_)
                    (let ((__obj128810
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
                       __obj128810
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124169_))
                       (if (let ((__tmp128877
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128877))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124169_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124169_))
                               '#f)
                           '#f))
                      __obj128810))))
          (let* ((_g124130124140_
                  (lambda (_g124131124137_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124131124137_))))
                 (_g124129124166_
                  (lambda (_g124131124143_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124131124143_))
                        (let ((_e124135124145_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124131124143_))))
                          (let ((_hd124134124148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124135124145_)))
                                (_tl124133124150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124135124145_))))
                            ((lambda (_L124153_)
                               (let ((_clauses124164_
                                      (map _clause-e124128_ _L124153_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124164_)))
                             _tl124133124150_)))
                        (let ()
                          (declare (not safe))
                          (_g124130124140_ _g124131124143_))))))
            (declare (not safe))
            (_g124129124166_ _stx124126_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx124058_)
        (let* ((_g124060124077_
                (lambda (_g124061124074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124061124074_))))
               (_g124059124123_
                (lambda (_g124061124080_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124061124080_))
                      (let ((_e124066124082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124061124080_))))
                        (let ((_hd124065124085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124066124082_)))
                              (_tl124064124087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124066124082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124064124087_))
                              (let ((_e124069124090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124064124087_))))
                                (let ((_hd124068124093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124069124090_)))
                                      (_tl124067124095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124069124090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124067124095_))
                                      (let ((_e124072124098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124067124095_))))
                                        (let ((_hd124071124101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124072124098_)))
                                              (_tl124070124103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124072124098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124070124103_))
                                              ((lambda (_L124106_ _L124107_)
                                                 (let ((__tmp128878
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L124106_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128878
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124071124101_
                                               _hd124068124093_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124060124077_
                                                 _g124061124080_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124060124077_ _g124061124080_)))))
                              (let ()
                                (declare (not safe))
                                (_g124060124077_ _g124061124080_)))))
                      (let ()
                        (declare (not safe))
                        (_g124060124077_ _g124061124080_))))))
          (declare (not safe))
          (_g124059124123_ _stx124058_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123963_)
        (let* ((___stx127465127466_ _stx123963_)
               (_g123966123986_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127465127466_)))))
          (let ((___kont127467127468_
                 (lambda (_L124030_ _L124031_)
                   (let ((_type-e124048124050_
                          (let ((__tmp128879
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124031_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128879))))
                     (if _type-e124048124050_
                         (let ((_type-e124053_ _type-e124048124050_))
                           (_type-e124053_ _stx123963_ _L124030_))
                         '#f))))
                (___kont127469127470_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127465127466_))
                (let ((_e123972123998_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127465127466_))))
                  (let ((_tl123970124003_
                         (let () (declare (not safe)) (##cdr _e123972123998_)))
                        (_hd123971124001_
                         (let ()
                           (declare (not safe))
                           (##car _e123972123998_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123970124003_))
                        (let ((_e123975124006_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123970124003_))))
                          (let ((_tl123973124011_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123975124006_)))
                                (_hd123974124009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123975124006_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123974124009_))
                                (let ((_e123978124014_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123974124009_))))
                                  (let ((_tl123976124019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123978124014_)))
                                        (_hd123977124017_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123978124014_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123977124017_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123977124017_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123976124019_))
                                                (let ((_e123981124022_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123976124019_))))
                                                  (let ((_tl123979124027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123981124022_)))
                                                        (_hd123980124025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123981124022_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123979124027_))
                                                        (___kont127467127468_
                                                         _tl123973124011_
                                                         _hd123980124025_)
                                                        (___kont127469127470_))))
                                                (___kont127469127470_))
                                            (___kont127469127470_))
                                        (___kont127469127470_))))
                                (___kont127469127470_))))
                        (___kont127469127470_))))
                (___kont127469127470_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123912_)
        (let* ((_g123914123927_
                (lambda (_g123915123924_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123915123924_))))
               (_g123913123960_
                (lambda (_g123915123930_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123915123930_))
                      (let ((_e123919123932_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123915123930_))))
                        (let ((_hd123918123935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123919123932_)))
                              (_tl123917123937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123919123932_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123917123937_))
                              (let ((_e123922123940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123917123937_))))
                                (let ((_hd123921123943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123922123940_)))
                                      (_tl123920123945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123922123940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123920123945_))
                                      ((lambda (_L123948_)
                                         (let ((__tmp128880
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123948_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128880)))
                                       _hd123921123943_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123914123927_ _g123915123930_)))))
                              (let ()
                                (declare (not safe))
                                (_g123914123927_ _g123915123930_)))))
                      (let ()
                        (declare (not safe))
                        (_g123914123927_ _g123915123930_))))))
          (declare (not safe))
          (_g123913123960_ _stx123912_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123146_)
        (let* ((___stx127503127504_ _form123146_)
               (_g123151123308_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127503127504_)))))
          (let ((___kont127505127506_
                 (lambda (_L123832_ _L123833_ _L123834_) '#t))
                (___kont127511127512_
                 (lambda (_L123620_
                          _L123621_
                          _L123622_
                          _L123623_
                          _L123624_
                          _L123625_)
                   '#t))
                (___kont127517127518_
                 (lambda (_L123416_ _L123417_ _L123418_ _L123419_) '#t))
                (___kont127519127520_ (lambda () '#f)))
            (let* ((___match127644127645_
                    (lambda (_e123270123320_
                             _hd123269123323_
                             _tl123268123325_
                             _e123273123328_
                             _hd123272123331_
                             _tl123271123333_
                             _e123276123336_
                             _hd123275123339_
                             _tl123274123341_
                             _e123279123344_
                             _hd123278123347_
                             _tl123277123349_
                             _e123282123352_
                             _hd123281123355_
                             _tl123280123357_
                             _e123285123360_
                             _hd123284123363_
                             _tl123283123365_
                             _e123288123368_
                             _hd123287123371_
                             _tl123286123373_
                             _e123291123376_
                             _hd123290123379_
                             _tl123289123381_
                             _e123294123384_
                             _hd123293123387_
                             _tl123292123389_
                             _e123297123392_
                             _hd123296123395_
                             _tl123295123397_
                             _e123300123400_
                             _hd123299123403_
                             _tl123298123405_
                             _e123303123408_
                             _hd123302123411_
                             _tl123301123413_)
                      (let ((_L123416_ _hd123302123411_)
                            (_L123417_ _hd123293123387_)
                            (_L123418_ _hd123284123363_)
                            (_L123419_ _hd123269123323_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123419_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123418_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123419_ _L123416_))
                                 (let ((__tmp128881
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123417_
                                           _L123419_))))
                                   (declare (not safe))
                                   (not __tmp128881)))
                            (___kont127517127518_
                             _L123416_
                             _L123417_
                             _L123418_
                             _L123419_)
                            (___kont127519127520_)))))
                   (___match127616127617_
                    (lambda (_e123270123320_
                             _hd123269123323_
                             _tl123268123325_
                             _e123273123328_
                             _hd123272123331_
                             _tl123271123333_
                             _e123276123336_
                             _hd123275123339_
                             _tl123274123341_
                             _e123279123344_
                             _hd123278123347_
                             _tl123277123349_
                             _e123282123352_
                             _hd123281123355_
                             _tl123280123357_
                             _e123285123360_
                             _hd123284123363_
                             _tl123283123365_
                             _e123288123368_
                             _hd123287123371_
                             _tl123286123373_
                             _e123291123376_
                             _hd123290123379_
                             _tl123289123381_
                             _e123294123384_
                             _hd123293123387_
                             _tl123292123389_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123286123373_))
                          (let ((_e123297123392_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123286123373_))))
                            (let ((_tl123295123397_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123297123392_)))
                                  (_hd123296123395_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123297123392_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123296123395_))
                                  (let ((_e123300123400_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123296123395_))))
                                    (let ((_tl123298123405_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123300123400_)))
                                          (_hd123299123403_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123300123400_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123299123403_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123299123403_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123298123405_))
                                                  (let ((_e123303123408_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123298123405_))))
                                                    (let ((_tl123301123413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123303123408_)))
                                                          (_hd123302123411_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123303123408_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123301123413_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123295123397_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123271123333_))
                          (___match127644127645_
                           _e123270123320_
                           _hd123269123323_
                           _tl123268123325_
                           _e123273123328_
                           _hd123272123331_
                           _tl123271123333_
                           _e123276123336_
                           _hd123275123339_
                           _tl123274123341_
                           _e123279123344_
                           _hd123278123347_
                           _tl123277123349_
                           _e123282123352_
                           _hd123281123355_
                           _tl123280123357_
                           _e123285123360_
                           _hd123284123363_
                           _tl123283123365_
                           _e123288123368_
                           _hd123287123371_
                           _tl123286123373_
                           _e123291123376_
                           _hd123290123379_
                           _tl123289123381_
                           _e123294123384_
                           _hd123293123387_
                           _tl123292123389_
                           _e123297123392_
                           _hd123296123395_
                           _tl123295123397_
                           _e123300123400_
                           _hd123299123403_
                           _tl123298123405_
                           _e123303123408_
                           _hd123302123411_
                           _tl123301123413_)
                          (___kont127519127520_))
                      (___kont127519127520_))
                  (___kont127519127520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127519127520_))
                                              (___kont127519127520_))
                                          (___kont127519127520_))))
                                  (___kont127519127520_))))
                          (___kont127519127520_))))
                   (___match127546127547_
                    (lambda (_e123206123460_
                             _hd123205123463_
                             _tl123204123465_
                             ___splice127513127514_
                             _target123207123468_
                             _tl123209123470_)
                      (letrec ((_loop123210123473_
                                (lambda (_hd123208123476_ _arg123214123478_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123208123476_))
                                      (let ((_e123211123481_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123208123476_))))
                                        (let ((_lp-tl123213123486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123211123481_)))
                                              (_lp-hd123212123484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123211123481_))))
                                          (let ((__tmp128896
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123212123484_
                                                         _arg123214123478_))))
                                            (declare (not safe))
                                            (_loop123210123473_
                                             _lp-tl123213123486_
                                             __tmp128896))))
                                      (let ((_arg123215123489_
                                             (reverse _arg123214123478_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123204123465_))
                                            (let ((_e123218123492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123204123465_))))
                                              (let ((_tl123216123497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123218123492_)))
                                                    (_hd123217123495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123218123492_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123217123495_))
                                                    (let ((_e123221123500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123217123495_))))
                                                      (let ((_tl123219123505_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123221123500_)))
                    (_hd123220123503_
                     (let () (declare (not safe)) (##car _e123221123500_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123220123503_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123220123503_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123219123505_))
                            (let ((_e123224123508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123219123505_))))
                              (let ((_tl123222123513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123224123508_)))
                                    (_hd123223123511_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123224123508_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123223123511_))
                                    (let ((_e123227123516_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123223123511_))))
                                      (let ((_tl123225123521_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123227123516_)))
                                            (_hd123226123519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123227123516_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123226123519_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123226123519_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123225123521_))
                                                    (let ((_e123230123524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123225123521_))))
                                                      (let ((_tl123228123529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123230123524_)))
                    (_hd123229123527_
                     (let () (declare (not safe)) (##car _e123230123524_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123228123529_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123222123513_))
                        (let ((_e123233123532_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123222123513_))))
                          (let ((_tl123231123537_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123233123532_)))
                                (_hd123232123535_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123233123532_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123232123535_))
                                (let ((_e123236123540_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123232123535_))))
                                  (let ((_tl123234123545_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123236123540_)))
                                        (_hd123235123543_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123236123540_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123235123543_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123235123543_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123234123545_))
                                                (let ((_e123239123548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123234123545_))))
                                                  (let ((_tl123237123553_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123239123548_)))
                                                        (_hd123238123551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123239123548_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123237123553_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123231123537_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123231123537_))
                              '1)
                        (let ((___splice127515127516_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123231123537_
                                  '1))))
                          (let ((_tl123242123558_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127515127516_ '1)))
                                (_target123240123556_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127515127516_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123242123558_))
                                (let ((_e123251123561_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123242123558_))))
                                  (let ((_tl123249123566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123251123561_)))
                                        (_hd123250123564_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123251123561_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123250123564_))
                                        (let ((_e123254123569_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123250123564_))))
                                          (let ((_tl123252123574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123254123569_)))
                                                (_hd123253123572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123254123569_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123253123572_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123253123572_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123252123574_))
                                                        (let ((_e123257123577_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123252123574_))))
                  (let ((_tl123255123582_
                         (let () (declare (not safe)) (##cdr _e123257123577_)))
                        (_hd123256123580_
                         (let ()
                           (declare (not safe))
                           (##car _e123257123577_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123255123582_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123249123566_))
                            (letrec ((_loop123243123585_
                                      (lambda (_hd123241123588_
                                               _xarg123247123590_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123241123588_))
                                            (let ((_e123244123593_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123241123588_))))
                                              (let ((_lp-tl123246123598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123244123593_)))
                                                    (_lp-hd123245123596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123244123593_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123245123596_))
                                                    (let ((_e123260123601_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123245123596_))))
                                                      (let ((_tl123258123606_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123260123601_)))
                    (_hd123259123604_
                     (let () (declare (not safe)) (##car _e123260123601_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123259123604_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123259123604_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123258123606_))
                            (let ((_e123263123609_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123258123606_))))
                              (let ((_tl123261123614_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123263123609_)))
                                    (_hd123262123612_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123263123609_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123261123614_))
                                    (let ((__tmp128895
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123262123612_
                                                   _xarg123247123590_))))
                                      (declare (not safe))
                                      (_loop123243123585_
                                       _lp-tl123246123598_
                                       __tmp128895))
                                    (___match127616127617_
                                     _e123206123460_
                                     _hd123205123463_
                                     _tl123204123465_
                                     _e123218123492_
                                     _hd123217123495_
                                     _tl123216123497_
                                     _e123221123500_
                                     _hd123220123503_
                                     _tl123219123505_
                                     _e123224123508_
                                     _hd123223123511_
                                     _tl123222123513_
                                     _e123227123516_
                                     _hd123226123519_
                                     _tl123225123521_
                                     _e123230123524_
                                     _hd123229123527_
                                     _tl123228123529_
                                     _e123233123532_
                                     _hd123232123535_
                                     _tl123231123537_
                                     _e123236123540_
                                     _hd123235123543_
                                     _tl123234123545_
                                     _e123239123548_
                                     _hd123238123551_
                                     _tl123237123553_))))
                            (___match127616127617_
                             _e123206123460_
                             _hd123205123463_
                             _tl123204123465_
                             _e123218123492_
                             _hd123217123495_
                             _tl123216123497_
                             _e123221123500_
                             _hd123220123503_
                             _tl123219123505_
                             _e123224123508_
                             _hd123223123511_
                             _tl123222123513_
                             _e123227123516_
                             _hd123226123519_
                             _tl123225123521_
                             _e123230123524_
                             _hd123229123527_
                             _tl123228123529_
                             _e123233123532_
                             _hd123232123535_
                             _tl123231123537_
                             _e123236123540_
                             _hd123235123543_
                             _tl123234123545_
                             _e123239123548_
                             _hd123238123551_
                             _tl123237123553_))
                        (___match127616127617_
                         _e123206123460_
                         _hd123205123463_
                         _tl123204123465_
                         _e123218123492_
                         _hd123217123495_
                         _tl123216123497_
                         _e123221123500_
                         _hd123220123503_
                         _tl123219123505_
                         _e123224123508_
                         _hd123223123511_
                         _tl123222123513_
                         _e123227123516_
                         _hd123226123519_
                         _tl123225123521_
                         _e123230123524_
                         _hd123229123527_
                         _tl123228123529_
                         _e123233123532_
                         _hd123232123535_
                         _tl123231123537_
                         _e123236123540_
                         _hd123235123543_
                         _tl123234123545_
                         _e123239123548_
                         _hd123238123551_
                         _tl123237123553_))
                    (___match127616127617_
                     _e123206123460_
                     _hd123205123463_
                     _tl123204123465_
                     _e123218123492_
                     _hd123217123495_
                     _tl123216123497_
                     _e123221123500_
                     _hd123220123503_
                     _tl123219123505_
                     _e123224123508_
                     _hd123223123511_
                     _tl123222123513_
                     _e123227123516_
                     _hd123226123519_
                     _tl123225123521_
                     _e123230123524_
                     _hd123229123527_
                     _tl123228123529_
                     _e123233123532_
                     _hd123232123535_
                     _tl123231123537_
                     _e123236123540_
                     _hd123235123543_
                     _tl123234123545_
                     _e123239123548_
                     _hd123238123551_
                     _tl123237123553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127616127617_
                                                     _e123206123460_
                                                     _hd123205123463_
                                                     _tl123204123465_
                                                     _e123218123492_
                                                     _hd123217123495_
                                                     _tl123216123497_
                                                     _e123221123500_
                                                     _hd123220123503_
                                                     _tl123219123505_
                                                     _e123224123508_
                                                     _hd123223123511_
                                                     _tl123222123513_
                                                     _e123227123516_
                                                     _hd123226123519_
                                                     _tl123225123521_
                                                     _e123230123524_
                                                     _hd123229123527_
                                                     _tl123228123529_
                                                     _e123233123532_
                                                     _hd123232123535_
                                                     _tl123231123537_
                                                     _e123236123540_
                                                     _hd123235123543_
                                                     _tl123234123545_
                                                     _e123239123548_
                                                     _hd123238123551_
                                                     _tl123237123553_))))
                                            (let ((_xarg123248123617_
                                                   (reverse _xarg123247123590_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123216123497_))
                                                  (let ((_L123620_
                                                         _hd123256123580_)
                                                        (_L123621_
                                                         _xarg123248123617_)
                                                        (_L123622_
                                                         _hd123238123551_)
                                                        (_L123623_
                                                         _hd123229123527_)
                                                        (_L123624_
                                                         _tl123209123470_)
                                                        (_L123625_
                                                         _arg123215123489_))
                                                    (if (and (let ((__tmp128893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128894
                                   (lambda (_g123668123671_ _g123669123673_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123668123671_
                                             _g123669123673_)))))
                              (declare (not safe))
                              (foldr1 __tmp128894 '() _L123625_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128893))
                     (let () (declare (not safe)) (gx#identifier? _L123624_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123623_ 'apply))
                     (fx= (length (let ((__tmp128891
                                         (lambda (_g123675123678_
                                                  _g123676123680_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123675123678_
                                                   _g123676123680_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128891 '() _L123625_)))
                          (length (let ((__tmp128892
                                         (lambda (_g123682123685_
                                                  _g123683123687_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123682123685_
                                                   _g123683123687_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128892 '() _L123621_))))
                     (let ((__tmp128889
                            (let ((__tmp128890
                                   (lambda (_g123689123692_ _g123690123694_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123689123692_
                                             _g123690123694_)))))
                              (declare (not safe))
                              (foldr1 __tmp128890 '() _L123625_)))
                           (__tmp128887
                            (let ((__tmp128888
                                   (lambda (_g123696123699_ _g123697123701_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123696123699_
                                             _g123697123701_)))))
                              (declare (not safe))
                              (foldr1 __tmp128888 '() _L123621_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128889 __tmp128887))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123624_ _L123620_))
                     (let ((__tmp128882
                            (let ((__tmp128886
                                   (lambda (_g123703123705_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123703123705_
                                        _L123622_))))
                                  (__tmp128883
                                   (let ((__tmp128885
                                          (lambda (_g123707123710_
                                                   _g123708123712_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123707123710_
                                                    _g123708123712_))))
                                         (__tmp128884
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123624_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128885
                                             __tmp128884
                                             _L123625_))))
                              (declare (not safe))
                              (find __tmp128886 __tmp128883))))
                       (declare (not safe))
                       (not __tmp128882)))
                (___kont127511127512_
                 _L123620_
                 _L123621_
                 _L123622_
                 _L123623_
                 _L123624_
                 _L123625_)
                (___match127616127617_
                 _e123206123460_
                 _hd123205123463_
                 _tl123204123465_
                 _e123218123492_
                 _hd123217123495_
                 _tl123216123497_
                 _e123221123500_
                 _hd123220123503_
                 _tl123219123505_
                 _e123224123508_
                 _hd123223123511_
                 _tl123222123513_
                 _e123227123516_
                 _hd123226123519_
                 _tl123225123521_
                 _e123230123524_
                 _hd123229123527_
                 _tl123228123529_
                 _e123233123532_
                 _hd123232123535_
                 _tl123231123537_
                 _e123236123540_
                 _hd123235123543_
                 _tl123234123545_
                 _e123239123548_
                 _hd123238123551_
                 _tl123237123553_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127616127617_
                                                   _e123206123460_
                                                   _hd123205123463_
                                                   _tl123204123465_
                                                   _e123218123492_
                                                   _hd123217123495_
                                                   _tl123216123497_
                                                   _e123221123500_
                                                   _hd123220123503_
                                                   _tl123219123505_
                                                   _e123224123508_
                                                   _hd123223123511_
                                                   _tl123222123513_
                                                   _e123227123516_
                                                   _hd123226123519_
                                                   _tl123225123521_
                                                   _e123230123524_
                                                   _hd123229123527_
                                                   _tl123228123529_
                                                   _e123233123532_
                                                   _hd123232123535_
                                                   _tl123231123537_
                                                   _e123236123540_
                                                   _hd123235123543_
                                                   _tl123234123545_
                                                   _e123239123548_
                                                   _hd123238123551_
                                                   _tl123237123553_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123243123585_ _target123240123556_ '())))
                            (___match127616127617_
                             _e123206123460_
                             _hd123205123463_
                             _tl123204123465_
                             _e123218123492_
                             _hd123217123495_
                             _tl123216123497_
                             _e123221123500_
                             _hd123220123503_
                             _tl123219123505_
                             _e123224123508_
                             _hd123223123511_
                             _tl123222123513_
                             _e123227123516_
                             _hd123226123519_
                             _tl123225123521_
                             _e123230123524_
                             _hd123229123527_
                             _tl123228123529_
                             _e123233123532_
                             _hd123232123535_
                             _tl123231123537_
                             _e123236123540_
                             _hd123235123543_
                             _tl123234123545_
                             _e123239123548_
                             _hd123238123551_
                             _tl123237123553_))
                        (___match127616127617_
                         _e123206123460_
                         _hd123205123463_
                         _tl123204123465_
                         _e123218123492_
                         _hd123217123495_
                         _tl123216123497_
                         _e123221123500_
                         _hd123220123503_
                         _tl123219123505_
                         _e123224123508_
                         _hd123223123511_
                         _tl123222123513_
                         _e123227123516_
                         _hd123226123519_
                         _tl123225123521_
                         _e123230123524_
                         _hd123229123527_
                         _tl123228123529_
                         _e123233123532_
                         _hd123232123535_
                         _tl123231123537_
                         _e123236123540_
                         _hd123235123543_
                         _tl123234123545_
                         _e123239123548_
                         _hd123238123551_
                         _tl123237123553_))))
                (___match127616127617_
                 _e123206123460_
                 _hd123205123463_
                 _tl123204123465_
                 _e123218123492_
                 _hd123217123495_
                 _tl123216123497_
                 _e123221123500_
                 _hd123220123503_
                 _tl123219123505_
                 _e123224123508_
                 _hd123223123511_
                 _tl123222123513_
                 _e123227123516_
                 _hd123226123519_
                 _tl123225123521_
                 _e123230123524_
                 _hd123229123527_
                 _tl123228123529_
                 _e123233123532_
                 _hd123232123535_
                 _tl123231123537_
                 _e123236123540_
                 _hd123235123543_
                 _tl123234123545_
                 _e123239123548_
                 _hd123238123551_
                 _tl123237123553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127616127617_
                                                     _e123206123460_
                                                     _hd123205123463_
                                                     _tl123204123465_
                                                     _e123218123492_
                                                     _hd123217123495_
                                                     _tl123216123497_
                                                     _e123221123500_
                                                     _hd123220123503_
                                                     _tl123219123505_
                                                     _e123224123508_
                                                     _hd123223123511_
                                                     _tl123222123513_
                                                     _e123227123516_
                                                     _hd123226123519_
                                                     _tl123225123521_
                                                     _e123230123524_
                                                     _hd123229123527_
                                                     _tl123228123529_
                                                     _e123233123532_
                                                     _hd123232123535_
                                                     _tl123231123537_
                                                     _e123236123540_
                                                     _hd123235123543_
                                                     _tl123234123545_
                                                     _e123239123548_
                                                     _hd123238123551_
                                                     _tl123237123553_))
                                                (___match127616127617_
                                                 _e123206123460_
                                                 _hd123205123463_
                                                 _tl123204123465_
                                                 _e123218123492_
                                                 _hd123217123495_
                                                 _tl123216123497_
                                                 _e123221123500_
                                                 _hd123220123503_
                                                 _tl123219123505_
                                                 _e123224123508_
                                                 _hd123223123511_
                                                 _tl123222123513_
                                                 _e123227123516_
                                                 _hd123226123519_
                                                 _tl123225123521_
                                                 _e123230123524_
                                                 _hd123229123527_
                                                 _tl123228123529_
                                                 _e123233123532_
                                                 _hd123232123535_
                                                 _tl123231123537_
                                                 _e123236123540_
                                                 _hd123235123543_
                                                 _tl123234123545_
                                                 _e123239123548_
                                                 _hd123238123551_
                                                 _tl123237123553_))))
                                        (___match127616127617_
                                         _e123206123460_
                                         _hd123205123463_
                                         _tl123204123465_
                                         _e123218123492_
                                         _hd123217123495_
                                         _tl123216123497_
                                         _e123221123500_
                                         _hd123220123503_
                                         _tl123219123505_
                                         _e123224123508_
                                         _hd123223123511_
                                         _tl123222123513_
                                         _e123227123516_
                                         _hd123226123519_
                                         _tl123225123521_
                                         _e123230123524_
                                         _hd123229123527_
                                         _tl123228123529_
                                         _e123233123532_
                                         _hd123232123535_
                                         _tl123231123537_
                                         _e123236123540_
                                         _hd123235123543_
                                         _tl123234123545_
                                         _e123239123548_
                                         _hd123238123551_
                                         _tl123237123553_))))
                                (___match127616127617_
                                 _e123206123460_
                                 _hd123205123463_
                                 _tl123204123465_
                                 _e123218123492_
                                 _hd123217123495_
                                 _tl123216123497_
                                 _e123221123500_
                                 _hd123220123503_
                                 _tl123219123505_
                                 _e123224123508_
                                 _hd123223123511_
                                 _tl123222123513_
                                 _e123227123516_
                                 _hd123226123519_
                                 _tl123225123521_
                                 _e123230123524_
                                 _hd123229123527_
                                 _tl123228123529_
                                 _e123233123532_
                                 _hd123232123535_
                                 _tl123231123537_
                                 _e123236123540_
                                 _hd123235123543_
                                 _tl123234123545_
                                 _e123239123548_
                                 _hd123238123551_
                                 _tl123237123553_))))
                        (___match127616127617_
                         _e123206123460_
                         _hd123205123463_
                         _tl123204123465_
                         _e123218123492_
                         _hd123217123495_
                         _tl123216123497_
                         _e123221123500_
                         _hd123220123503_
                         _tl123219123505_
                         _e123224123508_
                         _hd123223123511_
                         _tl123222123513_
                         _e123227123516_
                         _hd123226123519_
                         _tl123225123521_
                         _e123230123524_
                         _hd123229123527_
                         _tl123228123529_
                         _e123233123532_
                         _hd123232123535_
                         _tl123231123537_
                         _e123236123540_
                         _hd123235123543_
                         _tl123234123545_
                         _e123239123548_
                         _hd123238123551_
                         _tl123237123553_))
                    (___match127616127617_
                     _e123206123460_
                     _hd123205123463_
                     _tl123204123465_
                     _e123218123492_
                     _hd123217123495_
                     _tl123216123497_
                     _e123221123500_
                     _hd123220123503_
                     _tl123219123505_
                     _e123224123508_
                     _hd123223123511_
                     _tl123222123513_
                     _e123227123516_
                     _hd123226123519_
                     _tl123225123521_
                     _e123230123524_
                     _hd123229123527_
                     _tl123228123529_
                     _e123233123532_
                     _hd123232123535_
                     _tl123231123537_
                     _e123236123540_
                     _hd123235123543_
                     _tl123234123545_
                     _e123239123548_
                     _hd123238123551_
                     _tl123237123553_))
                (___kont127519127520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127519127520_))
                                            (___kont127519127520_))
                                        (___kont127519127520_))))
                                (___kont127519127520_))))
                        (___kont127519127520_))
                    (___kont127519127520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127519127520_))
                                                (___kont127519127520_))
                                            (___kont127519127520_))))
                                    (___kont127519127520_))))
                            (___kont127519127520_))
                        (___kont127519127520_))
                    (___kont127519127520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127519127520_))))
                                            (___kont127519127520_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123210123473_ _target123207123468_ '())))))
                   (___match127534127535_
                    (lambda (_e123158123720_
                             _hd123157123723_
                             _tl123156123725_
                             ___splice127507127508_
                             _target123159123728_
                             _tl123161123730_)
                      (letrec ((_loop123162123733_
                                (lambda (_hd123160123736_ _arg123166123738_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123160123736_))
                                      (let ((_e123163123741_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123160123736_))))
                                        (let ((_lp-tl123165123746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123163123741_)))
                                              (_lp-hd123164123744_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123163123741_))))
                                          (let ((__tmp128910
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123164123744_
                                                         _arg123166123738_))))
                                            (declare (not safe))
                                            (_loop123162123733_
                                             _lp-tl123165123746_
                                             __tmp128910))))
                                      (let ((_arg123167123749_
                                             (reverse _arg123166123738_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123156123725_))
                                            (let ((_e123170123752_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123156123725_))))
                                              (let ((_tl123168123757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123170123752_)))
                                                    (_hd123169123755_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123170123752_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123169123755_))
                                                    (let ((_e123173123760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123169123755_))))
                                                      (let ((_tl123171123765_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123173123760_)))
                    (_hd123172123763_
                     (let () (declare (not safe)) (##car _e123173123760_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123172123763_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123172123763_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123171123765_))
                            (let ((_e123176123768_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123171123765_))))
                              (let ((_tl123174123773_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123176123768_)))
                                    (_hd123175123771_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123176123768_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123175123771_))
                                    (let ((_e123179123776_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123175123771_))))
                                      (let ((_tl123177123781_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123179123776_)))
                                            (_hd123178123779_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123179123776_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123178123779_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123178123779_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123177123781_))
                                                    (let ((_e123182123784_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123177123781_))))
                                                      (let ((_tl123180123789_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123182123784_)))
                    (_hd123181123787_
                     (let () (declare (not safe)) (##car _e123182123784_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123180123789_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123174123773_))
                        (let ((___splice127509127510_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123174123773_
                                  '0))))
                          (let ((_tl123185123794_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127509127510_ '1)))
                                (_target123183123792_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127509127510_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123185123794_))
                                (letrec ((_loop123186123797_
                                          (lambda (_hd123184123800_
                                                   _xarg123190123802_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123184123800_))
                                                (let ((_e123187123805_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123184123800_))))
                                                  (let ((_lp-tl123189123810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123187123805_)))
                                                        (_lp-hd123188123808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123187123805_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123188123808_))
                                                        (let ((_e123194123813_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123188123808_))))
                  (let ((_tl123192123818_
                         (let () (declare (not safe)) (##cdr _e123194123813_)))
                        (_hd123193123816_
                         (let ()
                           (declare (not safe))
                           (##car _e123194123813_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123193123816_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123193123816_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123192123818_))
                                (let ((_e123197123821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123192123818_))))
                                  (let ((_tl123195123826_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123197123821_)))
                                        (_hd123196123824_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123197123821_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123195123826_))
                                        (let ((__tmp128909
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123196123824_
                                                       _xarg123190123802_))))
                                          (declare (not safe))
                                          (_loop123186123797_
                                           _lp-tl123189123810_
                                           __tmp128909))
                                        (___match127546127547_
                                         _e123158123720_
                                         _hd123157123723_
                                         _tl123156123725_
                                         ___splice127507127508_
                                         _target123159123728_
                                         _tl123161123730_))))
                                (___match127546127547_
                                 _e123158123720_
                                 _hd123157123723_
                                 _tl123156123725_
                                 ___splice127507127508_
                                 _target123159123728_
                                 _tl123161123730_))
                            (___match127546127547_
                             _e123158123720_
                             _hd123157123723_
                             _tl123156123725_
                             ___splice127507127508_
                             _target123159123728_
                             _tl123161123730_))
                        (___match127546127547_
                         _e123158123720_
                         _hd123157123723_
                         _tl123156123725_
                         ___splice127507127508_
                         _target123159123728_
                         _tl123161123730_))))
                (___match127546127547_
                 _e123158123720_
                 _hd123157123723_
                 _tl123156123725_
                 ___splice127507127508_
                 _target123159123728_
                 _tl123161123730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123191123829_
                                                       (reverse _xarg123190123802_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123168123757_))
                                                      (let ((_L123832_
                                                             _xarg123191123829_)
                                                            (_L123833_
                                                             _hd123181123787_)
                                                            (_L123834_
                                                             _arg123167123749_))
                                                        (if (and (let ((__tmp128907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128908
                                       (lambda (_g123862123865_
                                                _g123863123867_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123862123865_
                                                 _g123863123867_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128908 '() _L123834_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128907))
                         (fx= (length (let ((__tmp128905
                                             (lambda (_g123869123872_
                                                      _g123870123874_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123869123872_
                                                       _g123870123874_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128905 '() _L123834_)))
                              (length (let ((__tmp128906
                                             (lambda (_g123876123879_
                                                      _g123877123881_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123876123879_
                                                       _g123877123881_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128906 '() _L123832_))))
                         (let ((__tmp128903
                                (let ((__tmp128904
                                       (lambda (_g123883123886_
                                                _g123884123888_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123883123886_
                                                 _g123884123888_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128904 '() _L123834_)))
                               (__tmp128901
                                (let ((__tmp128902
                                       (lambda (_g123890123893_
                                                _g123891123895_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123890123893_
                                                 _g123891123895_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128902 '() _L123832_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128903
                                    __tmp128901))
                         (let ((__tmp128897
                                (let ((__tmp128900
                                       (lambda (_g123897123899_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123897123899_
                                            _L123833_))))
                                      (__tmp128898
                                       (let ((__tmp128899
                                              (lambda (_g123901123904_
                                                       _g123902123906_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123901123904_
                                                        _g123902123906_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128899 '() _L123834_))))
                                  (declare (not safe))
                                  (find __tmp128900 __tmp128898))))
                           (declare (not safe))
                           (not __tmp128897)))
                    (___kont127505127506_ _L123832_ _L123833_ _L123834_)
                    (___match127546127547_
                     _e123158123720_
                     _hd123157123723_
                     _tl123156123725_
                     ___splice127507127508_
                     _target123159123728_
                     _tl123161123730_)))
              (___match127546127547_
               _e123158123720_
               _hd123157123723_
               _tl123156123725_
               ___splice127507127508_
               _target123159123728_
               _tl123161123730_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123186123797_
                                     _target123183123792_
                                     '())))
                                (___match127546127547_
                                 _e123158123720_
                                 _hd123157123723_
                                 _tl123156123725_
                                 ___splice127507127508_
                                 _target123159123728_
                                 _tl123161123730_))))
                        (___match127546127547_
                         _e123158123720_
                         _hd123157123723_
                         _tl123156123725_
                         ___splice127507127508_
                         _target123159123728_
                         _tl123161123730_))
                    (___match127546127547_
                     _e123158123720_
                     _hd123157123723_
                     _tl123156123725_
                     ___splice127507127508_
                     _target123159123728_
                     _tl123161123730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127546127547_
                                                     _e123158123720_
                                                     _hd123157123723_
                                                     _tl123156123725_
                                                     ___splice127507127508_
                                                     _target123159123728_
                                                     _tl123161123730_))
                                                (___match127546127547_
                                                 _e123158123720_
                                                 _hd123157123723_
                                                 _tl123156123725_
                                                 ___splice127507127508_
                                                 _target123159123728_
                                                 _tl123161123730_))
                                            (___match127546127547_
                                             _e123158123720_
                                             _hd123157123723_
                                             _tl123156123725_
                                             ___splice127507127508_
                                             _target123159123728_
                                             _tl123161123730_))))
                                    (___match127546127547_
                                     _e123158123720_
                                     _hd123157123723_
                                     _tl123156123725_
                                     ___splice127507127508_
                                     _target123159123728_
                                     _tl123161123730_))))
                            (___match127546127547_
                             _e123158123720_
                             _hd123157123723_
                             _tl123156123725_
                             ___splice127507127508_
                             _target123159123728_
                             _tl123161123730_))
                        (___match127546127547_
                         _e123158123720_
                         _hd123157123723_
                         _tl123156123725_
                         ___splice127507127508_
                         _target123159123728_
                         _tl123161123730_))
                    (___match127546127547_
                     _e123158123720_
                     _hd123157123723_
                     _tl123156123725_
                     ___splice127507127508_
                     _target123159123728_
                     _tl123161123730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127546127547_
                                                     _e123158123720_
                                                     _hd123157123723_
                                                     _tl123156123725_
                                                     ___splice127507127508_
                                                     _target123159123728_
                                                     _tl123161123730_))))
                                            (___match127546127547_
                                             _e123158123720_
                                             _hd123157123723_
                                             _tl123156123725_
                                             ___splice127507127508_
                                             _target123159123728_
                                             _tl123161123730_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123162123733_ _target123159123728_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127503127504_))
                  (let ((_e123158123720_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127503127504_))))
                    (let ((_tl123156123725_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123158123720_)))
                          (_hd123157123723_
                           (let ()
                             (declare (not safe))
                             (##car _e123158123720_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123157123723_))
                          (let ((___splice127507127508_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123157123723_
                                    '0))))
                            (let ((_tl123161123730_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127507127508_ '1)))
                                  (_target123159123728_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127507127508_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123161123730_))
                                  (___match127534127535_
                                   _e123158123720_
                                   _hd123157123723_
                                   _tl123156123725_
                                   ___splice127507127508_
                                   _target123159123728_
                                   _tl123161123730_)
                                  (___match127546127547_
                                   _e123158123720_
                                   _hd123157123723_
                                   _tl123156123725_
                                   ___splice127507127508_
                                   _target123159123728_
                                   _tl123161123730_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123156123725_))
                              (let ((_e123273123328_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123156123725_))))
                                (let ((_tl123271123333_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123273123328_)))
                                      (_hd123272123331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123273123328_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123272123331_))
                                      (let ((_e123276123336_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123272123331_))))
                                        (let ((_tl123274123341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123276123336_)))
                                              (_hd123275123339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123276123336_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123275123339_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123275123339_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123274123341_))
                                                      (let ((_e123279123344_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123274123341_))))
                (let ((_tl123277123349_
                       (let () (declare (not safe)) (##cdr _e123279123344_)))
                      (_hd123278123347_
                       (let () (declare (not safe)) (##car _e123279123344_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123278123347_))
                      (let ((_e123282123352_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123278123347_))))
                        (let ((_tl123280123357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123282123352_)))
                              (_hd123281123355_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123282123352_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123281123355_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123281123355_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123280123357_))
                                      (let ((_e123285123360_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123280123357_))))
                                        (let ((_tl123283123365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123285123360_)))
                                              (_hd123284123363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123285123360_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123283123365_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123277123349_))
                                                  (let ((_e123288123368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123277123349_))))
                                                    (let ((_tl123286123373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123288123368_)))
                                                          (_hd123287123371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123288123368_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123287123371_))
                                                          (let ((_e123291123376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123287123371_))))
                    (let ((_tl123289123381_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123291123376_)))
                          (_hd123290123379_
                           (let ()
                             (declare (not safe))
                             (##car _e123291123376_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123290123379_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123290123379_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123289123381_))
                                  (let ((_e123294123384_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123289123381_))))
                                    (let ((_tl123292123389_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123294123384_)))
                                          (_hd123293123387_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123294123384_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123292123389_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123286123373_))
                                              (let ((_e123297123392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123286123373_))))
                                                (let ((_tl123295123397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123297123392_)))
                                                      (_hd123296123395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123297123392_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123296123395_))
                                                      (let ((_e123300123400_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123296123395_))))
                (let ((_tl123298123405_
                       (let () (declare (not safe)) (##cdr _e123300123400_)))
                      (_hd123299123403_
                       (let () (declare (not safe)) (##car _e123300123400_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123299123403_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123299123403_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123298123405_))
                              (let ((_e123303123408_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123298123405_))))
                                (let ((_tl123301123413_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123303123408_)))
                                      (_hd123302123411_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123303123408_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123301123413_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123295123397_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123271123333_))
                                              (___match127644127645_
                                               _e123158123720_
                                               _hd123157123723_
                                               _tl123156123725_
                                               _e123273123328_
                                               _hd123272123331_
                                               _tl123271123333_
                                               _e123276123336_
                                               _hd123275123339_
                                               _tl123274123341_
                                               _e123279123344_
                                               _hd123278123347_
                                               _tl123277123349_
                                               _e123282123352_
                                               _hd123281123355_
                                               _tl123280123357_
                                               _e123285123360_
                                               _hd123284123363_
                                               _tl123283123365_
                                               _e123288123368_
                                               _hd123287123371_
                                               _tl123286123373_
                                               _e123291123376_
                                               _hd123290123379_
                                               _tl123289123381_
                                               _e123294123384_
                                               _hd123293123387_
                                               _tl123292123389_
                                               _e123297123392_
                                               _hd123296123395_
                                               _tl123295123397_
                                               _e123300123400_
                                               _hd123299123403_
                                               _tl123298123405_
                                               _e123303123408_
                                               _hd123302123411_
                                               _tl123301123413_)
                                              (___kont127519127520_))
                                          (___kont127519127520_))
                                      (___kont127519127520_))))
                              (___kont127519127520_))
                          (___kont127519127520_))
                      (___kont127519127520_))))
              (___kont127519127520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127519127520_))
                                          (___kont127519127520_))))
                                  (___kont127519127520_))
                              (___kont127519127520_))
                          (___kont127519127520_))))
                  (___kont127519127520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127519127520_))
                                              (___kont127519127520_))))
                                      (___kont127519127520_))
                                  (___kont127519127520_))
                              (___kont127519127520_))))
                      (___kont127519127520_))))
              (___kont127519127520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127519127520_))
                                              (___kont127519127520_))))
                                      (___kont127519127520_))))
                              (___kont127519127520_)))))
                  (___kont127519127520_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122614_)
        (let* ((___stx127647127648_ _form122614_)
               (_g122618122742_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127647127648_)))))
          (let ((___kont127649127650_
                 (lambda (_L123112_ _L123113_ _L123114_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123113_))))
                (___kont127655127656_
                 (lambda (_L122960_ _L122961_ _L122962_ _L122963_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122960_))))
                (___kont127659127660_
                 (lambda (_L122827_ _L122828_ _L122829_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122827_)))))
            (let* ((___match127756127757_
                    (lambda (_e122710122747_
                             _hd122709122750_
                             _tl122708122752_
                             _e122713122755_
                             _hd122712122758_
                             _tl122711122760_
                             _e122716122763_
                             _hd122715122766_
                             _tl122714122768_
                             _e122719122771_
                             _hd122718122774_
                             _tl122717122776_
                             _e122722122779_
                             _hd122721122782_
                             _tl122720122784_
                             _e122725122787_
                             _hd122724122790_
                             _tl122723122792_
                             _e122728122795_
                             _hd122727122798_
                             _tl122726122800_
                             _e122731122803_
                             _hd122730122806_
                             _tl122729122808_
                             _e122734122811_
                             _hd122733122814_
                             _tl122732122816_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122726122800_))
                          (let ((_e122737122819_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122726122800_))))
                            (let ((_tl122735122824_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122737122819_)))
                                  (_hd122736122822_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122737122819_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122735122824_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122711122760_))
                                      (___kont127659127660_
                                       _hd122733122814_
                                       _hd122724122790_
                                       _hd122709122750_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122618122742_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122618122742_)))))
                          (let () (declare (not safe)) (_g122618122742_)))))
                   (___match127686127687_
                    (lambda (_e122671122864_
                             _hd122670122867_
                             _tl122669122869_
                             ___splice127657127658_
                             _target122672122872_
                             _tl122674122874_)
                      (letrec ((_loop122675122877_
                                (lambda (_hd122673122880_ _arg122679122882_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122673122880_))
                                      (let ((_e122676122885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122673122880_))))
                                        (let ((_lp-tl122678122890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122676122885_)))
                                              (_lp-hd122677122888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122676122885_))))
                                          (let ((__tmp128911
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122677122888_
                                                         _arg122679122882_))))
                                            (declare (not safe))
                                            (_loop122675122877_
                                             _lp-tl122678122890_
                                             __tmp128911))))
                                      (let ((_arg122680122893_
                                             (reverse _arg122679122882_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122669122869_))
                                            (let ((_e122683122896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122669122869_))))
                                              (let ((_tl122681122901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122683122896_)))
                                                    (_hd122682122899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122683122896_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122682122899_))
                                                    (let ((_e122686122904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122682122899_))))
                                                      (let ((_tl122684122909_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122686122904_)))
                    (_hd122685122907_
                     (let () (declare (not safe)) (##car _e122686122904_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122685122907_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122685122907_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122684122909_))
                            (let ((_e122689122912_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122684122909_))))
                              (let ((_tl122687122917_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122689122912_)))
                                    (_hd122688122915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122689122912_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122688122915_))
                                    (let ((_e122692122920_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122688122915_))))
                                      (let ((_tl122690122925_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122692122920_)))
                                            (_hd122691122923_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122692122920_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122691122923_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122691122923_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122690122925_))
                                                    (let ((_e122695122928_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122690122925_))))
                                                      (let ((_tl122693122933_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122695122928_)))
                    (_hd122694122931_
                     (let () (declare (not safe)) (##car _e122695122928_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122693122933_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122687122917_))
                        (let ((_e122698122936_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122687122917_))))
                          (let ((_tl122696122941_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122698122936_)))
                                (_hd122697122939_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122698122936_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122697122939_))
                                (let ((_e122701122944_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122697122939_))))
                                  (let ((_tl122699122949_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122701122944_)))
                                        (_hd122700122947_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122701122944_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122700122947_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122700122947_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122699122949_))
                                                (let ((_e122704122952_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122699122949_))))
                                                  (let ((_tl122702122957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122704122952_)))
                                                        (_hd122703122955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122704122952_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122702122957_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122681122901_))
                                                            (___kont127655127656_
                                                             _hd122703122955_
                                                             _hd122694122931_
                                                             _tl122674122874_
                                                             _arg122680122893_)
                                                            (___match127756127757_
                                                             _e122671122864_
                                                             _hd122670122867_
                                                             _tl122669122869_
                                                             _e122683122896_
                                                             _hd122682122899_
                                                             _tl122681122901_
                                                             _e122686122904_
                                                             _hd122685122907_
                                                             _tl122684122909_
                                                             _e122689122912_
                                                             _hd122688122915_
                                                             _tl122687122917_
                                                             _e122692122920_
                                                             _hd122691122923_
                                                             _tl122690122925_
                                                             _e122695122928_
                                                             _hd122694122931_
                                                             _tl122693122933_
                                                             _e122698122936_
                                                             _hd122697122939_
                                                             _tl122696122941_
                                                             _e122701122944_
                                                             _hd122700122947_
                                                             _tl122699122949_
                                                             _e122704122952_
                                                             _hd122703122955_
                                                             _tl122702122957_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122618122742_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122618122742_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122618122742_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122618122742_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122618122742_)))))
                        (let () (declare (not safe)) (_g122618122742_)))
                    (let () (declare (not safe)) (_g122618122742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122618122742_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122618122742_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122618122742_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122618122742_)))))
                            (let () (declare (not safe)) (_g122618122742_)))
                        (let () (declare (not safe)) (_g122618122742_)))
                    (let () (declare (not safe)) (_g122618122742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122618122742_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122618122742_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122675122877_ _target122672122872_ '())))))
                   (___match127674127675_
                    (lambda (_e122625123000_
                             _hd122624123003_
                             _tl122623123005_
                             ___splice127651127652_
                             _target122626123008_
                             _tl122628123010_)
                      (letrec ((_loop122629123013_
                                (lambda (_hd122627123016_ _arg122633123018_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122627123016_))
                                      (let ((_e122630123021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122627123016_))))
                                        (let ((_lp-tl122632123026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122630123021_)))
                                              (_lp-hd122631123024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122630123021_))))
                                          (let ((__tmp128913
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122631123024_
                                                         _arg122633123018_))))
                                            (declare (not safe))
                                            (_loop122629123013_
                                             _lp-tl122632123026_
                                             __tmp128913))))
                                      (let ((_arg122634123029_
                                             (reverse _arg122633123018_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122623123005_))
                                            (let ((_e122637123032_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122623123005_))))
                                              (let ((_tl122635123037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122637123032_)))
                                                    (_hd122636123035_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122637123032_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122636123035_))
                                                    (let ((_e122640123040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122636123035_))))
                                                      (let ((_tl122638123045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122640123040_)))
                    (_hd122639123043_
                     (let () (declare (not safe)) (##car _e122640123040_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122639123043_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122639123043_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122638123045_))
                            (let ((_e122643123048_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122638123045_))))
                              (let ((_tl122641123053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122643123048_)))
                                    (_hd122642123051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122643123048_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122642123051_))
                                    (let ((_e122646123056_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122642123051_))))
                                      (let ((_tl122644123061_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122646123056_)))
                                            (_hd122645123059_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122646123056_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122645123059_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122645123059_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122644123061_))
                                                    (let ((_e122649123064_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122644123061_))))
                                                      (let ((_tl122647123069_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122649123064_)))
                    (_hd122648123067_
                     (let () (declare (not safe)) (##car _e122649123064_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122647123069_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122641123053_))
                        (let ((___splice127653127654_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122641123053_
                                  '0))))
                          (let ((_tl122652123074_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127653127654_ '1)))
                                (_target122650123072_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127653127654_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122652123074_))
                                (letrec ((_loop122653123077_
                                          (lambda (_hd122651123080_
                                                   _xarg122657123082_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122651123080_))
                                                (let ((_e122654123085_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122651123080_))))
                                                  (let ((_lp-tl122656123090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122654123085_)))
                                                        (_lp-hd122655123088_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122654123085_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122655123088_))
                                                        (let ((_e122661123093_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122655123088_))))
                  (let ((_tl122659123098_
                         (let () (declare (not safe)) (##cdr _e122661123093_)))
                        (_hd122660123096_
                         (let ()
                           (declare (not safe))
                           (##car _e122661123093_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122660123096_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122660123096_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122659123098_))
                                (let ((_e122664123101_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122659123098_))))
                                  (let ((_tl122662123106_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122664123101_)))
                                        (_hd122663123104_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122664123101_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122662123106_))
                                        (let ((__tmp128912
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122663123104_
                                                       _xarg122657123082_))))
                                          (declare (not safe))
                                          (_loop122653123077_
                                           _lp-tl122656123090_
                                           __tmp128912))
                                        (___match127686127687_
                                         _e122625123000_
                                         _hd122624123003_
                                         _tl122623123005_
                                         ___splice127651127652_
                                         _target122626123008_
                                         _tl122628123010_))))
                                (___match127686127687_
                                 _e122625123000_
                                 _hd122624123003_
                                 _tl122623123005_
                                 ___splice127651127652_
                                 _target122626123008_
                                 _tl122628123010_))
                            (___match127686127687_
                             _e122625123000_
                             _hd122624123003_
                             _tl122623123005_
                             ___splice127651127652_
                             _target122626123008_
                             _tl122628123010_))
                        (___match127686127687_
                         _e122625123000_
                         _hd122624123003_
                         _tl122623123005_
                         ___splice127651127652_
                         _target122626123008_
                         _tl122628123010_))))
                (___match127686127687_
                 _e122625123000_
                 _hd122624123003_
                 _tl122623123005_
                 ___splice127651127652_
                 _target122626123008_
                 _tl122628123010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122658123109_
                                                       (reverse _xarg122657123082_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122635123037_))
                                                      (___kont127649127650_
                                                       _xarg122658123109_
                                                       _hd122648123067_
                                                       _arg122634123029_)
                                                      (___match127686127687_
                                                       _e122625123000_
                                                       _hd122624123003_
                                                       _tl122623123005_
                                                       ___splice127651127652_
                                                       _target122626123008_
                                                       _tl122628123010_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122653123077_
                                     _target122650123072_
                                     '())))
                                (___match127686127687_
                                 _e122625123000_
                                 _hd122624123003_
                                 _tl122623123005_
                                 ___splice127651127652_
                                 _target122626123008_
                                 _tl122628123010_))))
                        (___match127686127687_
                         _e122625123000_
                         _hd122624123003_
                         _tl122623123005_
                         ___splice127651127652_
                         _target122626123008_
                         _tl122628123010_))
                    (___match127686127687_
                     _e122625123000_
                     _hd122624123003_
                     _tl122623123005_
                     ___splice127651127652_
                     _target122626123008_
                     _tl122628123010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127686127687_
                                                     _e122625123000_
                                                     _hd122624123003_
                                                     _tl122623123005_
                                                     ___splice127651127652_
                                                     _target122626123008_
                                                     _tl122628123010_))
                                                (___match127686127687_
                                                 _e122625123000_
                                                 _hd122624123003_
                                                 _tl122623123005_
                                                 ___splice127651127652_
                                                 _target122626123008_
                                                 _tl122628123010_))
                                            (___match127686127687_
                                             _e122625123000_
                                             _hd122624123003_
                                             _tl122623123005_
                                             ___splice127651127652_
                                             _target122626123008_
                                             _tl122628123010_))))
                                    (___match127686127687_
                                     _e122625123000_
                                     _hd122624123003_
                                     _tl122623123005_
                                     ___splice127651127652_
                                     _target122626123008_
                                     _tl122628123010_))))
                            (___match127686127687_
                             _e122625123000_
                             _hd122624123003_
                             _tl122623123005_
                             ___splice127651127652_
                             _target122626123008_
                             _tl122628123010_))
                        (___match127686127687_
                         _e122625123000_
                         _hd122624123003_
                         _tl122623123005_
                         ___splice127651127652_
                         _target122626123008_
                         _tl122628123010_))
                    (___match127686127687_
                     _e122625123000_
                     _hd122624123003_
                     _tl122623123005_
                     ___splice127651127652_
                     _target122626123008_
                     _tl122628123010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127686127687_
                                                     _e122625123000_
                                                     _hd122624123003_
                                                     _tl122623123005_
                                                     ___splice127651127652_
                                                     _target122626123008_
                                                     _tl122628123010_))))
                                            (___match127686127687_
                                             _e122625123000_
                                             _hd122624123003_
                                             _tl122623123005_
                                             ___splice127651127652_
                                             _target122626123008_
                                             _tl122628123010_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122629123013_ _target122626123008_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127647127648_))
                  (let ((_e122625123000_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127647127648_))))
                    (let ((_tl122623123005_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122625123000_)))
                          (_hd122624123003_
                           (let ()
                             (declare (not safe))
                             (##car _e122625123000_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122624123003_))
                          (let ((___splice127651127652_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122624123003_
                                    '0))))
                            (let ((_tl122628123010_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127651127652_ '1)))
                                  (_target122626123008_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127651127652_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122628123010_))
                                  (___match127674127675_
                                   _e122625123000_
                                   _hd122624123003_
                                   _tl122623123005_
                                   ___splice127651127652_
                                   _target122626123008_
                                   _tl122628123010_)
                                  (___match127686127687_
                                   _e122625123000_
                                   _hd122624123003_
                                   _tl122623123005_
                                   ___splice127651127652_
                                   _target122626123008_
                                   _tl122628123010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122623123005_))
                              (let ((_e122713122755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122623123005_))))
                                (let ((_tl122711122760_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122713122755_)))
                                      (_hd122712122758_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122713122755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122712122758_))
                                      (let ((_e122716122763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122712122758_))))
                                        (let ((_tl122714122768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122716122763_)))
                                              (_hd122715122766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122716122763_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122715122766_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122715122766_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122714122768_))
                                                      (let ((_e122719122771_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122714122768_))))
                (let ((_tl122717122776_
                       (let () (declare (not safe)) (##cdr _e122719122771_)))
                      (_hd122718122774_
                       (let () (declare (not safe)) (##car _e122719122771_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122718122774_))
                      (let ((_e122722122779_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122718122774_))))
                        (let ((_tl122720122784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122722122779_)))
                              (_hd122721122782_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122722122779_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122721122782_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122721122782_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122720122784_))
                                      (let ((_e122725122787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122720122784_))))
                                        (let ((_tl122723122792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122725122787_)))
                                              (_hd122724122790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122725122787_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122723122792_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122717122776_))
                                                  (let ((_e122728122795_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122717122776_))))
                                                    (let ((_tl122726122800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122728122795_)))
                                                          (_hd122727122798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122728122795_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122727122798_))
                                                          (let ((_e122731122803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122727122798_))))
                    (let ((_tl122729122808_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122731122803_)))
                          (_hd122730122806_
                           (let ()
                             (declare (not safe))
                             (##car _e122731122803_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122730122806_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122730122806_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122729122808_))
                                  (let ((_e122734122811_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122729122808_))))
                                    (let ((_tl122732122816_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122734122811_)))
                                          (_hd122733122814_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122734122811_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122732122816_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122726122800_))
                                              (let ((_e122737122819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122726122800_))))
                                                (let ((_tl122735122824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122737122819_)))
                                                      (_hd122736122822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122737122819_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122735122824_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122711122760_))
                                                          (___kont127659127660_
                                                           _hd122733122814_
                                                           _hd122724122790_
                                                           _hd122624123003_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122618122742_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122618122742_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122618122742_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122618122742_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122618122742_)))
                              (let () (declare (not safe)) (_g122618122742_)))
                          (let () (declare (not safe)) (_g122618122742_)))))
                  (let () (declare (not safe)) (_g122618122742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122618122742_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122618122742_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122618122742_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122618122742_)))
                              (let ()
                                (declare (not safe))
                                (_g122618122742_)))))
                      (let () (declare (not safe)) (_g122618122742_)))))
              (let () (declare (not safe)) (_g122618122742_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122618122742_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122618122742_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122618122742_)))))
                              (let ()
                                (declare (not safe))
                                (_g122618122742_))))))
                  (let () (declare (not safe)) (_g122618122742_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122418_)
        (let* ((_g122420122434_
                (lambda (_g122421122431_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122421122431_))))
               (_g122419122611_
                (lambda (_g122421122437_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122421122437_))
                      (let ((_e122426122439_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122421122437_))))
                        (let ((_hd122425122442_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122426122439_)))
                              (_tl122424122444_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122426122439_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122424122444_))
                              (let ((_e122429122447_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122424122444_))))
                                (let ((_hd122428122450_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122429122447_)))
                                      (_tl122427122452_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122429122447_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122427122452_))
                                      ((lambda (_L122455_ _L122456_)
                                         (let* ((___stx127769127770_ _L122456_)
                                                (_g122471122499_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127769127770_)))))
                                           (let ((___kont127771127772_
                                                  (lambda (_L122590_)
                                                    (length (let ((__tmp128914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122600122603_ _g122601122605_)
                             (let ()
                               (declare (not safe))
                               (cons _g122600122603_ _g122601122605_)))))
                      (declare (not safe))
                      (foldr1 __tmp128914 '() _L122590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127775127776_
                                                  (lambda (_L122541_ _L122542_)
                                                    (let ((__tmp128915
                                                           (length (let ((__tmp128916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122553122556_ _g122554122558_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122553122556_
                                            _g122554122558_)))))
                             (declare (not safe))
                             (foldr1 __tmp128916 '() _L122542_)))))
              (declare (not safe))
              (cons __tmp128915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127779127780_
                                                  (lambda (_L122504_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127794127795_
                                                     (lambda (___splice127777127778_
                                                              _target122485122517_
                                                              _tl122487122519_)
                                                       (letrec ((_loop122488122522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122486122525_ _arg122492122527_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122486122525_))
                               (let ((_e122489122530_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122486122525_))))
                                 (let ((_lp-tl122491122535_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122489122530_)))
                                       (_lp-hd122490122533_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122489122530_))))
                                   (let ((__tmp128917
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122490122533_
                                                  _arg122492122527_))))
                                     (declare (not safe))
                                     (_loop122488122522_
                                      _lp-tl122491122535_
                                      __tmp128917))))
                               (let ((_arg122493122538_
                                      (reverse _arg122492122527_)))
                                 (___kont127775127776_
                                  _tl122487122519_
                                  _arg122493122538_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122488122522_ _target122485122517_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127788127789_
                                                     (lambda (___splice127773127774_
                                                              _target122474122566_
                                                              _tl122476122568_)
                                                       (letrec ((_loop122477122571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122475122574_ _arg122481122576_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122475122574_))
                               (let ((_e122478122579_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122475122574_))))
                                 (let ((_lp-tl122480122584_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122478122579_)))
                                       (_lp-hd122479122582_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122478122579_))))
                                   (let ((__tmp128918
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122479122582_
                                                  _arg122481122576_))))
                                     (declare (not safe))
                                     (_loop122477122571_
                                      _lp-tl122480122584_
                                      __tmp128918))))
                               (let ((_arg122482122587_
                                      (reverse _arg122481122576_)))
                                 (___kont127771127772_ _arg122482122587_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122477122571_ _target122474122566_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127769127770_))
                                                   (let ((___splice127773127774_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127769127770_
                                                             '0))))
                                                     (let ((_tl122476122568_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127773127774_
                                                               '1)))
                                                           (_target122474122566_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127773127774_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122476122568_))
                                                           (___match127788127789_
                                                            ___splice127773127774_
                                                            _target122474122566_
                                                            _tl122476122568_)
                                                           (___match127794127795_
                                                            ___splice127773127774_
                                                            _target122474122566_
                                                            _tl122476122568_))))
                                                   (___kont127779127780_
                                                    ___stx127769127770_))))))
                                       _hd122428122450_
                                       _hd122425122442_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122420122434_ _g122421122437_)))))
                              (let ()
                                (declare (not safe))
                                (_g122420122434_ _g122421122437_)))))
                      (let ()
                        (declare (not safe))
                        (_g122420122434_ _g122421122437_))))))
          (declare (not safe))
          (_g122419122611_ _form122418_))))
    (define gxc#lambda-expr?
      (lambda (_expr122371_)
        (let* ((___stx127797127798_ _expr122371_)
               (_g122374122384_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127797127798_)))))
          (let ((___kont127799127800_ (lambda (_L122404_) '#t))
                (___kont127801127802_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127797127798_))
                (let ((_e122379122396_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127797127798_))))
                  (let ((_tl122377122401_
                         (let () (declare (not safe)) (##cdr _e122379122396_)))
                        (_hd122378122399_
                         (let ()
                           (declare (not safe))
                           (##car _e122379122396_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122378122399_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122378122399_))
                            (___kont127799127800_ _tl122377122401_)
                            (___kont127801127802_))
                        (___kont127801127802_))))
                (___kont127801127802_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122324_)
        (let* ((___stx127815127816_ _expr122324_)
               (_g122327122337_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127815127816_)))))
          (let ((___kont127817127818_ (lambda (_L122357_) '#t))
                (___kont127819127820_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127815127816_))
                (let ((_e122332122349_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127815127816_))))
                  (let ((_tl122330122354_
                         (let () (declare (not safe)) (##cdr _e122332122349_)))
                        (_hd122331122352_
                         (let ()
                           (declare (not safe))
                           (##car _e122332122349_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122331122352_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122331122352_))
                            (___kont127817127818_ _tl122330122354_)
                            (___kont127819127820_))
                        (___kont127819127820_))))
                (___kont127819127820_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122193_)
        (let* ((___stx127833127834_ _expr122193_)
               (_g122196122226_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127833127834_)))))
          (let ((___kont127835127836_
                 (lambda (_L122294_ _L122295_ _L122296_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122296_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122295_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122294_))
                           '#f)
                       '#f)))
                (___kont127837127838_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127833127834_))
                (let ((_e122203122238_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127833127834_))))
                  (let ((_tl122201122243_
                         (let () (declare (not safe)) (##cdr _e122203122238_)))
                        (_hd122202122241_
                         (let ()
                           (declare (not safe))
                           (##car _e122203122238_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122202122241_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122202122241_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122201122243_))
                                (let ((_e122206122246_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122201122243_))))
                                  (let ((_tl122204122251_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122206122246_)))
                                        (_hd122205122249_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122206122246_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122205122249_))
                                        (let ((_e122209122254_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122205122249_))))
                                          (let ((_tl122207122259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122209122254_)))
                                                (_hd122208122257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122209122254_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122208122257_))
                                                (let ((_e122212122262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122208122257_))))
                                                  (let ((_tl122210122267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122212122262_)))
                                                        (_hd122211122265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122212122262_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122211122265_))
                                                        (let ((_e122215122270_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122211122265_))))
                  (let ((_tl122213122275_
                         (let () (declare (not safe)) (##cdr _e122215122270_)))
                        (_hd122214122273_
                         (let ()
                           (declare (not safe))
                           (##car _e122215122270_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122213122275_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122210122267_))
                            (let ((_e122218122278_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122210122267_))))
                              (let ((_tl122216122283_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122218122278_)))
                                    (_hd122217122281_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122218122278_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122216122283_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122207122259_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122204122251_))
                                            (let ((_e122221122286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122204122251_))))
                                              (let ((_tl122219122291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122221122286_)))
                                                    (_hd122220122289_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122221122286_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122219122291_))
                                                    (___kont127835127836_
                                                     _hd122220122289_
                                                     _hd122217122281_
                                                     _hd122214122273_)
                                                    (___kont127837127838_))))
                                            (___kont127837127838_))
                                        (___kont127837127838_))
                                    (___kont127837127838_))))
                            (___kont127837127838_))
                        (___kont127837127838_))))
                (___kont127837127838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127837127838_))))
                                        (___kont127837127838_))))
                                (___kont127837127838_))
                            (___kont127837127838_))
                        (___kont127837127838_))))
                (___kont127837127838_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121518_)
        (let* ((___stx127895127896_ _expr121518_)
               (_g121521121679_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127895127896_)))))
          (let ((___kont127897127898_
                 (lambda (_L122067_
                          _L122068_
                          _L122069_
                          _L122070_
                          _L122071_
                          _L122072_
                          _L122073_
                          _L122074_
                          _L122075_
                          _L122076_
                          _L122077_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122074_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122070_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122069_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122077_
                                      _L122068_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122076_
                                          _L122073_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122071_
                                              _L122067_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122075_
                                              _L122072_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127899127900_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127895127896_))
                (let ((_e121536121691_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127895127896_))))
                  (let ((_tl121534121696_
                         (let () (declare (not safe)) (##cdr _e121536121691_)))
                        (_hd121535121694_
                         (let ()
                           (declare (not safe))
                           (##car _e121536121691_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121535121694_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121535121694_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121534121696_))
                                (let ((_e121539121699_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121534121696_))))
                                  (let ((_tl121537121704_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121539121699_)))
                                        (_hd121538121702_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121539121699_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121538121702_))
                                        (let ((_e121542121707_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121538121702_))))
                                          (let ((_tl121540121712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121542121707_)))
                                                (_hd121541121710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121542121707_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121541121710_))
                                                (let ((_e121545121715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121541121710_))))
                                                  (let ((_tl121543121720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121545121715_)))
                                                        (_hd121544121718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121545121715_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121544121718_))
                                                        (let ((_e121548121723_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121544121718_))))
                  (let ((_tl121546121728_
                         (let () (declare (not safe)) (##cdr _e121548121723_)))
                        (_hd121547121726_
                         (let ()
                           (declare (not safe))
                           (##car _e121548121723_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121546121728_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121543121720_))
                            (let ((_e121551121731_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121543121720_))))
                              (let ((_tl121549121736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121551121731_)))
                                    (_hd121550121734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121551121731_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121550121734_))
                                    (let ((_e121554121739_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121550121734_))))
                                      (let ((_tl121552121744_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121554121739_)))
                                            (_hd121553121742_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121554121739_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121553121742_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121553121742_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121552121744_))
                                                    (let ((_e121557121747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121552121744_))))
                                                      (let ((_tl121555121752_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121557121747_)))
                    (_hd121556121750_
                     (let () (declare (not safe)) (##car _e121557121747_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121556121750_))
                    (let ((_e121560121755_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121556121750_))))
                      (let ((_tl121558121760_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121560121755_)))
                            (_hd121559121758_
                             (let ()
                               (declare (not safe))
                               (##car _e121560121755_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121559121758_))
                            (let ((_e121563121763_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121559121758_))))
                              (let ((_tl121561121768_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121563121763_)))
                                    (_hd121562121766_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121563121763_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121562121766_))
                                    (let ((_e121566121771_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121562121766_))))
                                      (let ((_tl121564121776_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121566121771_)))
                                            (_hd121565121774_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121566121771_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121564121776_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121561121768_))
                                                (let ((_e121569121779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121561121768_))))
                                                  (let ((_tl121567121784_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121569121779_)))
                                                        (_hd121568121782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121569121779_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121567121784_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121558121760_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121555121752_))
                        (let ((_e121572121787_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121555121752_))))
                          (let ((_tl121570121792_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121572121787_)))
                                (_hd121571121790_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121572121787_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121571121790_))
                                (let ((_e121575121795_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121571121790_))))
                                  (let ((_tl121573121800_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121575121795_)))
                                        (_hd121574121798_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121575121795_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121574121798_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121574121798_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121573121800_))
                                                (let ((_e121578121803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121573121800_))))
                                                  (let ((_tl121576121808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121578121803_)))
                                                        (_hd121577121806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121578121803_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121577121806_))
                                                        (let ((_e121581121811_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121577121806_))))
                  (let ((_tl121579121816_
                         (let () (declare (not safe)) (##cdr _e121581121811_)))
                        (_hd121580121814_
                         (let ()
                           (declare (not safe))
                           (##car _e121581121811_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121576121808_))
                        (let ((_e121584121819_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121576121808_))))
                          (let ((_tl121582121824_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121584121819_)))
                                (_hd121583121822_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121584121819_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121583121822_))
                                (let ((_e121587121827_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121583121822_))))
                                  (let ((_tl121585121832_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121587121827_)))
                                        (_hd121586121830_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121587121827_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121586121830_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121586121830_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121585121832_))
                                                (let ((_e121590121835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121585121832_))))
                                                  (let ((_tl121588121840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121590121835_)))
                                                        (_hd121589121838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121590121835_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121589121838_))
                                                        (let ((_e121593121843_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121589121838_))))
                  (let ((_tl121591121848_
                         (let () (declare (not safe)) (##cdr _e121593121843_)))
                        (_hd121592121846_
                         (let ()
                           (declare (not safe))
                           (##car _e121593121843_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121592121846_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121592121846_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121591121848_))
                                (let ((_e121596121851_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121591121848_))))
                                  (let ((_tl121594121856_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121596121851_)))
                                        (_hd121595121854_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121596121851_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121594121856_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121588121840_))
                                            (let ((_e121599121859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121588121840_))))
                                              (let ((_tl121597121864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121599121859_)))
                                                    (_hd121598121862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121599121859_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121598121862_))
                                                    (let ((_e121602121867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121598121862_))))
                                                      (let ((_tl121600121872_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121602121867_)))
                    (_hd121601121870_
                     (let () (declare (not safe)) (##car _e121602121867_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121601121870_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121601121870_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121600121872_))
                            (let ((_e121605121875_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121600121872_))))
                              (let ((_tl121603121880_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121605121875_)))
                                    (_hd121604121878_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121605121875_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121603121880_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121597121864_))
                                        (let ((_e121608121883_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121597121864_))))
                                          (let ((_tl121606121888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121608121883_)))
                                                (_hd121607121886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121608121883_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121607121886_))
                                                (let ((_e121611121891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121607121886_))))
                                                  (let ((_tl121609121896_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121611121891_)))
                                                        (_hd121610121894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121611121891_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121610121894_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121610121894_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121609121896_))
                        (let ((_e121614121899_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121609121896_))))
                          (let ((_tl121612121904_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121614121899_)))
                                (_hd121613121902_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121614121899_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121612121904_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121582121824_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121570121792_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121549121736_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121540121712_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121537121704_))
                                                    (let ((_e121617121907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121537121704_))))
                                                      (let ((_tl121615121912_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121617121907_)))
                    (_hd121616121910_
                     (let () (declare (not safe)) (##car _e121617121907_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121616121910_))
                    (let ((_e121620121915_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121616121910_))))
                      (let ((_tl121618121920_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121620121915_)))
                            (_hd121619121918_
                             (let ()
                               (declare (not safe))
                               (##car _e121620121915_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121619121918_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121619121918_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121618121920_))
                                    (let ((_e121623121923_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121618121920_))))
                                      (let ((_tl121621121928_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121623121923_)))
                                            (_hd121622121926_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121623121923_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121621121928_))
                                            (let ((_e121626121931_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121621121928_))))
                                              (let ((_tl121624121936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121626121931_)))
                                                    (_hd121625121934_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121626121931_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121625121934_))
                                                    (let ((_e121629121939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121625121934_))))
                                                      (let ((_tl121627121944_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121629121939_)))
                    (_hd121628121942_
                     (let () (declare (not safe)) (##car _e121629121939_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121628121942_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121628121942_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121627121944_))
                            (let ((_e121632121947_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121627121944_))))
                              (let ((_tl121630121952_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121632121947_)))
                                    (_hd121631121950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121632121947_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121631121950_))
                                    (let ((_e121635121955_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121631121950_))))
                                      (let ((_tl121633121960_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121635121955_)))
                                            (_hd121634121958_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121635121955_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121634121958_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121634121958_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121633121960_))
                                                    (let ((_e121638121963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121633121960_))))
                                                      (let ((_tl121636121968_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121638121963_)))
                    (_hd121637121966_
                     (let () (declare (not safe)) (##car _e121638121963_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121636121968_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121630121952_))
                        (let ((_e121641121971_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121630121952_))))
                          (let ((_tl121639121976_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121641121971_)))
                                (_hd121640121974_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121641121971_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121640121974_))
                                (let ((_e121644121979_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121640121974_))))
                                  (let ((_tl121642121984_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121644121979_)))
                                        (_hd121643121982_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121644121979_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121643121982_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121643121982_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121642121984_))
                                                (let ((_e121647121987_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121642121984_))))
                                                  (let ((_tl121645121992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121647121987_)))
                                                        (_hd121646121990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121647121987_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121645121992_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121639121976_))
                                                            (let ((_e121650121995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121639121976_))))
                      (let ((_tl121648122000_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121650121995_)))
                            (_hd121649121998_
                             (let ()
                               (declare (not safe))
                               (##car _e121650121995_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121649121998_))
                            (let ((_e121653122003_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121649121998_))))
                              (let ((_tl121651122008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121653122003_)))
                                    (_hd121652122006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121653122003_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121652122006_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121652122006_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121651122008_))
                                            (let ((_e121656122011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121651122008_))))
                                              (let ((_tl121654122016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121656122011_)))
                                                    (_hd121655122014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121656122011_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121654122016_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121648122000_))
                                                        (let ((_e121659122019_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121648122000_))))
                  (let ((_tl121657122024_
                         (let () (declare (not safe)) (##cdr _e121659122019_)))
                        (_hd121658122022_
                         (let ()
                           (declare (not safe))
                           (##car _e121659122019_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121658122022_))
                        (let ((_e121662122027_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121658122022_))))
                          (let ((_tl121660122032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121662122027_)))
                                (_hd121661122030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121662122027_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121661122030_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121661122030_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121660122032_))
                                        (let ((_e121665122035_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121660122032_))))
                                          (let ((_tl121663122040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121665122035_)))
                                                (_hd121664122038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121665122035_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121663122040_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121657122024_))
                                                    (let ((_e121668122043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121657122024_))))
                                                      (let ((_tl121666122048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121668122043_)))
                    (_hd121667122046_
                     (let () (declare (not safe)) (##car _e121668122043_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121667122046_))
                    (let ((_e121671122051_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121667122046_))))
                      (let ((_tl121669122056_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121671122051_)))
                            (_hd121670122054_
                             (let ()
                               (declare (not safe))
                               (##car _e121671122051_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121670122054_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121670122054_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121669122056_))
                                    (let ((_e121674122059_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121669122056_))))
                                      (let ((_tl121672122064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121674122059_)))
                                            (_hd121673122062_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121674122059_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121672122064_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121666122048_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121624121936_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121615121912_))
                                                        (___kont127897127898_
                                                         _hd121673122062_
                                                         _hd121664122038_
                                                         _hd121646121990_
                                                         _hd121637121966_
                                                         _hd121622121926_
                                                         _hd121613121902_
                                                         _hd121604121878_
                                                         _hd121595121854_
                                                         _hd121580121814_
                                                         _hd121565121774_
                                                         _hd121547121726_)
                                                        (___kont127899127900_))
                                                    (___kont127899127900_))
                                                (___kont127899127900_))
                                            (___kont127899127900_))))
                                    (___kont127899127900_))
                                (___kont127899127900_))
                            (___kont127899127900_))))
                    (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))
                                                (___kont127899127900_))))
                                        (___kont127899127900_))
                                    (___kont127899127900_))
                                (___kont127899127900_))))
                        (___kont127899127900_))))
                (___kont127899127900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))))
                                            (___kont127899127900_))
                                        (___kont127899127900_))
                                    (___kont127899127900_))))
                            (___kont127899127900_))))
                    (___kont127899127900_))
                (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127899127900_))
                                            (___kont127899127900_))
                                        (___kont127899127900_))))
                                (___kont127899127900_))))
                        (___kont127899127900_))
                    (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))
                                                (___kont127899127900_))
                                            (___kont127899127900_))))
                                    (___kont127899127900_))))
                            (___kont127899127900_))
                        (___kont127899127900_))
                    (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))))
                                            (___kont127899127900_))))
                                    (___kont127899127900_))
                                (___kont127899127900_))
                            (___kont127899127900_))))
                    (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))
                                                (___kont127899127900_))
                                            (___kont127899127900_))
                                        (___kont127899127900_))
                                    (___kont127899127900_))
                                (___kont127899127900_))))
                        (___kont127899127900_))
                    (___kont127899127900_))
                (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127899127900_))))
                                        (___kont127899127900_))
                                    (___kont127899127900_))))
                            (___kont127899127900_))
                        (___kont127899127900_))
                    (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))))
                                            (___kont127899127900_))
                                        (___kont127899127900_))))
                                (___kont127899127900_))
                            (___kont127899127900_))
                        (___kont127899127900_))))
                (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127899127900_))
                                            (___kont127899127900_))
                                        (___kont127899127900_))))
                                (___kont127899127900_))))
                        (___kont127899127900_))))
                (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127899127900_))
                                            (___kont127899127900_))
                                        (___kont127899127900_))))
                                (___kont127899127900_))))
                        (___kont127899127900_))
                    (___kont127899127900_))
                (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127899127900_))
                                            (___kont127899127900_))))
                                    (___kont127899127900_))))
                            (___kont127899127900_))))
                    (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127899127900_))
                                                (___kont127899127900_))
                                            (___kont127899127900_))))
                                    (___kont127899127900_))))
                            (___kont127899127900_))
                        (___kont127899127900_))))
                (___kont127899127900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127899127900_))))
                                        (___kont127899127900_))))
                                (___kont127899127900_))
                            (___kont127899127900_))
                        (___kont127899127900_))))
                (___kont127899127900_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121260_ _id121261_ _clauses121262_ _gensym?121263_)
        (let _lp121265_ ((_rest121267_ _clauses121262_)
                         (_ids121268_ '())
                         (_impls121269_ '())
                         (_clauses121270_ '()))
          (let* ((_rest121271121279_ _rest121267_)
                 (_else121273121287_
                  (lambda ()
                    (values (reverse _ids121268_)
                            (reverse _impls121269_)
                            (reverse _clauses121270_))))
                 (_K121275121492_
                  (lambda (_rest121290_ _clause121291_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121291_))
                        (let ((__tmp128974
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121291_ _clauses121270_))))
                          (declare (not safe))
                          (_lp121265_
                           _rest121290_
                           _ids121268_
                           _impls121269_
                           __tmp128974))
                        (let* ((_g121293121304_
                                (lambda (_g121294121301_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121294121301_))))
                               (_g121292121489_
                                (lambda (_g121294121307_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121294121307_))
                                      (let ((_e121299121309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121294121307_))))
                                        (let ((_hd121298121312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121299121309_)))
                                              (_tl121297121314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121299121309_))))
                                          ((lambda (_L121317_ _L121318_)
                                             (let* ((_id121335_
                                                     (let ((__tmp128921
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121261_)))
                                                           (__tmp128920
                                                            (length _clauses121270_))
                                                           (__tmp128919
                                                            (if _gensym?121263_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128921
                                                        '"__"
                                                        __tmp128920
                                                        __tmp128919)))
                                                    (_id121337_
                                                     (let ((__tmp128922
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121260_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121335_
                                                        __tmp128922)))
                                                    (_impl121339_
                                                     (let ((__tmp128923
                                                            (let ((__tmp128925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128924
                           (let ()
                             (declare (not safe))
                             (cons _L121318_ _L121317_))))
                      (declare (not safe))
                      (cons __tmp128925 __tmp128924))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128923 _stx121260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121486_
                                                     (let* ((___stx128279128280_
                                                             _L121318_)
                                                            (_g121343121371_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128279128280_)))))
               (let ((___kont128281128282_
                      (lambda (_L121465_)
                        (let ((__tmp128926
                               (let ((__tmp128927
                                      (let ((__tmp128928
                                             (let ((__tmp128929
                                                    (let ((__tmp128935
                                                           (let ((__tmp128936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121337_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128936)))
                  (__tmp128930
                   (let ((__tmp128931
                          (lambda (_g121475121478_ _g121476121480_)
                            (let ((__tmp128932
                                   (let ((__tmp128934
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128933
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121475121478_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128934 __tmp128933))))
                              (declare (not safe))
                              (cons __tmp128932 _g121476121480_)))))
                     (declare (not safe))
                     (foldr1 __tmp128931 '() _L121465_))))
              (declare (not safe))
              (cons __tmp128935 __tmp128930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128929))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128928
                                         _stx121260_))))
                                 (declare (not safe))
                                 (cons __tmp128927 '()))))
                          (declare (not safe))
                          (cons _L121318_ __tmp128926))))
                     (___kont128285128286_
                      (lambda (_L121416_ _L121417_)
                        (let ((__tmp128937
                               (let ((__tmp128938
                                      (let ((__tmp128939
                                             (let ((__tmp128940
                                                    (let ((__tmp128954
                                                           (let ((__tmp128955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128955)))
                  (__tmp128941
                   (let ((__tmp128952
                          (let ((__tmp128953
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121337_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128953)))
                         (__tmp128942
                          (let ((__tmp128948
                                 (let ((__tmp128949
                                        (let ((__tmp128951
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128950
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121416_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128951 __tmp128950))))
                                   (declare (not safe))
                                   (cons __tmp128949 '())))
                                (__tmp128943
                                 (let ((__tmp128944
                                        (lambda (_g121428121431_
                                                 _g121429121433_)
                                          (let ((__tmp128945
                                                 (let ((__tmp128947
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128946
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121428121431_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128947
                                                         __tmp128946))))
                                            (declare (not safe))
                                            (cons __tmp128945
                                                  _g121429121433_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128944 '() _L121417_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128948 __tmp128943))))
                     (declare (not safe))
                     (cons __tmp128952 __tmp128942))))
              (declare (not safe))
              (cons __tmp128954 __tmp128941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128940))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128939
                                         _stx121260_))))
                                 (declare (not safe))
                                 (cons __tmp128938 '()))))
                          (declare (not safe))
                          (cons _L121318_ __tmp128937))))
                     (___kont128289128290_
                      (lambda (_L121376_)
                        (let ((__tmp128956
                               (let ((__tmp128957
                                      (let ((__tmp128958
                                             (let ((__tmp128959
                                                    (let ((__tmp128967
                                                           (let ((__tmp128968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128968)))
                  (__tmp128960
                   (let ((__tmp128965
                          (let ((__tmp128966
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121337_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128966)))
                         (__tmp128961
                          (let ((__tmp128962
                                 (let ((__tmp128964
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128963
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121376_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128964 __tmp128963))))
                            (declare (not safe))
                            (cons __tmp128962 '()))))
                     (declare (not safe))
                     (cons __tmp128965 __tmp128961))))
              (declare (not safe))
              (cons __tmp128967 __tmp128960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128959))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128958
                                         _stx121260_))))
                                 (declare (not safe))
                                 (cons __tmp128957 '()))))
                          (declare (not safe))
                          (cons _L121318_ __tmp128956)))))
                 (let* ((___match128304128305_
                         (lambda (___splice128287128288_
                                  _target121357121392_
                                  _tl121359121394_)
                           (letrec ((_loop121360121397_
                                     (lambda (_hd121358121400_
                                              _arg121364121402_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121358121400_))
                                           (let ((_e121361121405_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121358121400_))))
                                             (let ((_lp-tl121363121410_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121361121405_)))
                                                   (_lp-hd121362121408_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121361121405_))))
                                               (let ((__tmp128969
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121362121408_
                                                              _arg121364121402_))))
                                                 (declare (not safe))
                                                 (_loop121360121397_
                                                  _lp-tl121363121410_
                                                  __tmp128969))))
                                           (let ((_arg121365121413_
                                                  (reverse _arg121364121402_)))
                                             (___kont128285128286_
                                              _tl121359121394_
                                              _arg121365121413_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121360121397_
                                _target121357121392_
                                '())))))
                        (___match128298128299_
                         (lambda (___splice128283128284_
                                  _target121346121441_
                                  _tl121348121443_)
                           (letrec ((_loop121349121446_
                                     (lambda (_hd121347121449_
                                              _arg121353121451_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121347121449_))
                                           (let ((_e121350121454_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121347121449_))))
                                             (let ((_lp-tl121352121459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121350121454_)))
                                                   (_lp-hd121351121457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121350121454_))))
                                               (let ((__tmp128970
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121351121457_
                                                              _arg121353121451_))))
                                                 (declare (not safe))
                                                 (_loop121349121446_
                                                  _lp-tl121352121459_
                                                  __tmp128970))))
                                           (let ((_arg121354121462_
                                                  (reverse _arg121353121451_)))
                                             (___kont128281128282_
                                              _arg121354121462_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121349121446_
                                _target121346121441_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128279128280_))
                       (let ((___splice128283128284_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128279128280_
                                 '0))))
                         (let ((_tl121348121443_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128283128284_ '1)))
                               (_target121346121441_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128283128284_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121348121443_))
                               (___match128298128299_
                                ___splice128283128284_
                                _target121346121441_
                                _tl121348121443_)
                               (___match128304128305_
                                ___splice128283128284_
                                _target121346121441_
                                _tl121348121443_))))
                       (___kont128289128290_ ___stx128279128280_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128973
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121337_
                                                              _ids121268_)))
                                                     (__tmp128972
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121339_
                                                              _impls121269_)))
                                                     (__tmp128971
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121486_
                                                              _clauses121270_))))
                                                 (declare (not safe))
                                                 (_lp121265_
                                                  _rest121290_
                                                  __tmp128973
                                                  __tmp128972
                                                  __tmp128971))))
                                           _tl121297121314_
                                           _hd121298121312_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121293121304_ _g121294121307_))))))
                          (declare (not safe))
                          (_g121292121489_ _clause121291_))))))
            (if (let () (declare (not safe)) (##pair? _rest121271121279_))
                (let ((_hd121276121495_
                       (let ()
                         (declare (not safe))
                         (##car _rest121271121279_)))
                      (_tl121277121497_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121271121279_))))
                  (let* ((_clause121500_ _hd121276121495_)
                         (_rest121502_ _tl121277121497_))
                    (declare (not safe))
                    (_K121275121492_ _rest121502_ _clause121500_)))
                (let () (declare (not safe)) (_else121273121287_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121507_ _id121508_ _clauses121509_)
        (let ((_gensym?121511_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121507_
           _id121508_
           _clauses121509_
           _gensym?121511_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128976_
        (let ((_g128975_ (let () (declare (not safe)) (##length _g128976_))))
          (cond ((let () (declare (not safe)) (##fx= _g128975_ 3))
                 (apply (lambda (_stx121507_ _id121508_ _clauses121509_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121507_
                             _id121508_
                             _clauses121509_)))
                        _g128976_))
                ((let () (declare (not safe)) (##fx= _g128975_ 4))
                 (apply (lambda (_stx121513_
                                 _id121514_
                                 _clauses121515_
                                 _gensym?121516_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121513_
                             _id121514_
                             _clauses121515_
                             _gensym?121516_)))
                        _g128976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128976_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120537_)
        (letrec ((_case-lambda-clause-def120539_
                  (lambda (_id121256_ _impl121257_)
                    (let ((__tmp128977
                           (let ((__tmp128978
                                  (let ((__tmp128981
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121256_ '())))
                                        (__tmp128979
                                         (let ((__tmp128980
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl121257_))))
                                           (declare (not safe))
                                           (cons __tmp128980 '()))))
                                    (declare (not safe))
                                    (cons __tmp128981 __tmp128979))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128978))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128977 _stx120537_))))
                 (_opt-lambda-dispatch-name120540_
                  (lambda (_id121252_)
                    (if (uninterned-symbol? _id121252_)
                        (let ((_str121254_ (symbol->string _id121252_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121254_))
                              '"%"
                              _id121252_))
                        _id121252_)))
                 (_kw-lambda-dispatch-name120541_
                  (lambda (_id121247_ _name121248_)
                    (if (uninterned-symbol? _id121247_)
                        (let ((_str121250_ (symbol->string _id121247_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121250_))
                              _name121248_
                              _id121247_))
                        _id121247_))))
          (let* ((___stx128327128328_ _stx120537_)
                 (_g120546120605_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128327128328_)))))
            (let ((___kont128329128330_
                   (lambda (_L121156_ _L121157_)
                     (let* ((___stx128307128308_ _L121156_)
                            (_g121174121188_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128307128308_)))))
                       (let ((___kont128309128310_
                              (lambda (_L121232_) _stx120537_))
                             (___kont128311128312_
                              (lambda (_L121201_)
                                (let ((_g128982_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120537_
                                          _L121157_
                                          _L121201_))))
                                  (begin
                                    (let ((_g128983_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128982_)
                                                 (##vector-length _g128982_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128983_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128983_)))
                                    (let ((_ids121211_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128982_ 0)))
                                          (_impls121212_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128982_ 1)))
                                          (_clauses121213_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128982_ 2))))
                                      (let* ((_g128984_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121211_))
                                             (_defs121216_
                                              (map _case-lambda-clause-def120539_
                                                   _ids121211_
                                                   _impls121212_)))
                                        (let ((__tmp128986
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121157_)))
                                              (__tmp128985
                                               (map gxc#identifier-symbol
                                                    _ids121211_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128986
                                           '" => "
                                           __tmp128985))
                                        (let ((__tmp128987
                                               (let ((__tmp128988
                                                      (let ((__tmp128989
                                                             (let ((__tmp128990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128991
                                   (let ((__tmp128992
                                          (let ((__tmp128997
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121157_ '())))
                                                (__tmp128993
                                                 (let ((__tmp128994
                                                        (let ((__tmp128996
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121213_)))
                      (__tmp128995
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128996 __tmp128995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128994 '()))))
                                            (declare (not safe))
                                            (cons __tmp128997 __tmp128993))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128992))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128991
                               _stx120537_))))
                       (declare (not safe))
                       (cons __tmp128990 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128989 _defs121216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128988))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128987
                                           _stx120537_)))))))))
                         (let ((___match128318128319_
                                (lambda (_e121179121224_
                                         _hd121178121227_
                                         _tl121177121229_)
                                  (let ((_L121232_ _tl121177121229_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121232_))
                                        (___kont128309128310_ _L121232_)
                                        (___kont128311128312_
                                         _tl121177121229_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128307128308_))
                               (let ((_e121179121224_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128307128308_))))
                                 (let ((_tl121177121229_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121179121224_)))
                                       (_hd121178121227_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121179121224_))))
                                   (___match128318128319_
                                    _e121179121224_
                                    _hd121178121227_
                                    _tl121177121229_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121174121188_))))))))
                  (___kont128331128332_
                   (lambda (_L120974_ _L120975_)
                     (let* ((_g120991121021_
                             (lambda (_g120992121018_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120992121018_))))
                            (_g120990121116_
                             (lambda (_g120992121024_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120992121024_))
                                   (let ((_e120998121026_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120992121024_))))
                                     (let ((_hd120997121029_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120998121026_)))
                                           (_tl120996121031_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120998121026_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120996121031_))
                                           (let ((_e121001121034_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120996121031_))))
                                             (let ((_hd121000121037_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121001121034_)))
                                                   (_tl120999121039_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121001121034_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121000121037_))
                                                   (let ((_e121004121042_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121000121037_))))
                                                     (let ((_hd121003121045_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121004121042_)))
                                                           (_tl121002121047_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121004121042_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121003121045_))
                                                           (let ((_e121007121050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121003121045_))))
                     (let ((_hd121006121053_
                            (let ()
                              (declare (not safe))
                              (##car _e121007121050_)))
                           (_tl121005121055_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121007121050_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121006121053_))
                           (let ((_e121010121058_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121006121053_))))
                             (let ((_hd121009121061_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121010121058_)))
                                   (_tl121008121063_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121010121058_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121008121063_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121005121055_))
                                       (let ((_e121013121066_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121005121055_))))
                                         (let ((_hd121012121069_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121013121066_)))
                                               (_tl121011121071_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121013121066_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121011121071_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121002121047_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120999121039_))
                                                       (let ((_e121016121074_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120999121039_))))
                 (let ((_hd121015121077_
                        (let () (declare (not safe)) (##car _e121016121074_)))
                       (_tl121014121079_
                        (let () (declare (not safe)) (##cdr _e121016121074_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121014121079_))
                       ((lambda (_L121082_ _L121083_ _L121084_)
                          (let* ((_lambda-id121108_
                                  (let ((__tmp129000
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120975_)))
                                        (__tmp128998
                                         (let ((__tmp128999
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121084_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120540_
                                            __tmp128999))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129000
                                     '"__"
                                     __tmp128998)))
                                 (_lambda-id121110_
                                  (let ((__tmp129001
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120537_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121108_
                                     __tmp129001)))
                                 (_g129002_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121110_)))
                                 (_new-case-lambda-expr121113_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121082_
                                     _L121084_
                                     _lambda-id121110_))))
                            (let ((__tmp129004
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120975_)))
                                  (__tmp129003
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121110_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129004
                               '" => "
                               __tmp129003))
                            (let ((__tmp129005
                                   (let ((__tmp129006
                                          (let ((__tmp129014
                                                 (let ((__tmp129015
                                                        (let ((__tmp129016
                                                               (let ((__tmp129019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121110_ '())))
                             (__tmp129017
                              (let ((__tmp129018
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L121083_))))
                                (declare (not safe))
                                (cons __tmp129018 '()))))
                         (declare (not safe))
                         (cons __tmp129019 __tmp129017))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129015
                                                    _stx120537_)))
                                                (__tmp129007
                                                 (let ((__tmp129008
                                                        (let ((__tmp129009
                                                               (let ((__tmp129010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129011
                                     (let ((__tmp129013
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120975_ '())))
                                           (__tmp129012
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121113_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129013 __tmp129012))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129011))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129010 _stx120537_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp129009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129008 '()))))
                                            (declare (not safe))
                                            (cons __tmp129014 __tmp129007))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129006))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129005
                               _stx120537_))))
                        _hd121015121077_
                        _hd121012121069_
                        _hd121009121061_)
                       (let ()
                         (declare (not safe))
                         (_g120991121021_ _g120992121024_)))))
               (let () (declare (not safe)) (_g120991121021_ _g120992121024_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120991121021_
                                                      _g120992121024_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120991121021_
                                                  _g120992121024_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120991121021_ _g120992121024_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120991121021_ _g120992121024_)))))
                           (let ()
                             (declare (not safe))
                             (_g120991121021_ _g120992121024_)))))
                   (let ()
                     (declare (not safe))
                     (_g120991121021_ _g120992121024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120991121021_
                                                      _g120992121024_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120991121021_
                                              _g120992121024_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120991121021_ _g120992121024_))))))
                       (declare (not safe))
                       (_g120990121116_ _L120974_))))
                  (___kont128333128334_
                   (lambda (_L120688_ _L120689_)
                     (let* ((_g120705120758_
                             (lambda (_g120706120755_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120706120755_))))
                            (_g120704120934_
                             (lambda (_g120706120761_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120706120761_))
                                   (let ((_e120714120763_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120706120761_))))
                                     (let ((_hd120713120766_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120714120763_)))
                                           (_tl120712120768_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120714120763_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120712120768_))
                                           (let ((_e120717120771_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120712120768_))))
                                             (let ((_hd120716120774_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120717120771_)))
                                                   (_tl120715120776_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120717120771_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120716120774_))
                                                   (let ((_e120720120779_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120716120774_))))
                                                     (let ((_hd120719120782_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120720120779_)))
                                                           (_tl120718120784_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120720120779_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120719120782_))
                                                           (let ((_e120723120787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120719120782_))))
                     (let ((_hd120722120790_
                            (let ()
                              (declare (not safe))
                              (##car _e120723120787_)))
                           (_tl120721120792_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120723120787_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120722120790_))
                           (let ((_e120726120795_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120722120790_))))
                             (let ((_hd120725120798_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120726120795_)))
                                   (_tl120724120800_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120726120795_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120724120800_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120721120792_))
                                       (let ((_e120729120803_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120721120792_))))
                                         (let ((_hd120728120806_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120729120803_)))
                                               (_tl120727120808_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120729120803_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120728120806_))
                                               (let ((_e120732120811_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120728120806_))))
                                                 (let ((_hd120731120814_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120732120811_)))
                                                       (_tl120730120816_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120732120811_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120730120816_))
                                                       (let ((_e120735120819_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120730120816_))))
                 (let ((_hd120734120822_
                        (let () (declare (not safe)) (##car _e120735120819_)))
                       (_tl120733120824_
                        (let () (declare (not safe)) (##cdr _e120735120819_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120734120822_))
                       (let ((_e120738120827_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120734120822_))))
                         (let ((_hd120737120830_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120738120827_)))
                               (_tl120736120832_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120738120827_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120737120830_))
                               (let ((_e120741120835_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120737120830_))))
                                 (let ((_hd120740120838_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120741120835_)))
                                       (_tl120739120840_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120741120835_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120740120838_))
                                       (let ((_e120744120843_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120740120838_))))
                                         (let ((_hd120743120846_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120744120843_)))
                                               (_tl120742120848_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120744120843_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120742120848_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120739120840_))
                                                   (let ((_e120747120851_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120739120840_))))
                                                     (let ((_hd120746120854_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120747120851_)))
                                                           (_tl120745120856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120747120851_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120745120856_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120736120832_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120733120824_))
                           (let ((_e120750120859_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120733120824_))))
                             (let ((_hd120749120862_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120750120859_)))
                                   (_tl120748120864_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120750120859_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120748120864_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120727120808_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120718120784_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120715120776_))
                                               (let ((_e120753120867_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120715120776_))))
                                                 (let ((_hd120752120870_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120753120867_)))
                                                       (_tl120751120872_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120753120867_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120751120872_))
                                                       ((lambda (_L120875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120876_
                         _L120877_
                         _L120878_
                         _L120879_)
                  (let* ((_get-kws-id120919_
                          (let ((__tmp129022
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120689_)))
                                (__tmp129020
                                 (let ((__tmp129021
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120879_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120541_
                                    __tmp129021
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129022 '"__" __tmp129020)))
                         (_get-kws-id120921_
                          (let ((__tmp129023
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120537_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120919_
                             __tmp129023)))
                         (_main-id120923_
                          (let ((__tmp129026
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120689_)))
                                (__tmp129024
                                 (let ((__tmp129025
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120878_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120541_
                                    __tmp129025
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129026 '"__" __tmp129024)))
                         (_main-id120925_
                          (let ((__tmp129027
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120537_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120923_
                             __tmp129027)))
                         (_g129028_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120921_)))
                         (_g129029_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120925_)))
                         (_new-kw-dispatch120929_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120875_
                             _L120879_
                             _get-kws-id120921_)))
                         (_new-get-kws120931_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120876_
                             _L120878_
                             _main-id120925_))))
                    (let ((__tmp129032
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120689_)))
                          (__tmp129031
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120921_)))
                          (__tmp129030
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120925_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129032
                       '" => "
                       __tmp129031
                       '" => "
                       __tmp129030))
                    (let ((__tmp129033
                           (let ((__tmp129034
                                  (let ((__tmp129047
                                         (let ((__tmp129048
                                                (let ((__tmp129049
                                                       (let ((__tmp129050
                                                              (let ((__tmp129052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120925_ '())))
                            (__tmp129051
                             (let ()
                               (declare (not safe))
                               (cons _L120877_ '()))))
                        (declare (not safe))
                        (cons __tmp129052 __tmp129051))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129049
                                                   _stx120537_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp129048)))
                                        (__tmp129035
                                         (let ((__tmp129042
                                                (let ((__tmp129043
                                                       (let ((__tmp129044
                                                              (let ((__tmp129046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120921_ '())))
                            (__tmp129045
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120931_ '()))))
                        (declare (not safe))
                        (cons __tmp129046 __tmp129045))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129043
                                                   _stx120537_)))
                                               (__tmp129036
                                                (let ((__tmp129037
                                                       (let ((__tmp129038
                                                              (let ((__tmp129039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129041
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120689_ '())))
                                   (__tmp129040
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120929_ '()))))
                               (declare (not safe))
                               (cons __tmp129041 __tmp129040))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129039))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129038 _stx120537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129037 '()))))
                                           (declare (not safe))
                                           (cons __tmp129042 __tmp129036))))
                                    (declare (not safe))
                                    (cons __tmp129047 __tmp129035))))
                             (declare (not safe))
                             (cons '%#begin __tmp129034))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129033 _stx120537_))))
                _hd120752120870_
                _hd120749120862_
                _hd120746120854_
                _hd120743120846_
                _hd120725120798_)
               (let ()
                 (declare (not safe))
                 (_g120705120758_ _g120706120761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120705120758_
                                                  _g120706120761_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120705120758_
                                              _g120706120761_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120705120758_ _g120706120761_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120705120758_ _g120706120761_)))))
                           (let ()
                             (declare (not safe))
                             (_g120705120758_ _g120706120761_)))
                       (let ()
                         (declare (not safe))
                         (_g120705120758_ _g120706120761_)))
                   (let ()
                     (declare (not safe))
                     (_g120705120758_ _g120706120761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120705120758_
                                                      _g120706120761_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120705120758_
                                                  _g120706120761_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120705120758_ _g120706120761_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120705120758_ _g120706120761_)))))
                       (let ()
                         (declare (not safe))
                         (_g120705120758_ _g120706120761_)))))
               (let ()
                 (declare (not safe))
                 (_g120705120758_ _g120706120761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120705120758_
                                                  _g120706120761_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120705120758_ _g120706120761_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120705120758_ _g120706120761_)))))
                           (let ()
                             (declare (not safe))
                             (_g120705120758_ _g120706120761_)))))
                   (let ()
                     (declare (not safe))
                     (_g120705120758_ _g120706120761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120705120758_
                                                      _g120706120761_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120705120758_
                                              _g120706120761_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120705120758_ _g120706120761_))))))
                       (declare (not safe))
                       (_g120704120934_ _L120688_))))
                  (___kont128335128336_
                   (lambda (_L120634_ _L120635_)
                     (let ((__tmp129053
                            (let ((__tmp129054
                                   (let ((__tmp129055
                                          (let ((__tmp129056
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120634_))))
                                            (declare (not safe))
                                            (cons __tmp129056 '()))))
                                     (declare (not safe))
                                     (cons _L120635_ __tmp129055))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129054))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129053 _stx120537_)))))
              (let* ((___match128420128421_
                      (lambda (_e120580120656_
                               _hd120579120659_
                               _tl120578120661_
                               _e120583120664_
                               _hd120582120667_
                               _tl120581120669_
                               _e120586120672_
                               _hd120585120675_
                               _tl120584120677_
                               _e120589120680_
                               _hd120588120683_
                               _tl120587120685_)
                        (let ((_L120688_ _hd120588120683_)
                              (_L120689_ _hd120585120675_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120689_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120688_)))
                              (___kont128333128334_ _L120688_ _L120689_)
                              (___kont128335128336_
                               _hd120588120683_
                               _hd120582120667_)))))
                     (___match128392128393_
                      (lambda (_e120566120942_
                               _hd120565120945_
                               _tl120564120947_
                               _e120569120950_
                               _hd120568120953_
                               _tl120567120955_
                               _e120572120958_
                               _hd120571120961_
                               _tl120570120963_
                               _e120575120966_
                               _hd120574120969_
                               _tl120573120971_)
                        (let ((_L120974_ _hd120574120969_)
                              (_L120975_ _hd120571120961_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120975_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120974_)))
                              (___kont128331128332_ _L120974_ _L120975_)
                              (___match128420128421_
                               _e120566120942_
                               _hd120565120945_
                               _tl120564120947_
                               _e120569120950_
                               _hd120568120953_
                               _tl120567120955_
                               _e120572120958_
                               _hd120571120961_
                               _tl120570120963_
                               _e120575120966_
                               _hd120574120969_
                               _tl120573120971_)))))
                     (___match128364128365_
                      (lambda (_e120552121124_
                               _hd120551121127_
                               _tl120550121129_
                               _e120555121132_
                               _hd120554121135_
                               _tl120553121137_
                               _e120558121140_
                               _hd120557121143_
                               _tl120556121145_
                               _e120561121148_
                               _hd120560121151_
                               _tl120559121153_)
                        (let ((_L121156_ _hd120560121151_)
                              (_L121157_ _hd120557121143_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121157_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121156_)))
                              (___kont128329128330_ _L121156_ _L121157_)
                              (___match128392128393_
                               _e120552121124_
                               _hd120551121127_
                               _tl120550121129_
                               _e120555121132_
                               _hd120554121135_
                               _tl120553121137_
                               _e120558121140_
                               _hd120557121143_
                               _tl120556121145_
                               _e120561121148_
                               _hd120560121151_
                               _tl120559121153_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128327128328_))
                    (let ((_e120552121124_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128327128328_))))
                      (let ((_tl120550121129_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120552121124_)))
                            (_hd120551121127_
                             (let ()
                               (declare (not safe))
                               (##car _e120552121124_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120550121129_))
                            (let ((_e120555121132_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120550121129_))))
                              (let ((_tl120553121137_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120555121132_)))
                                    (_hd120554121135_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120555121132_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120554121135_))
                                    (let ((_e120558121140_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120554121135_))))
                                      (let ((_tl120556121145_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120558121140_)))
                                            (_hd120557121143_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120558121140_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120556121145_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120553121137_))
                                                (let ((_e120561121148_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120553121137_))))
                                                  (let ((_tl120559121153_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120561121148_)))
                                                        (_hd120560121151_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120561121148_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120559121153_))
                                                        (___match128364128365_
                                                         _e120552121124_
                                                         _hd120551121127_
                                                         _tl120550121129_
                                                         _e120555121132_
                                                         _hd120554121135_
                                                         _tl120553121137_
                                                         _e120558121140_
                                                         _hd120557121143_
                                                         _tl120556121145_
                                                         _e120561121148_
                                                         _hd120560121151_
                                                         _tl120559121153_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120546120605_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120546120605_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120553121137_))
                                                (let ((_e120600120626_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120553121137_))))
                                                  (let ((_tl120598120631_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120600120626_)))
                                                        (_hd120599120629_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120600120626_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120598120631_))
                                                        (___kont128335128336_
                                                         _hd120599120629_
                                                         _hd120554121135_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120546120605_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120546120605_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120553121137_))
                                        (let ((_e120600120626_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120553121137_))))
                                          (let ((_tl120598120631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120600120626_)))
                                                (_hd120599120629_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120600120626_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120598120631_))
                                                (___kont128335128336_
                                                 _hd120599120629_
                                                 _hd120554121135_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120546120605_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120546120605_))))))
                            (let () (declare (not safe)) (_g120546120605_)))))
                    (let () (declare (not safe)) (_g120546120605_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119469_)
        (letrec* ((_bind-e__126723126724_
                   (lambda (_id120521_ _expr120522_ _compile?120523_)
                     (let ((__tmp129059
                            (let ()
                              (declare (not safe))
                              (cons _id120521_ '())))
                           (__tmp129057
                            (let ((__tmp129058
                                   (if _compile?120523_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120522_))
                                       _expr120522_)))
                              (declare (not safe))
                              (cons __tmp129058 '()))))
                       (declare (not safe))
                       (cons __tmp129059 __tmp129057))))
                  (_bind-e__0__126725126726_
                   (lambda (_id120528_ _expr120529_)
                     (let ((_compile?120531_ '#t))
                       (declare (not safe))
                       (_bind-e__126723126724_
                        _id120528_
                        _expr120529_
                        _compile?120531_))))
                  (_bind-e119471_
                   (lambda _g129061_
                     (let ((_g129060_
                            (let ()
                              (declare (not safe))
                              (##length _g129061_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129060_ 2))
                              (apply (lambda (_id120528_ _expr120529_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126725126726_
                                          _id120528_
                                          _expr120529_)))
                                     _g129061_))
                             ((let () (declare (not safe)) (##fx= _g129060_ 3))
                              (apply (lambda (_id120533_
                                              _expr120534_
                                              _compile?120535_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126723126724_
                                          _id120533_
                                          _expr120534_
                                          _compile?120535_)))
                                     _g129061_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129061_))))))
                  (_compile-bindings119472_
                   (lambda (_bindings120105_)
                     (let _lp120107_ ((_rest120109_ _bindings120105_)
                                      (_lift1120110_ '())
                                      (_lift2120111_ '())
                                      (_bind120112_ '()))
                       (let* ((_rest120113120121_ _rest120109_)
                              (_else120115120129_
                               (lambda ()
                                 (values (reverse _lift1120110_)
                                         (reverse _lift2120111_)
                                         (reverse _bind120112_))))
                              (_K120117120508_
                               (lambda (_rest120132_ _hd120133_)
                                 (let* ((___stx128463128464_ _hd120133_)
                                        (_g120137120173_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128463128464_)))))
                                   (let ((___kont128465128466_
                                          (lambda (_L120415_ _L120416_)
                                            (let* ((___stx128443128444_
                                                    _L120415_)
                                                   (_g120431120445_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128443128444_)))))
                                              (let ((___kont128445128446_
                                                     (lambda (_L120493_)
                                                       (let ((__tmp129062
                                                              (let ((__tmp129063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126723126724_
                                _L120416_
                                _L120415_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129063 _bind120112_))))
                 (declare (not safe))
                 (_lp120107_
                  _rest120132_
                  _lift1120110_
                  _lift2120111_
                  __tmp129062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128447128448_
                                                     (lambda (_L120458_)
                                                       (let ((_g129064_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119469_
                         _L120416_
                         _L120458_
                         '#t))))
                 (begin
                   (let ((_g129065_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129064_)
                                (##vector-length _g129064_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129065_ 3)))
                         (error "Context expects 3 values" _g129065_)))
                   (let ((_ids120468_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129064_ 0)))
                         (_impls120469_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129064_ 1)))
                         (_clauses120470_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129064_ 2))))
                     (let* ((_g129066_
                             (for-each gx#core-bind-runtime! _ids120468_))
                            (_xbind120473_
                             (map _bind-e119471_ _ids120468_ _impls120469_))
                            (_expr*120475_
                             (let ((__tmp129068
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120470_)))
                                   (__tmp129067
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129068
                                __tmp129067)))
                            (_bind*120477_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126723126724_
                                _L120416_
                                _expr*120475_
                                '#f))))
                       (let ((__tmp129070
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120416_)))
                             (__tmp129069
                              (map gxc#identifier-symbol _ids120468_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129070
                          '" => "
                          __tmp129069))
                       (let ((__tmp129072
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120111_ _xbind120473_)))
                             (__tmp129071
                              (let ()
                                (declare (not safe))
                                (cons _bind*120477_ _bind120112_))))
                         (declare (not safe))
                         (_lp120107_
                          _rest120132_
                          _lift1120110_
                          __tmp129072
                          __tmp129071)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128454128455_
                                                       (lambda (_e120436120485_
                                                                _hd120435120488_
                                                                _tl120434120490_)
                                                         (let ((_L120493_
                                                                _tl120434120490_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120493_))
                       (___kont128445128446_ _L120493_)
                       (___kont128447128448_ _tl120434120490_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128443128444_))
                                                      (let ((_e120436120485_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128443128444_))))
                (let ((_tl120434120490_
                       (let () (declare (not safe)) (##cdr _e120436120485_)))
                      (_hd120435120488_
                       (let () (declare (not safe)) (##car _e120436120485_))))
                  (___match128454128455_
                   _e120436120485_
                   _hd120435120488_
                   _tl120434120490_)))
              (let () (declare (not safe)) (_g120431120445_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128467128468_
                                          (lambda (_L120243_ _L120244_)
                                            (let* ((_g120258120288_
                                                    (lambda (_g120259120285_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120259120285_))))
                                                   (_g120257120383_
                                                    (lambda (_g120259120291_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120259120291_))
                                                          (let ((_e120265120293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120259120291_))))
                    (let ((_hd120264120296_
                           (let ()
                             (declare (not safe))
                             (##car _e120265120293_)))
                          (_tl120263120298_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120265120293_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120263120298_))
                          (let ((_e120268120301_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120263120298_))))
                            (let ((_hd120267120304_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120268120301_)))
                                  (_tl120266120306_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120268120301_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120267120304_))
                                  (let ((_e120271120309_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120267120304_))))
                                    (let ((_hd120270120312_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120271120309_)))
                                          (_tl120269120314_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120271120309_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120270120312_))
                                          (let ((_e120274120317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120270120312_))))
                                            (let ((_hd120273120320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120274120317_)))
                                                  (_tl120272120322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120274120317_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120273120320_))
                                                  (let ((_e120277120325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120273120320_))))
                                                    (let ((_hd120276120328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120277120325_)))
                                                          (_tl120275120330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120277120325_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120275120330_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120272120322_))
                      (let ((_e120280120333_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120272120322_))))
                        (let ((_hd120279120336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120280120333_)))
                              (_tl120278120338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120280120333_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120278120338_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120269120314_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120266120306_))
                                      (let ((_e120283120341_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120266120306_))))
                                        (let ((_hd120282120344_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120283120341_)))
                                              (_tl120281120346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120283120341_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120281120346_))
                                              ((lambda (_L120349_
                                                        _L120350_
                                                        _L120351_)
                                                 (let* ((_lambda-id120375_
                                                         (let ((__tmp129074
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120244_)))
                       (__tmp129073 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129074 __tmp129073)))
                (_lambda-id120377_
                 (let ((__tmp129075
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119469_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120375_ __tmp129075)))
                (_g129076_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120377_)))
                (_new-case-lambda-expr120380_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120349_
                    _L120351_
                    _lambda-id120377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129078
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120244_)))
                                                         (__tmp129077
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120377_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129078
                                                      '" => "
                                                      __tmp129077))
                                                   (let ((__tmp129081
                                                          (let ((__tmp129082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126723126724_
                            _L120244_
                            _new-case-lambda-expr120380_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129082 _rest120132_)))
                 (__tmp129079
                  (let ((__tmp129080
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126725126726_
                            _lambda-id120377_
                            _L120350_))))
                    (declare (not safe))
                    (cons __tmp129080 _lift1120110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120107_
                                                      __tmp129081
                                                      __tmp129079
                                                      _lift2120111_
                                                      _bind120112_))))
                                               _hd120282120344_
                                               _hd120279120336_
                                               _hd120276120328_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120258120288_
                                                 _g120259120291_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120258120288_ _g120259120291_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120258120288_ _g120259120291_)))
                              (let ()
                                (declare (not safe))
                                (_g120258120288_ _g120259120291_)))))
                      (let ()
                        (declare (not safe))
                        (_g120258120288_ _g120259120291_)))
                  (let ()
                    (declare (not safe))
                    (_g120258120288_ _g120259120291_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120258120288_
                                                     _g120259120291_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120258120288_
                                             _g120259120291_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120258120288_ _g120259120291_)))))
                          (let ()
                            (declare (not safe))
                            (_g120258120288_ _g120259120291_)))))
                  (let ()
                    (declare (not safe))
                    (_g120258120288_ _g120259120291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120257120383_ _L120243_))))
                                         (___kont128469128470_
                                          (lambda (_L120194_ _L120195_)
                                            (let ((__tmp129083
                                                   (let ((__tmp129084
                                                          (let ((__tmp129085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129086
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L120194_))))
                           (declare (not safe))
                           (cons __tmp129086 '()))))
                    (declare (not safe))
                    (cons _L120195_ __tmp129085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129084
                                                           _bind120112_))))
                                              (declare (not safe))
                                              (_lp120107_
                                               _rest120132_
                                               _lift1120110_
                                               _lift2120111_
                                               __tmp129083)))))
                                     (let* ((___match128514128515_
                                             (lambda (_e120154120219_
                                                      _hd120153120222_
                                                      _tl120152120224_
                                                      _e120157120227_
                                                      _hd120156120230_
                                                      _tl120155120232_
                                                      _e120160120235_
                                                      _hd120159120238_
                                                      _tl120158120240_)
                                               (let ((_L120243_
                                                      _hd120159120238_)
                                                     (_L120244_
                                                      _hd120156120230_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120244_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120243_)))
                                                     (___kont128467128468_
                                                      _L120243_
                                                      _L120244_)
                                                     (___kont128469128470_
                                                      _hd120159120238_
                                                      _hd120153120222_)))))
                                            (___match128492128493_
                                             (lambda (_e120143120391_
                                                      _hd120142120394_
                                                      _tl120141120396_
                                                      _e120146120399_
                                                      _hd120145120402_
                                                      _tl120144120404_
                                                      _e120149120407_
                                                      _hd120148120410_
                                                      _tl120147120412_)
                                               (let ((_L120415_
                                                      _hd120148120410_)
                                                     (_L120416_
                                                      _hd120145120402_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120416_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120415_)))
                                                     (___kont128465128466_
                                                      _L120415_
                                                      _L120416_)
                                                     (___match128514128515_
                                                      _e120143120391_
                                                      _hd120142120394_
                                                      _tl120141120396_
                                                      _e120146120399_
                                                      _hd120145120402_
                                                      _tl120144120404_
                                                      _e120149120407_
                                                      _hd120148120410_
                                                      _tl120147120412_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128463128464_))
                                           (let ((_e120143120391_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128463128464_))))
                                             (let ((_tl120141120396_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120143120391_)))
                                                   (_hd120142120394_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120143120391_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120142120394_))
                                                   (let ((_e120146120399_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120142120394_))))
                                                     (let ((_tl120144120404_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120146120399_)))
                                                           (_hd120145120402_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120146120399_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120144120404_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120141120396_))
                       (let ((_e120149120407_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120141120396_))))
                         (let ((_tl120147120412_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120149120407_)))
                               (_hd120148120410_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120149120407_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120147120412_))
                               (___match128492128493_
                                _e120143120391_
                                _hd120142120394_
                                _tl120141120396_
                                _e120146120399_
                                _hd120145120402_
                                _tl120144120404_
                                _e120149120407_
                                _hd120148120410_
                                _tl120147120412_)
                               (let ()
                                 (declare (not safe))
                                 (_g120137120173_)))))
                       (let () (declare (not safe)) (_g120137120173_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120141120396_))
                       (let ((_e120168120186_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120141120396_))))
                         (let ((_tl120166120191_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120168120186_)))
                               (_hd120167120189_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120168120186_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120166120191_))
                               (___kont128469128470_
                                _hd120167120189_
                                _hd120142120394_)
                               (let ()
                                 (declare (not safe))
                                 (_g120137120173_)))))
                       (let () (declare (not safe)) (_g120137120173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120141120396_))
                                                       (let ((_e120168120186_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120141120396_))))
                 (let ((_tl120166120191_
                        (let () (declare (not safe)) (##cdr _e120168120186_)))
                       (_hd120167120189_
                        (let () (declare (not safe)) (##car _e120168120186_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120166120191_))
                       (___kont128469128470_ _hd120167120189_ _hd120142120394_)
                       (let () (declare (not safe)) (_g120137120173_)))))
               (let () (declare (not safe)) (_g120137120173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120137120173_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120113120121_))
                             (let ((_hd120118120511_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120113120121_)))
                                   (_tl120119120513_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120113120121_))))
                               (let* ((_hd120516_ _hd120118120511_)
                                      (_rest120518_ _tl120119120513_))
                                 (declare (not safe))
                                 (_K120117120508_ _rest120518_ _hd120516_)))
                             (let ()
                               (declare (not safe))
                               (_else120115120129_)))))))
                  (_lift-kw-lambda?119473_
                   (lambda (_bind120029_)
                     (let* ((___stx128531128532_ _bind120029_)
                            (_g120032120049_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128531128532_)))))
                       (let ((___kont128533128534_
                              (lambda (_L120085_ _L120086_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120086_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120085_))
                                    '#f)))
                             (___kont128535128536_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128531128532_))
                             (let ((_e120038120061_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128531128532_))))
                               (let ((_tl120036120066_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120038120061_)))
                                     (_hd120037120064_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120038120061_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120037120064_))
                                     (let ((_e120041120069_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120037120064_))))
                                       (let ((_tl120039120074_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120041120069_)))
                                             (_hd120040120072_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120041120069_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120039120074_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120036120066_))
                                                 (let ((_e120044120077_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120036120066_))))
                                                   (let ((_tl120042120082_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120044120077_)))
                                                         (_hd120043120080_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120044120077_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120042120082_))
                                                         (___kont128533128534_
                                                          _hd120043120080_
                                                          _hd120040120072_)
                                                         (___kont128535128536_))))
                                                 (___kont128535128536_))
                                             (___kont128535128536_))))
                                     (___kont128535128536_))))
                             (___kont128535128536_))))))
                  (_lift-kw-lambda-bindings119474_
                   (lambda (_bindings119641_)
                     (let _lp119643_ ((_rest119645_ _bindings119641_)
                                      (_lift1119646_ '())
                                      (_lift2119647_ '())
                                      (_bind119648_ '()))
                       (let* ((_rest119649119657_ _rest119645_)
                              (_else119651119665_
                               (lambda ()
                                 (values (reverse _lift1119646_)
                                         (reverse _lift2119647_)
                                         (reverse _bind119648_))))
                              (_K119653120017_
                               (lambda (_rest119668_ _hd119669_)
                                 (let* ((___stx128561128562_ _hd119669_)
                                        (_g119672119697_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128561128562_)))))
                                   (let ((___kont128563128564_
                                          (lambda (_L119767_ _L119768_)
                                            (let* ((_g119782119835_
                                                    (lambda (_g119783119832_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119783119832_))))
                                                   (_g119781120011_
                                                    (lambda (_g119783119838_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119783119838_))
                                                          (let ((_e119791119840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119783119838_))))
                    (let ((_hd119790119843_
                           (let ()
                             (declare (not safe))
                             (##car _e119791119840_)))
                          (_tl119789119845_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119791119840_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119789119845_))
                          (let ((_e119794119848_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119789119845_))))
                            (let ((_hd119793119851_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119794119848_)))
                                  (_tl119792119853_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119794119848_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119793119851_))
                                  (let ((_e119797119856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119793119851_))))
                                    (let ((_hd119796119859_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119797119856_)))
                                          (_tl119795119861_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119797119856_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119796119859_))
                                          (let ((_e119800119864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119796119859_))))
                                            (let ((_hd119799119867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119800119864_)))
                                                  (_tl119798119869_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119800119864_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119799119867_))
                                                  (let ((_e119803119872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119799119867_))))
                                                    (let ((_hd119802119875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119803119872_)))
                                                          (_tl119801119877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119803119872_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119801119877_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119798119869_))
                      (let ((_e119806119880_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119798119869_))))
                        (let ((_hd119805119883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119806119880_)))
                              (_tl119804119885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119806119880_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119805119883_))
                              (let ((_e119809119888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119805119883_))))
                                (let ((_hd119808119891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119809119888_)))
                                      (_tl119807119893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119809119888_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119807119893_))
                                      (let ((_e119812119896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119807119893_))))
                                        (let ((_hd119811119899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119812119896_)))
                                              (_tl119810119901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119812119896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119811119899_))
                                              (let ((_e119815119904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119811119899_))))
                                                (let ((_hd119814119907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119815119904_)))
                                                      (_tl119813119909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119815119904_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119814119907_))
                                                      (let ((_e119818119912_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119814119907_))))
                (let ((_hd119817119915_
                       (let () (declare (not safe)) (##car _e119818119912_)))
                      (_tl119816119917_
                       (let () (declare (not safe)) (##cdr _e119818119912_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119817119915_))
                      (let ((_e119821119920_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119817119915_))))
                        (let ((_hd119820119923_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119821119920_)))
                              (_tl119819119925_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119821119920_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119819119925_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119816119917_))
                                  (let ((_e119824119928_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119816119917_))))
                                    (let ((_hd119823119931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119824119928_)))
                                          (_tl119822119933_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119824119928_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119822119933_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119813119909_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119810119901_))
                                                  (let ((_e119827119936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119810119901_))))
                                                    (let ((_hd119826119939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119827119936_)))
                                                          (_tl119825119941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119827119936_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119825119941_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119804119885_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119795119861_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119792119853_))
                              (let ((_e119830119944_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119792119853_))))
                                (let ((_hd119829119947_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119830119944_)))
                                      (_tl119828119949_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119830119944_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119828119949_))
                                      ((lambda (_L119952_
                                                _L119953_
                                                _L119954_
                                                _L119955_
                                                _L119956_)
                                         (let* ((_get-kws-id119996_
                                                 (let ((__tmp129088
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119768_)))
                                                       (__tmp129087
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129088
                                                    __tmp129087)))
                                                (_get-kws-id119998_
                                                 (let ((__tmp129089
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119469_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119996_
                                                    __tmp129089)))
                                                (_main-id120000_
                                                 (let ((__tmp129091
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119768_)))
                                                       (__tmp129090
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129091
                                                    __tmp129090)))
                                                (_main-id120002_
                                                 (let ((__tmp129092
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119469_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120000_
                                                    __tmp129092)))
                                                (_g129093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119998_)))
                                                (_g129094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120002_)))
                                                (_new-kw-dispatch120006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119952_
                                                    _L119956_
                                                    _get-kws-id119998_)))
                                                (_new-get-kws120008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119953_
                                                    _L119955_
                                                    _main-id120002_))))
                                           (let ((__tmp129097
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119768_)))
                                                 (__tmp129096
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119998_)))
                                                 (__tmp129095
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120002_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129097
                                              '" => "
                                              __tmp129096
                                              '" => "
                                              __tmp129095))
                                           (let ((__tmp129102
                                                  (let ((__tmp129103
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126723126724_
                                                            _main-id120002_
                                                            _L119954_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129103
                                                          _lift1119646_)))
                                                 (__tmp129100
                                                  (let ((__tmp129101
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126723126724_
                                                            _get-kws-id119998_
                                                            _new-get-kws120008_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129101
                                                          _lift2119647_)))
                                                 (__tmp129098
                                                  (let ((__tmp129099
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126723126724_
                                                            _L119768_
                                                            _new-kw-dispatch120006_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129099
                                                          _bind119648_))))
                                             (declare (not safe))
                                             (_lp119643_
                                              _rest119668_
                                              __tmp129102
                                              __tmp129100
                                              __tmp129098))))
                                       _hd119829119947_
                                       _hd119826119939_
                                       _hd119823119931_
                                       _hd119820119923_
                                       _hd119802119875_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119782119835_ _g119783119838_)))))
                              (let ()
                                (declare (not safe))
                                (_g119782119835_ _g119783119838_)))
                          (let ()
                            (declare (not safe))
                            (_g119782119835_ _g119783119838_)))
                      (let ()
                        (declare (not safe))
                        (_g119782119835_ _g119783119838_)))
                  (let ()
                    (declare (not safe))
                    (_g119782119835_ _g119783119838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119782119835_
                                                     _g119783119838_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119782119835_
                                                 _g119783119838_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119782119835_
                                             _g119783119838_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119782119835_ _g119783119838_)))
                              (let ()
                                (declare (not safe))
                                (_g119782119835_ _g119783119838_)))))
                      (let ()
                        (declare (not safe))
                        (_g119782119835_ _g119783119838_)))))
              (let ()
                (declare (not safe))
                (_g119782119835_ _g119783119838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119782119835_
                                                 _g119783119838_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119782119835_ _g119783119838_)))))
                              (let ()
                                (declare (not safe))
                                (_g119782119835_ _g119783119838_)))))
                      (let ()
                        (declare (not safe))
                        (_g119782119835_ _g119783119838_)))
                  (let ()
                    (declare (not safe))
                    (_g119782119835_ _g119783119838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119782119835_
                                                     _g119783119838_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119782119835_
                                             _g119783119838_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119782119835_ _g119783119838_)))))
                          (let ()
                            (declare (not safe))
                            (_g119782119835_ _g119783119838_)))))
                  (let ()
                    (declare (not safe))
                    (_g119782119835_ _g119783119838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119781120011_ _L119767_))))
                                         (___kont128565128566_
                                          (lambda (_L119718_ _L119719_)
                                            (let ((__tmp129104
                                                   (let ((__tmp129105
                                                          (let ((__tmp129106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119718_ '()))))
                    (declare (not safe))
                    (cons _L119719_ __tmp129106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129105
                                                           _bind119648_))))
                                              (declare (not safe))
                                              (_lp119643_
                                               _rest119668_
                                               _lift1119646_
                                               _lift2119647_
                                               __tmp129104)))))
                                     (let ((___match128588128589_
                                            (lambda (_e119678119743_
                                                     _hd119677119746_
                                                     _tl119676119748_
                                                     _e119681119751_
                                                     _hd119680119754_
                                                     _tl119679119756_
                                                     _e119684119759_
                                                     _hd119683119762_
                                                     _tl119682119764_)
                                              (let ((_L119767_
                                                     _hd119683119762_)
                                                    (_L119768_
                                                     _hd119680119754_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119768_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119767_)))
                                                    (___kont128563128564_
                                                     _L119767_
                                                     _L119768_)
                                                    (___kont128565128566_
                                                     _hd119683119762_
                                                     _hd119677119746_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128561128562_))
                                           (let ((_e119678119743_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128561128562_))))
                                             (let ((_tl119676119748_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119678119743_)))
                                                   (_hd119677119746_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119678119743_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119677119746_))
                                                   (let ((_e119681119751_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119677119746_))))
                                                     (let ((_tl119679119756_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119681119751_)))
                                                           (_hd119680119754_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119681119751_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119679119756_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119676119748_))
                       (let ((_e119684119759_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119676119748_))))
                         (let ((_tl119682119764_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119684119759_)))
                               (_hd119683119762_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119684119759_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119682119764_))
                               (___match128588128589_
                                _e119678119743_
                                _hd119677119746_
                                _tl119676119748_
                                _e119681119751_
                                _hd119680119754_
                                _tl119679119756_
                                _e119684119759_
                                _hd119683119762_
                                _tl119682119764_)
                               (let ()
                                 (declare (not safe))
                                 (_g119672119697_)))))
                       (let () (declare (not safe)) (_g119672119697_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119676119748_))
                       (let ((_e119692119710_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119676119748_))))
                         (let ((_tl119690119715_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119692119710_)))
                               (_hd119691119713_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119692119710_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119690119715_))
                               (___kont128565128566_
                                _hd119691119713_
                                _hd119677119746_)
                               (let ()
                                 (declare (not safe))
                                 (_g119672119697_)))))
                       (let () (declare (not safe)) (_g119672119697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119676119748_))
                                                       (let ((_e119692119710_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119676119748_))))
                 (let ((_tl119690119715_
                        (let () (declare (not safe)) (##cdr _e119692119710_)))
                       (_hd119691119713_
                        (let () (declare (not safe)) (##car _e119692119710_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119690119715_))
                       (___kont128565128566_ _hd119691119713_ _hd119677119746_)
                       (let () (declare (not safe)) (_g119672119697_)))))
               (let () (declare (not safe)) (_g119672119697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119672119697_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119649119657_))
                             (let ((_hd119654120020_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119649119657_)))
                                   (_tl119655120022_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119649119657_))))
                               (let* ((_hd120025_ _hd119654120020_)
                                      (_rest120027_ _tl119655120022_))
                                 (declare (not safe))
                                 (_K119653120017_ _rest120027_ _hd120025_)))
                             (let ()
                               (declare (not safe))
                               (_else119651119665_))))))))
          (let* ((___stx128605128606_ _stx119469_)
                 (_g119477119503_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128605128606_)))))
            (let ((___kont128607128608_
                   (lambda (_L119563_ _L119564_)
                     (let ((__tmp129108
                            (lambda ()
                              (if (let ((__tmp129135
                                         (let ((__tmp129136
                                                (lambda (_g119592119595_
                                                         _g119593119597_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119592119595_
                                                          _g119593119597_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129136
                                                   '()
                                                   _L119564_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119473_
                                            __tmp129135))
                                  (let ((_g129122_
                                         (let ((__tmp129124
                                                (let ((__tmp129125
                                                       (lambda (_g119599119602_
                                                                _g119600119604_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119599119602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119600119604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129125
                                                          '()
                                                          _L119564_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119474_
                                            __tmp129124))))
                                    (begin
                                      (let ((_g129123_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129122_)
                                                   (##vector-length _g129122_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129123_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129123_)))
                                      (let ((_lift1119607_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129122_ 0)))
                                            (_lift2119608_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129122_ 1)))
                                            (_hd119609_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129122_ 2))))
                                        (let* ((_expr119611_
                                                (let ((__tmp129126
                                                       (let ((__tmp129127
                                                              (let ((__tmp129128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119563_ '()))))
                        (declare (not safe))
                        (cons _hd119609_ __tmp129128))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129126
                                                   _stx119469_)))
                                               (_expr119613_
                                                (let ((__tmp129129
                                                       (let ((__tmp129130
                                                              (let ((__tmp129131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119611_ '()))))
                        (declare (not safe))
                        (cons _lift2119608_ __tmp129131))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129129
                                                   _stx119469_)))
                                               (_expr119615_
                                                (let ((__tmp129132
                                                       (let ((__tmp129133
                                                              (let ((__tmp129134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119613_ '()))))
                        (declare (not safe))
                        (cons _lift1119607_ __tmp129134))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129132
                                                   _stx119469_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119615_))))))
                                  (let ((_g129109_
                                         (let ((__tmp129111
                                                (let ((__tmp129112
                                                       (lambda (_g119617119620_
                                                                _g119618119622_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119617119620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119618119622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129112
                                                          '()
                                                          _L119564_))))
                                           (declare (not safe))
                                           (_compile-bindings119472_
                                            __tmp129111))))
                                    (begin
                                      (let ((_g129110_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129109_)
                                                   (##vector-length _g129109_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129110_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129110_)))
                                      (let ((_lift1119625_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129109_ 0)))
                                            (_lift2119626_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129109_ 1)))
                                            (_hd119627_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129109_ 2))))
                                        (let* ((_body119629_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119563_)))
                                               (_expr119631_
                                                (let ((__tmp129113
                                                       (let ((__tmp129114
                                                              (let ((__tmp129115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119629_ '()))))
                        (declare (not safe))
                        (cons _hd119627_ __tmp129115))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129113
                                                   _stx119469_)))
                                               (_expr119633_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119626_))
                                                    _expr119631_
                                                    (let ((__tmp129116
                                                           (let ((__tmp129117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129118
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119631_ '()))))
                            (declare (not safe))
                            (cons _lift2119626_ __tmp129118))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129117))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129116 _stx119469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119635_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119625_))
                                                    _expr119633_
                                                    (let ((__tmp129119
                                                           (let ((__tmp129120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129121
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119633_ '()))))
                            (declare (not safe))
                            (cons _lift1119625_ __tmp129121))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129120))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129119 _stx119469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119635_)))))))
                           (__tmp129107
                            (let ((__obj128811
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128811)
                              __obj128811)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129108
                        gx#current-expander-context
                        __tmp129107))))
                  (___kont128611128612_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119469_)))))
              (let ((___match128632128633_
                     (lambda (_e119483119515_
                              _hd119482119518_
                              _tl119481119520_
                              _e119486119523_
                              _hd119485119526_
                              _tl119484119528_
                              ___splice128609128610_
                              _target119487119531_
                              _tl119489119533_)
                       (letrec ((_loop119490119536_
                                 (lambda (_hd119488119539_ _bind119494119541_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119488119539_))
                                       (let ((_e119491119544_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119488119539_))))
                                         (let ((_lp-tl119493119549_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119491119544_)))
                                               (_lp-hd119492119547_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119491119544_))))
                                           (let ((__tmp129139
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119492119547_
                                                          _bind119494119541_))))
                                             (declare (not safe))
                                             (_loop119490119536_
                                              _lp-tl119493119549_
                                              __tmp129139))))
                                       (let ((_bind119495119552_
                                              (reverse _bind119494119541_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119484119528_))
                                             (let ((_e119498119555_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119484119528_))))
                                               (let ((_tl119496119560_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119498119555_)))
                                                     (_hd119497119558_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119498119555_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119496119560_))
                                                     (let ((_L119563_
                                                            _hd119497119558_)
                                                           (_L119564_
                                                            _bind119495119552_))
                                                       (if (let ((__tmp129137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129138
                                 (lambda (_g119584119587_ _g119585119589_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119584119587_ _g119585119589_)))))
                            (declare (not safe))
                            (foldr1 __tmp129138 '() _L119564_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129137))
                   (___kont128607128608_ _L119563_ _L119564_)
                   (___kont128611128612_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128611128612_))))
                                             (___kont128611128612_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119490119536_ _target119487119531_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128605128606_))
                    (let ((_e119483119515_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128605128606_))))
                      (let ((_tl119481119520_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119483119515_)))
                            (_hd119482119518_
                             (let ()
                               (declare (not safe))
                               (##car _e119483119515_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119481119520_))
                            (let ((_e119486119523_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119481119520_))))
                              (let ((_tl119484119528_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119486119523_)))
                                    (_hd119485119526_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119486119523_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119485119526_))
                                    (let ((___splice128609128610_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119485119526_
                                              '0))))
                                      (let ((_tl119489119533_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128609128610_
                                                '1)))
                                            (_target119487119531_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128609128610_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119489119533_))
                                            (___match128632128633_
                                             _e119483119515_
                                             _hd119482119518_
                                             _tl119481119520_
                                             _e119486119523_
                                             _hd119485119526_
                                             _tl119484119528_
                                             ___splice128609128610_
                                             _target119487119531_
                                             _tl119489119533_)
                                            (___kont128611128612_))))
                                    (___kont128611128612_))))
                            (___kont128611128612_))))
                    (___kont128611128612_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118613_)
        (letrec* ((_bind-e__126728126729_
                   (lambda (_id119453_ _expr119454_ _compile?119455_)
                     (let ((__tmp129142
                            (let ()
                              (declare (not safe))
                              (cons _id119453_ '())))
                           (__tmp129140
                            (let ((__tmp129141
                                   (if _compile?119455_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119454_))
                                       _expr119454_)))
                              (declare (not safe))
                              (cons __tmp129141 '()))))
                       (declare (not safe))
                       (cons __tmp129142 __tmp129140))))
                  (_bind-e__0__126730126731_
                   (lambda (_id119460_ _expr119461_)
                     (let ((_compile?119463_ '#t))
                       (declare (not safe))
                       (_bind-e__126728126729_
                        _id119460_
                        _expr119461_
                        _compile?119463_))))
                  (_bind-e118615_
                   (lambda _g129144_
                     (let ((_g129143_
                            (let ()
                              (declare (not safe))
                              (##length _g129144_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129143_ 2))
                              (apply (lambda (_id119460_ _expr119461_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126730126731_
                                          _id119460_
                                          _expr119461_)))
                                     _g129144_))
                             ((let () (declare (not safe)) (##fx= _g129143_ 3))
                              (apply (lambda (_id119465_
                                              _expr119466_
                                              _compile?119467_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126728126729_
                                          _id119465_
                                          _expr119466_
                                          _compile?119467_)))
                                     _g129144_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129144_))))))
                  (_compile-bindings118616_
                   (lambda (_rest118751_)
                     (let _lp118753_ ((_rest118755_ _rest118751_)
                                      (_bind118756_ '()))
                       (let* ((_rest118757118765_ _rest118755_)
                              (_else118759118773_
                               (lambda () (reverse _bind118756_)))
                              (_K118761119440_
                               (lambda (_rest118776_ _hd118777_)
                                 (let* ((___stx128655128656_ _hd118777_)
                                        (_g118782118829_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128655128656_)))))
                                   (let ((___kont128657128658_
                                          (lambda (_L119347_ _L119348_)
                                            (let* ((___stx128635128636_
                                                    _L119347_)
                                                   (_g119363119377_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128635128636_)))))
                                              (let ((___kont128637128638_
                                                     (lambda (_L119425_)
                                                       (let ((__tmp129145
                                                              (let ((__tmp129146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126728126729_
                                _L119348_
                                _L119347_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129146 _bind118756_))))
                 (declare (not safe))
                 (_lp118753_ _rest118776_ __tmp129145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128639128640_
                                                     (lambda (_L119390_)
                                                       (let ((_g129147_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118613_
                         _L119348_
                         _L119390_
                         '#t))))
                 (begin
                   (let ((_g129148_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129147_)
                                (##vector-length _g129147_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129148_ 3)))
                         (error "Context expects 3 values" _g129148_)))
                   (let ((_ids119400_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129147_ 0)))
                         (_impls119401_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129147_ 1)))
                         (_clauses119402_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129147_ 2))))
                     (let* ((_g129149_
                             (for-each gx#core-bind-runtime! _ids119400_))
                            (_xbind119405_
                             (map _bind-e118615_ _ids119400_ _impls119401_))
                            (_expr*119407_
                             (let ((__tmp129151
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119402_)))
                                   (__tmp129150
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129151
                                __tmp129150)))
                            (_bind*119409_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126728126729_
                                _L119348_
                                _expr*119407_
                                '#f))))
                       (let ((__tmp129153
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119348_)))
                             (__tmp129152
                              (map gxc#identifier-symbol _ids119400_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129153
                          '" => "
                          __tmp129152))
                       (let ((__tmp129154
                              (let ((__tmp129155
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118756_
                                               _xbind119405_))))
                                (declare (not safe))
                                (cons _bind*119409_ __tmp129155))))
                         (declare (not safe))
                         (_lp118753_ _rest118776_ __tmp129154)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128646128647_
                                                       (lambda (_e119368119417_
                                                                _hd119367119420_
                                                                _tl119366119422_)
                                                         (let ((_L119425_
                                                                _tl119366119422_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119425_))
                       (___kont128637128638_ _L119425_)
                       (___kont128639128640_ _tl119366119422_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128635128636_))
                                                      (let ((_e119368119417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128635128636_))))
                (let ((_tl119366119422_
                       (let () (declare (not safe)) (##cdr _e119368119417_)))
                      (_hd119367119420_
                       (let () (declare (not safe)) (##car _e119368119417_))))
                  (___match128646128647_
                   _e119368119417_
                   _hd119367119420_
                   _tl119366119422_)))
              (let () (declare (not safe)) (_g119363119377_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128659128660_
                                          (lambda (_L119175_ _L119176_)
                                            (let* ((_g119190119220_
                                                    (lambda (_g119191119217_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119191119217_))))
                                                   (_g119189119315_
                                                    (lambda (_g119191119223_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119191119223_))
                                                          (let ((_e119197119225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119191119223_))))
                    (let ((_hd119196119228_
                           (let ()
                             (declare (not safe))
                             (##car _e119197119225_)))
                          (_tl119195119230_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119197119225_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119195119230_))
                          (let ((_e119200119233_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119195119230_))))
                            (let ((_hd119199119236_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119200119233_)))
                                  (_tl119198119238_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119200119233_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119199119236_))
                                  (let ((_e119203119241_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119199119236_))))
                                    (let ((_hd119202119244_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119203119241_)))
                                          (_tl119201119246_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119203119241_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119202119244_))
                                          (let ((_e119206119249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119202119244_))))
                                            (let ((_hd119205119252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119206119249_)))
                                                  (_tl119204119254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119206119249_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119205119252_))
                                                  (let ((_e119209119257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119205119252_))))
                                                    (let ((_hd119208119260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119209119257_)))
                                                          (_tl119207119262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119209119257_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119207119262_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119204119254_))
                      (let ((_e119212119265_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119204119254_))))
                        (let ((_hd119211119268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119212119265_)))
                              (_tl119210119270_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119212119265_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119210119270_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119201119246_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119198119238_))
                                      (let ((_e119215119273_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119198119238_))))
                                        (let ((_hd119214119276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119215119273_)))
                                              (_tl119213119278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119215119273_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119213119278_))
                                              ((lambda (_L119281_
                                                        _L119282_
                                                        _L119283_)
                                                 (let* ((_lambda-id119307_
                                                         (let ((__tmp129157
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119176_)))
                       (__tmp129156 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129157 __tmp129156)))
                (_lambda-id119309_
                 (let ((__tmp129158
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118613_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119307_ __tmp129158)))
                (_g129159_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119309_)))
                (_new-case-lambda-expr119312_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119281_
                    _L119283_
                    _lambda-id119309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129161
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119176_)))
                                                         (__tmp129160
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119309_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129161
                                                      '" => "
                                                      __tmp129160))
                                                   (let ((__tmp129164
                                                          (let ((__tmp129165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126728126729_
                            _L119176_
                            _new-case-lambda-expr119312_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129165 _rest118776_)))
                 (__tmp129162
                  (let ((__tmp129163
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126730126731_
                            _lambda-id119309_
                            _L119282_))))
                    (declare (not safe))
                    (cons __tmp129163 _bind118756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118753_
                                                      __tmp129164
                                                      __tmp129162))))
                                               _hd119214119276_
                                               _hd119211119268_
                                               _hd119208119260_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119190119220_
                                                 _g119191119223_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119190119220_ _g119191119223_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119190119220_ _g119191119223_)))
                              (let ()
                                (declare (not safe))
                                (_g119190119220_ _g119191119223_)))))
                      (let ()
                        (declare (not safe))
                        (_g119190119220_ _g119191119223_)))
                  (let ()
                    (declare (not safe))
                    (_g119190119220_ _g119191119223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119190119220_
                                                     _g119191119223_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119190119220_
                                             _g119191119223_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119190119220_ _g119191119223_)))))
                          (let ()
                            (declare (not safe))
                            (_g119190119220_ _g119191119223_)))))
                  (let ()
                    (declare (not safe))
                    (_g119190119220_ _g119191119223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119189119315_ _L119175_))))
                                         (___kont128661128662_
                                          (lambda (_L118899_ _L118900_)
                                            (let* ((_g118914118967_
                                                    (lambda (_g118915118964_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118915118964_))))
                                                   (_g118913119143_
                                                    (lambda (_g118915118970_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118915118970_))
                                                          (let ((_e118923118972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118915118970_))))
                    (let ((_hd118922118975_
                           (let ()
                             (declare (not safe))
                             (##car _e118923118972_)))
                          (_tl118921118977_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118923118972_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118921118977_))
                          (let ((_e118926118980_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118921118977_))))
                            (let ((_hd118925118983_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118926118980_)))
                                  (_tl118924118985_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118926118980_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118925118983_))
                                  (let ((_e118929118988_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118925118983_))))
                                    (let ((_hd118928118991_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118929118988_)))
                                          (_tl118927118993_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118929118988_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118928118991_))
                                          (let ((_e118932118996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118928118991_))))
                                            (let ((_hd118931118999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118932118996_)))
                                                  (_tl118930119001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118932118996_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118931118999_))
                                                  (let ((_e118935119004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118931118999_))))
                                                    (let ((_hd118934119007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118935119004_)))
                                                          (_tl118933119009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118935119004_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118933119009_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118930119001_))
                      (let ((_e118938119012_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118930119001_))))
                        (let ((_hd118937119015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118938119012_)))
                              (_tl118936119017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118938119012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118937119015_))
                              (let ((_e118941119020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118937119015_))))
                                (let ((_hd118940119023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118941119020_)))
                                      (_tl118939119025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118941119020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118939119025_))
                                      (let ((_e118944119028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118939119025_))))
                                        (let ((_hd118943119031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118944119028_)))
                                              (_tl118942119033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118944119028_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118943119031_))
                                              (let ((_e118947119036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118943119031_))))
                                                (let ((_hd118946119039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118947119036_)))
                                                      (_tl118945119041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118947119036_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118946119039_))
                                                      (let ((_e118950119044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118946119039_))))
                (let ((_hd118949119047_
                       (let () (declare (not safe)) (##car _e118950119044_)))
                      (_tl118948119049_
                       (let () (declare (not safe)) (##cdr _e118950119044_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118949119047_))
                      (let ((_e118953119052_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118949119047_))))
                        (let ((_hd118952119055_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118953119052_)))
                              (_tl118951119057_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118953119052_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118951119057_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118948119049_))
                                  (let ((_e118956119060_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118948119049_))))
                                    (let ((_hd118955119063_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118956119060_)))
                                          (_tl118954119065_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118956119060_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118954119065_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118945119041_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118942119033_))
                                                  (let ((_e118959119068_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118942119033_))))
                                                    (let ((_hd118958119071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118959119068_)))
                                                          (_tl118957119073_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118959119068_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118957119073_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118936119017_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118927118993_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118924118985_))
                              (let ((_e118962119076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118924118985_))))
                                (let ((_hd118961119079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118962119076_)))
                                      (_tl118960119081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118962119076_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118960119081_))
                                      ((lambda (_L119084_
                                                _L119085_
                                                _L119086_
                                                _L119087_
                                                _L119088_)
                                         (let* ((_get-kws-id119128_
                                                 (let ((__tmp129167
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118900_)))
                                                       (__tmp129166
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129167
                                                    __tmp129166)))
                                                (_get-kws-id119130_
                                                 (let ((__tmp129168
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118613_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119128_
                                                    __tmp129168)))
                                                (_main-id119132_
                                                 (let ((__tmp129170
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118900_)))
                                                       (__tmp129169
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129170
                                                    __tmp129169)))
                                                (_main-id119134_
                                                 (let ((__tmp129171
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118613_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119132_
                                                    __tmp129171)))
                                                (_g129172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119130_)))
                                                (_g129173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119134_)))
                                                (_new-kw-dispatch119138_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119084_
                                                    _L119088_
                                                    _get-kws-id119130_)))
                                                (_new-get-kws119140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119085_
                                                    _L119087_
                                                    _main-id119134_))))
                                           (let ((__tmp129176
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118900_)))
                                                 (__tmp129175
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119130_)))
                                                 (__tmp129174
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119134_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129176
                                              '" => "
                                              __tmp129175
                                              '" => "
                                              __tmp129174))
                                           (let ((__tmp129177
                                                  (let ((__tmp129182
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126728126729_
                                                            _main-id119134_
                                                            _L119086_
                                                            '#f)))
                                                        (__tmp129178
                                                         (let ((__tmp129181
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126728126729_
                           _get-kws-id119130_
                           _new-get-kws119140_
                           '#f)))
                       (__tmp129179
                        (let ((__tmp129180
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126728126729_
                                  _L118900_
                                  _new-kw-dispatch119138_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129180 _rest118776_))))
                   (declare (not safe))
                   (cons __tmp129181 __tmp129179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129182
                                                          __tmp129178))))
                                             (declare (not safe))
                                             (_lp118753_
                                              __tmp129177
                                              _bind118756_))))
                                       _hd118961119079_
                                       _hd118958119071_
                                       _hd118955119063_
                                       _hd118952119055_
                                       _hd118934119007_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118914118967_ _g118915118970_)))))
                              (let ()
                                (declare (not safe))
                                (_g118914118967_ _g118915118970_)))
                          (let ()
                            (declare (not safe))
                            (_g118914118967_ _g118915118970_)))
                      (let ()
                        (declare (not safe))
                        (_g118914118967_ _g118915118970_)))
                  (let ()
                    (declare (not safe))
                    (_g118914118967_ _g118915118970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118914118967_
                                                     _g118915118970_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118914118967_
                                                 _g118915118970_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118914118967_
                                             _g118915118970_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118914118967_ _g118915118970_)))
                              (let ()
                                (declare (not safe))
                                (_g118914118967_ _g118915118970_)))))
                      (let ()
                        (declare (not safe))
                        (_g118914118967_ _g118915118970_)))))
              (let ()
                (declare (not safe))
                (_g118914118967_ _g118915118970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118914118967_
                                                 _g118915118970_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118914118967_ _g118915118970_)))))
                              (let ()
                                (declare (not safe))
                                (_g118914118967_ _g118915118970_)))))
                      (let ()
                        (declare (not safe))
                        (_g118914118967_ _g118915118970_)))
                  (let ()
                    (declare (not safe))
                    (_g118914118967_ _g118915118970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118914118967_
                                                     _g118915118970_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118914118967_
                                             _g118915118970_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118914118967_ _g118915118970_)))))
                          (let ()
                            (declare (not safe))
                            (_g118914118967_ _g118915118970_)))))
                  (let ()
                    (declare (not safe))
                    (_g118914118967_ _g118915118970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118913119143_ _L118899_))))
                                         (___kont128663128664_
                                          (lambda (_L118850_ _L118851_)
                                            (let ((__tmp129183
                                                   (let ((__tmp129184
                                                          (let ((__tmp129185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129186
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118850_))))
                           (declare (not safe))
                           (cons __tmp129186 '()))))
                    (declare (not safe))
                    (cons _L118851_ __tmp129185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129184
                                                           _bind118756_))))
                                              (declare (not safe))
                                              (_lp118753_
                                               _rest118776_
                                               __tmp129183)))))
                                     (let* ((___match128730128731_
                                             (lambda (_e118810118875_
                                                      _hd118809118878_
                                                      _tl118808118880_
                                                      _e118813118883_
                                                      _hd118812118886_
                                                      _tl118811118888_
                                                      _e118816118891_
                                                      _hd118815118894_
                                                      _tl118814118896_)
                                               (let ((_L118899_
                                                      _hd118815118894_)
                                                     (_L118900_
                                                      _hd118812118886_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118900_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118899_)))
                                                     (___kont128661128662_
                                                      _L118899_
                                                      _L118900_)
                                                     (___kont128663128664_
                                                      _hd118815118894_
                                                      _hd118809118878_)))))
                                            (___match128708128709_
                                             (lambda (_e118799119151_
                                                      _hd118798119154_
                                                      _tl118797119156_
                                                      _e118802119159_
                                                      _hd118801119162_
                                                      _tl118800119164_
                                                      _e118805119167_
                                                      _hd118804119170_
                                                      _tl118803119172_)
                                               (let ((_L119175_
                                                      _hd118804119170_)
                                                     (_L119176_
                                                      _hd118801119162_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119176_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119175_)))
                                                     (___kont128659128660_
                                                      _L119175_
                                                      _L119176_)
                                                     (___match128730128731_
                                                      _e118799119151_
                                                      _hd118798119154_
                                                      _tl118797119156_
                                                      _e118802119159_
                                                      _hd118801119162_
                                                      _tl118800119164_
                                                      _e118805119167_
                                                      _hd118804119170_
                                                      _tl118803119172_)))))
                                            (___match128686128687_
                                             (lambda (_e118788119323_
                                                      _hd118787119326_
                                                      _tl118786119328_
                                                      _e118791119331_
                                                      _hd118790119334_
                                                      _tl118789119336_
                                                      _e118794119339_
                                                      _hd118793119342_
                                                      _tl118792119344_)
                                               (let ((_L119347_
                                                      _hd118793119342_)
                                                     (_L119348_
                                                      _hd118790119334_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119348_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119347_)))
                                                     (___kont128657128658_
                                                      _L119347_
                                                      _L119348_)
                                                     (___match128708128709_
                                                      _e118788119323_
                                                      _hd118787119326_
                                                      _tl118786119328_
                                                      _e118791119331_
                                                      _hd118790119334_
                                                      _tl118789119336_
                                                      _e118794119339_
                                                      _hd118793119342_
                                                      _tl118792119344_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128655128656_))
                                           (let ((_e118788119323_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128655128656_))))
                                             (let ((_tl118786119328_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118788119323_)))
                                                   (_hd118787119326_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118788119323_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118787119326_))
                                                   (let ((_e118791119331_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118787119326_))))
                                                     (let ((_tl118789119336_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118791119331_)))
                                                           (_hd118790119334_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118791119331_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118789119336_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118786119328_))
                       (let ((_e118794119339_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118786119328_))))
                         (let ((_tl118792119344_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118794119339_)))
                               (_hd118793119342_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118794119339_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118792119344_))
                               (___match128686128687_
                                _e118788119323_
                                _hd118787119326_
                                _tl118786119328_
                                _e118791119331_
                                _hd118790119334_
                                _tl118789119336_
                                _e118794119339_
                                _hd118793119342_
                                _tl118792119344_)
                               (let ()
                                 (declare (not safe))
                                 (_g118782118829_)))))
                       (let () (declare (not safe)) (_g118782118829_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118786119328_))
                       (let ((_e118824118842_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118786119328_))))
                         (let ((_tl118822118847_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118824118842_)))
                               (_hd118823118845_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118824118842_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118822118847_))
                               (___kont128663128664_
                                _hd118823118845_
                                _hd118787119326_)
                               (let ()
                                 (declare (not safe))
                                 (_g118782118829_)))))
                       (let () (declare (not safe)) (_g118782118829_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118786119328_))
                                                       (let ((_e118824118842_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118786119328_))))
                 (let ((_tl118822118847_
                        (let () (declare (not safe)) (##cdr _e118824118842_)))
                       (_hd118823118845_
                        (let () (declare (not safe)) (##car _e118824118842_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118822118847_))
                       (___kont128663128664_ _hd118823118845_ _hd118787119326_)
                       (let () (declare (not safe)) (_g118782118829_)))))
               (let () (declare (not safe)) (_g118782118829_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118782118829_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118757118765_))
                             (let ((_hd118762119443_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118757118765_)))
                                   (_tl118763119445_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118757118765_))))
                               (let* ((_hd119448_ _hd118762119443_)
                                      (_rest119450_ _tl118763119445_))
                                 (declare (not safe))
                                 (_K118761119440_ _rest119450_ _hd119448_)))
                             (let ()
                               (declare (not safe))
                               (_else118759118773_))))))))
          (let* ((___stx128747128748_ _stx118613_)
                 (_g118619118646_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128747128748_)))))
            (let ((___kont128749128750_
                   (lambda (_L118706_ _L118707_ _L118708_)
                     (let ((__tmp129188
                            (lambda ()
                              (let ((_hd118745_
                                     (let ((__tmp129189
                                            (let ((__tmp129190
                                                   (lambda (_g118737118740_
                                                            _g118738118742_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118737118740_
                                                             _g118738118742_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129190
                                                      '()
                                                      _L118707_))))
                                       (declare (not safe))
                                       (_compile-bindings118616_ __tmp129189)))
                                    (_body118746_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118706_))))
                                (let ((__tmp129191
                                       (let ((__tmp129192
                                              (let ((__tmp129193
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118746_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118745_
                                                      __tmp129193))))
                                         (declare (not safe))
                                         (cons _L118708_ __tmp129192))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129191
                                   _stx118613_)))))
                           (__tmp129187
                            (let ((__obj128812
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128812)
                              __obj128812)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129188
                        gx#current-expander-context
                        __tmp129187))))
                  (___kont128753128754_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118613_)))))
              (let ((___match128774128775_
                     (lambda (_e118626118658_
                              _hd118625118661_
                              _tl118624118663_
                              _e118629118666_
                              _hd118628118669_
                              _tl118627118671_
                              ___splice128751128752_
                              _target118630118674_
                              _tl118632118676_)
                       (letrec ((_loop118633118679_
                                 (lambda (_hd118631118682_ _bind118637118684_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118631118682_))
                                       (let ((_e118634118687_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118631118682_))))
                                         (let ((_lp-tl118636118692_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118634118687_)))
                                               (_lp-hd118635118690_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118634118687_))))
                                           (let ((__tmp129196
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118635118690_
                                                          _bind118637118684_))))
                                             (declare (not safe))
                                             (_loop118633118679_
                                              _lp-tl118636118692_
                                              __tmp129196))))
                                       (let ((_bind118638118695_
                                              (reverse _bind118637118684_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118627118671_))
                                             (let ((_e118641118698_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118627118671_))))
                                               (let ((_tl118639118703_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118641118698_)))
                                                     (_hd118640118701_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118641118698_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118639118703_))
                                                     (let ((_L118706_
                                                            _hd118640118701_)
                                                           (_L118707_
                                                            _bind118638118695_)
                                                           (_L118708_
                                                            _hd118625118661_))
                                                       (if (let ((__tmp129194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129195
                                 (lambda (_g118729118732_ _g118730118734_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118729118732_ _g118730118734_)))))
                            (declare (not safe))
                            (foldr1 __tmp129195 '() _L118707_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129194))
                   (___kont128749128750_ _L118706_ _L118707_ _L118708_)
                   (___kont128753128754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128753128754_))))
                                             (___kont128753128754_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118633118679_ _target118630118674_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128747128748_))
                    (let ((_e118626118658_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128747128748_))))
                      (let ((_tl118624118663_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118626118658_)))
                            (_hd118625118661_
                             (let ()
                               (declare (not safe))
                               (##car _e118626118658_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118624118663_))
                            (let ((_e118629118666_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118624118663_))))
                              (let ((_tl118627118671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118629118666_)))
                                    (_hd118628118669_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118629118666_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118628118669_))
                                    (let ((___splice128751128752_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118628118669_
                                              '0))))
                                      (let ((_tl118632118676_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128751128752_
                                                '1)))
                                            (_target118630118674_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128751128752_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118632118676_))
                                            (___match128774128775_
                                             _e118626118658_
                                             _hd118625118661_
                                             _tl118624118663_
                                             _e118629118666_
                                             _hd118628118669_
                                             _tl118627118671_
                                             ___splice128751128752_
                                             _target118630118674_
                                             _tl118632118676_)
                                            (___kont128753128754_))))
                                    (___kont128753128754_))))
                            (___kont128753128754_))))
                    (___kont128753128754_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118531_)
        (let* ((___stx128777128778_ _bind118531_)
               (_g118534118551_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128777128778_)))))
          (let ((___kont128779128780_
                 (lambda (_L118587_ _L118588_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118588_))
                       (let ((_$e118604_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118587_))))
                         (if _$e118604_
                             _$e118604_
                             (let ((_$e118607_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118587_))))
                               (if _$e118607_
                                   _$e118607_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118587_))))))
                       '#f)))
                (___kont128781128782_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128777128778_))
                (let ((_e118540118563_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128777128778_))))
                  (let ((_tl118538118568_
                         (let () (declare (not safe)) (##cdr _e118540118563_)))
                        (_hd118539118566_
                         (let ()
                           (declare (not safe))
                           (##car _e118540118563_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118539118566_))
                        (let ((_e118543118571_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118539118566_))))
                          (let ((_tl118541118576_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118543118571_)))
                                (_hd118542118574_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118543118571_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118541118576_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118538118568_))
                                    (let ((_e118546118579_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118538118568_))))
                                      (let ((_tl118544118584_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118546118579_)))
                                            (_hd118545118582_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118546118579_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118544118584_))
                                            (___kont128779128780_
                                             _hd118545118582_
                                             _hd118542118574_)
                                            (___kont128781128782_))))
                                    (___kont128781128782_))
                                (___kont128781128782_))))
                        (___kont128781128782_))))
                (___kont128781128782_))))))))
