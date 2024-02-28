(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709125256)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126710_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128803 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126710_ __tmp128803))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126710_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126710_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126710_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126710_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126710_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126693_ . _args126695_)
        (let ((__tmp128805
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
              (__tmp128804 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128805
           gxc#current-compile-methods
           __tmp128804))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126690_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128806 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126690_ __tmp128806))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#call gxc#basic-expression-type-call%))
           _tbl126690_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126673_ . _args126675_)
        (let ((__tmp128808
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
              (__tmp128807 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128808
           gxc#current-compile-methods
           __tmp128807))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126670_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128809 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126670_ __tmp128809))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#set! gxc#collect-body-setq%))
           _tbl126670_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126653_ . _args126655_)
        (let ((__tmp128811
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
              (__tmp128810 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128811
           gxc#current-compile-methods
           __tmp128810))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126650_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128812 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126650_ __tmp128812))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126650_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126650_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126650_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126650_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126633_ . _args126635_)
        (let ((__tmp128814
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
              (__tmp128813 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128814
           gxc#current-compile-methods
           __tmp128813))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126630_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128815 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126630_ __tmp128815))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126630_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126630_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126630_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126630_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126630_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126613_ . _args126615_)
        (let ((__tmp128817
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126615_)
                     (gxc#compile-e__0 _stx126613_)
                     (let ((_arg1126620_ (car _args126615_))
                           (_rest126622_ (cdr _args126615_)))
                       (if (null? _rest126622_)
                           (gxc#compile-e__1 _stx126613_ _arg1126620_)
                           (let ((_arg2126625_ (car _rest126622_))
                                 (_rest126627_ (cdr _rest126622_)))
                             (if (null? _rest126627_)
                                 (gxc#compile-e__2
                                  _stx126613_
                                  _arg1126620_
                                  _arg2126625_)
                                 (apply gxc#compile-e
                                        _stx126613_
                                        _arg1126620_
                                        _arg2126625_
                                        _rest126627_))))))))
              (__tmp128816 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128817
           gxc#current-compile-methods
           __tmp128816))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126516_)
        (let* ((___stx126723126724_ _stx126516_)
               (_g126519126539_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126723126724_)))))
          (let ((___kont126725126726_
                 (lambda (_L126583_ _L126584_)
                   (let ((_sym126602_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126584_))))
                     (if (let ((__tmp128818 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128818 _sym126602_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126602_))
                         (let ((_type126603126605_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126583_))))
                           (if _type126603126605_
                               (let ((_type126608_ _type126603126605_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126602_
                                  _type126608_))
                               '#f))))))
                (___kont126727126728_ (lambda () '#!void)))
            (let ((___match126756126757_
                   (lambda (_e126525126551_
                            _hd126524126554_
                            _tl126523126556_
                            _e126528126559_
                            _hd126527126562_
                            _tl126526126564_
                            _e126531126567_
                            _hd126530126570_
                            _tl126529126572_
                            _e126534126575_
                            _hd126533126578_
                            _tl126532126580_)
                     (let ((_L126583_ _hd126533126578_)
                           (_L126584_ _hd126530126570_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126584_))
                           (___kont126725126726_ _L126583_ _L126584_)
                           (___kont126727126728_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126723126724_))
                  (let ((_e126525126551_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126723126724_))))
                    (let ((_tl126523126556_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126525126551_)))
                          (_hd126524126554_
                           (let ()
                             (declare (not safe))
                             (##car _e126525126551_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126523126556_))
                          (let ((_e126528126559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126523126556_))))
                            (let ((_tl126526126564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126528126559_)))
                                  (_hd126527126562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126528126559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126527126562_))
                                  (let ((_e126531126567_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126527126562_))))
                                    (let ((_tl126529126572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126531126567_)))
                                          (_hd126530126570_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126531126567_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126529126572_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126526126564_))
                                              (let ((_e126534126575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126526126564_))))
                                                (let ((_tl126532126580_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126534126575_)))
                                                      (_hd126533126578_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126534126575_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126532126580_))
                                                      (___match126756126757_
                                                       _e126525126551_
                                                       _hd126524126554_
                                                       _tl126523126556_
                                                       _e126528126559_
                                                       _hd126527126562_
                                                       _tl126526126564_
                                                       _e126531126567_
                                                       _hd126530126570_
                                                       _tl126529126572_
                                                       _e126534126575_
                                                       _hd126533126578_
                                                       _tl126532126580_)
                                                      (___kont126727126728_))))
                                              (___kont126727126728_))
                                          (___kont126727126728_))))
                                  (___kont126727126728_))))
                          (___kont126727126728_))))
                  (___kont126727126728_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx126372_)
        (let* ((___stx126759126760_ _stx126372_)
               (_g126375126406_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126759126760_)))))
          (let ((___kont126761126762_
                 (lambda (_L126488_ _L126489_)
                   (let ((_sym126505_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126489_))))
                     (if (let ((__tmp128819 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128819 _sym126505_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126505_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126505_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126505_))
                             (let ((_type126506126508_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126488_))))
                               (if _type126506126508_
                                   (let ((_type126511_ _type126506126508_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126505_
                                      _type126511_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126488_)))))
                (___kont126763126764_
                 (lambda (_L126435_ _L126436_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126435_)))))
            (let ((___match126792126793_
                   (lambda (_e126381126456_
                            _hd126380126459_
                            _tl126379126461_
                            _e126384126464_
                            _hd126383126467_
                            _tl126382126469_
                            _e126387126472_
                            _hd126386126475_
                            _tl126385126477_
                            _e126390126480_
                            _hd126389126483_
                            _tl126388126485_)
                     (let ((_L126488_ _hd126389126483_)
                           (_L126489_ _hd126386126475_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126489_))
                           (___kont126761126762_ _L126488_ _L126489_)
                           (___kont126763126764_
                            _hd126389126483_
                            _hd126383126467_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126759126760_))
                  (let ((_e126381126456_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126759126760_))))
                    (let ((_tl126379126461_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126381126456_)))
                          (_hd126380126459_
                           (let ()
                             (declare (not safe))
                             (##car _e126381126456_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126379126461_))
                          (let ((_e126384126464_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126379126461_))))
                            (let ((_tl126382126469_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126384126464_)))
                                  (_hd126383126467_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126384126464_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126383126467_))
                                  (let ((_e126387126472_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126383126467_))))
                                    (let ((_tl126385126477_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126387126472_)))
                                          (_hd126386126475_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126387126472_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126385126477_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126382126469_))
                                              (let ((_e126390126480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126382126469_))))
                                                (let ((_tl126388126485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126390126480_)))
                                                      (_hd126389126483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126390126480_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126388126485_))
                                                      (___match126792126793_
                                                       _e126381126456_
                                                       _hd126380126459_
                                                       _tl126379126461_
                                                       _e126384126464_
                                                       _hd126383126467_
                                                       _tl126382126469_
                                                       _e126387126472_
                                                       _hd126386126475_
                                                       _tl126385126477_
                                                       _e126390126480_
                                                       _hd126389126483_
                                                       _tl126388126485_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126375126406_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126375126406_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126382126469_))
                                              (let ((_e126401126427_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126382126469_))))
                                                (let ((_tl126399126432_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126401126427_)))
                                                      (_hd126400126430_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126401126427_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126399126432_))
                                                      (___kont126763126764_
                                                       _hd126400126430_
                                                       _hd126383126467_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126375126406_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126375126406_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126382126469_))
                                      (let ((_e126401126427_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126382126469_))))
                                        (let ((_tl126399126432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126401126427_)))
                                              (_hd126400126430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126401126427_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126399126432_))
                                              (___kont126763126764_
                                               _hd126400126430_
                                               _hd126383126467_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126375126406_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126375126406_))))))
                          (let () (declare (not safe)) (_g126375126406_)))))
                  (let () (declare (not safe)) (_g126375126406_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx126157_)
        (letrec ((_collect-e126159_
                  (lambda (_hd126316_ _expr126317_)
                    (let* ((___stx126815126816_ _hd126316_)
                           (_g126320126330_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126815126816_)))))
                      (let ((___kont126817126818_
                             (lambda (_L126350_)
                               (let ((_sym126361_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126350_))))
                                 (if (let ((__tmp128820
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128820 _sym126361_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126361_))
                                     (let ((_type126362126364_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126317_))))
                                       (if _type126362126364_
                                           (let ((_type126367_
                                                  _type126362126364_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126361_
                                              _type126367_
                                              '#t))
                                           '#f))))))
                            (___kont126819126820_ (lambda () '#!void)))
                        (let ((___match126828126829_
                               (lambda (_e126325126342_
                                        _hd126324126345_
                                        _tl126323126347_)
                                 (let ((_L126350_ _hd126324126345_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126350_))
                                       (___kont126817126818_ _L126350_)
                                       (___kont126819126820_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126815126816_))
                              (let ((_e126325126342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126815126816_))))
                                (let ((_tl126323126347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126325126342_)))
                                      (_hd126324126345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126325126342_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126323126347_))
                                      (___match126828126829_
                                       _e126325126342_
                                       _hd126324126345_
                                       _tl126323126347_)
                                      (___kont126819126820_))))
                              (___kont126819126820_))))))))
          (let* ((_g126161126196_
                  (lambda (_g126162126193_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126162126193_))))
                 (_g126160126313_
                  (lambda (_g126162126199_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126162126199_))
                        (let ((_e126168126201_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126162126199_))))
                          (let ((_hd126167126204_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126168126201_)))
                                (_tl126166126206_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126168126201_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126166126206_))
                                (let ((_e126171126209_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126166126206_))))
                                  (let ((_hd126170126212_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126171126209_)))
                                        (_tl126169126214_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126171126209_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126170126212_))
                                        (let ((_g128821_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126170126212_
                                                  '0))))
                                          (begin
                                            (let ((_g128822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128821_)
                                                         (##vector-length
                                                          _g128821_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128822_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128822_)))
                                            (let ((_target126172126217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128821_
                                                      0)))
                                                  (_tl126174126219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128821_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126174126219_))
                                                  (letrec ((_loop126175126222_
                                                            (lambda (_hd126173126225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126179126227_
                             _hd126180126229_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126173126225_))
                          (let ((_e126176126232_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126173126225_))))
                            (let ((_lp-hd126177126235_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126176126232_)))
                                  (_lp-tl126178126237_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126176126232_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126177126235_))
                                  (let ((_e126185126240_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126177126235_))))
                                    (let ((_hd126184126243_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126185126240_)))
                                          (_tl126183126245_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126185126240_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126183126245_))
                                          (let ((_e126188126248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126183126245_))))
                                            (let ((_hd126187126251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126188126248_)))
                                                  (_tl126186126253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126188126248_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126186126253_))
                                                  (let ((__tmp128827
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126187126251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126179126227_)))
                (__tmp128826
                 (let ()
                   (declare (not safe))
                   (cons _hd126184126243_ _hd126180126229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126175126222_
                                                     _lp-tl126178126237_
                                                     __tmp128827
                                                     __tmp128826))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126161126196_
                                                     _g126162126199_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126161126196_
                                             _g126162126199_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126161126196_ _g126162126199_)))))
                          (let ((_expr126181126256_
                                 (reverse _expr126179126227_))
                                (_hd126182126258_ (reverse _hd126180126229_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126169126214_))
                                (let ((_e126191126261_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126169126214_))))
                                  (let ((_hd126190126264_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126191126261_)))
                                        (_tl126189126266_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126191126261_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126189126266_))
                                        ((lambda (_L126269_
                                                  _L126270_
                                                  _L126271_)
                                           (for-each
                                            _collect-e126159_
                                            (let ((__tmp128823
                                                   (lambda (_g126291126294_
                                                            _g126292126296_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126291126294_
                                                             _g126292126296_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128823
                                                      '()
                                                      _L126271_))
                                            (let ((__tmp128824
                                                   (lambda (_g126298126301_
                                                            _g126299126303_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126298126301_
                                                             _g126299126303_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128824
                                                      '()
                                                      _L126270_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128825
                                                   (lambda (_g126305126308_
                                                            _g126306126310_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126305126308_
                                                             _g126306126310_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128825
                                                      '()
                                                      _L126270_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L126269_)))
                                         _hd126190126264_
                                         _expr126181126256_
                                         _hd126182126258_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126161126196_ _g126162126199_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126161126196_ _g126162126199_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126175126222_
                                                       _target126172126217_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126161126196_
                                                     _g126162126199_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126161126196_ _g126162126199_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126161126196_ _g126162126199_)))))
                        (let ()
                          (declare (not safe))
                          (_g126161126196_ _g126162126199_))))))
            (declare (not safe))
            (_g126160126313_ _stx126157_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125649_)
        (let* ((___stx126831126832_ _stx125649_)
               (_g125653125768_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126831126832_)))))
          (let ((___kont126833126834_
                 (lambda (_L126107_ _L126108_ _L126109_ _L126110_ _L126111_)
                   (let ((__tmp128831
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126110_)))
                         (__tmp128830
                          (let () (declare (not safe)) (gx#stx-e _L126109_)))
                         (__tmp128829
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126108_)))
                         (__tmp128828
                          (let () (declare (not safe)) (gx#stx-e _L126107_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128831
                      __tmp128830
                      __tmp128829
                      __tmp128828))))
                (___kont126835126836_
                 (lambda (_L125935_ _L125936_ _L125937_ _L125938_)
                   (let ((__tmp128834
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125937_)))
                         (__tmp128833
                          (let () (declare (not safe)) (gx#stx-e _L125936_)))
                         (__tmp128832
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125935_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128834
                      __tmp128833
                      __tmp128832
                      '#f))))
                (___kont126837126838_
                 (lambda (_L125805_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128835
                           (lambda (_g125818125821_ _g125819125823_)
                             (let ()
                               (declare (not safe))
                               (cons _g125818125821_ _g125819125823_)))))
                      (declare (not safe))
                      (foldr1 __tmp128835 '() _L125805_))))))
            (let* ((___match127088127089_
                    (lambda (_e125754125773_
                             _hd125753125776_
                             _tl125752125778_
                             ___splice126839126840_
                             _target125755125781_
                             _tl125757125783_)
                      (letrec ((_loop125758125786_
                                (lambda (_hd125756125789_ _expr125762125791_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125756125789_))
                                      (let ((_e125759125794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125756125789_))))
                                        (let ((_lp-tl125761125799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125759125794_)))
                                              (_lp-hd125760125797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125759125794_))))
                                          (let ((__tmp128836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125760125797_
                                                         _expr125762125791_))))
                                            (declare (not safe))
                                            (_loop125758125786_
                                             _lp-tl125761125799_
                                             __tmp128836))))
                                      (let ((_expr125763125802_
                                             (reverse _expr125762125791_)))
                                        (___kont126837126838_
                                         _expr125763125802_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125758125786_ _target125755125781_ '())))))
                   (___match126968126969_
                    (lambda (_e125662125979_
                             _hd125661125982_
                             _tl125660125984_
                             _e125665125987_
                             _hd125664125990_
                             _tl125663125992_
                             _e125668125995_
                             _hd125667125998_
                             _tl125666126000_
                             _e125671126003_
                             _hd125670126006_
                             _tl125669126008_
                             _e125674126011_
                             _hd125673126014_
                             _tl125672126016_
                             _e125677126019_
                             _hd125676126022_
                             _tl125675126024_
                             _e125680126027_
                             _hd125679126030_
                             _tl125678126032_
                             _e125683126035_
                             _hd125682126038_
                             _tl125681126040_
                             _e125686126043_
                             _hd125685126046_
                             _tl125684126048_
                             _e125689126051_
                             _hd125688126054_
                             _tl125687126056_
                             _e125692126059_
                             _hd125691126062_
                             _tl125690126064_
                             _e125695126067_
                             _hd125694126070_
                             _tl125693126072_
                             _e125698126075_
                             _hd125697126078_
                             _tl125696126080_
                             _e125701126083_
                             _hd125700126086_
                             _tl125699126088_
                             _e125704126091_
                             _hd125703126094_
                             _tl125702126096_
                             _e125707126099_
                             _hd125706126102_
                             _tl125705126104_)
                      (let ((_L126107_ _hd125706126102_)
                            (_L126108_ _hd125697126078_)
                            (_L126109_ _hd125688126054_)
                            (_L126110_ _hd125679126030_)
                            (_L126111_ _hd125670126006_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126111_
                               'bind-method!))
                            (___kont126833126834_
                             _L126107_
                             _L126108_
                             _L126109_
                             _L126110_
                             _L126111_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125660125984_))
                                (let ((___splice126839126840_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125660125984_
                                          '0))))
                                  (let ((_tl125757125783_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126839126840_
                                            '1)))
                                        (_target125755125781_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126839126840_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125757125783_))
                                        (___match127088127089_
                                         _e125662125979_
                                         _hd125661125982_
                                         _tl125660125984_
                                         ___splice126839126840_
                                         _target125755125781_
                                         _tl125757125783_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125653125768_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125653125768_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126831126832_))
                  (let ((_e125662125979_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126831126832_))))
                    (let ((_tl125660125984_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125662125979_)))
                          (_hd125661125982_
                           (let ()
                             (declare (not safe))
                             (##car _e125662125979_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125660125984_))
                          (let ((_e125665125987_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125660125984_))))
                            (let ((_tl125663125992_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125665125987_)))
                                  (_hd125664125990_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125665125987_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125664125990_))
                                  (let ((_e125668125995_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125664125990_))))
                                    (let ((_tl125666126000_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125668125995_)))
                                          (_hd125667125998_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125668125995_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125667125998_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125667125998_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125666126000_))
                                                  (let ((_e125671126003_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125666126000_))))
                                                    (let ((_tl125669126008_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125671126003_)))
                                                          (_hd125670126006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125671126003_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125669126008_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125663125992_))
                      (let ((_e125674126011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125663125992_))))
                        (let ((_tl125672126016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125674126011_)))
                              (_hd125673126014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125674126011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125673126014_))
                              (let ((_e125677126019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125673126014_))))
                                (let ((_tl125675126024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125677126019_)))
                                      (_hd125676126022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125677126019_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125676126022_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125676126022_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125675126024_))
                                              (let ((_e125680126027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125675126024_))))
                                                (let ((_tl125678126032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125680126027_)))
                                                      (_hd125679126030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125680126027_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125678126032_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125672126016_))
                                                          (let ((_e125683126035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125672126016_))))
                    (let ((_tl125681126040_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125683126035_)))
                          (_hd125682126038_
                           (let ()
                             (declare (not safe))
                             (##car _e125683126035_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125682126038_))
                          (let ((_e125686126043_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125682126038_))))
                            (let ((_tl125684126048_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125686126043_)))
                                  (_hd125685126046_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125686126043_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125685126046_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125685126046_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125684126048_))
                                          (let ((_e125689126051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125684126048_))))
                                            (let ((_tl125687126056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125689126051_)))
                                                  (_hd125688126054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125689126051_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125687126056_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125681126040_))
                                                      (let ((_e125692126059_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125681126040_))))
                (let ((_tl125690126064_
                       (let () (declare (not safe)) (##cdr _e125692126059_)))
                      (_hd125691126062_
                       (let () (declare (not safe)) (##car _e125692126059_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125691126062_))
                      (let ((_e125695126067_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125691126062_))))
                        (let ((_tl125693126072_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125695126067_)))
                              (_hd125694126070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125695126067_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125694126070_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125694126070_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125693126072_))
                                      (let ((_e125698126075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125693126072_))))
                                        (let ((_tl125696126080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125698126075_)))
                                              (_hd125697126078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125698126075_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125696126080_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125690126064_))
                                                  (let ((_e125701126083_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125690126064_))))
                                                    (let ((_tl125699126088_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125701126083_)))
                                                          (_hd125700126086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125701126083_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125700126086_))
                                                          (let ((_e125704126091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125700126086_))))
                    (let ((_tl125702126096_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125704126091_)))
                          (_hd125703126094_
                           (let ()
                             (declare (not safe))
                             (##car _e125704126091_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125703126094_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125703126094_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125702126096_))
                                  (let ((_e125707126099_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125702126096_))))
                                    (let ((_tl125705126104_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125707126099_)))
                                          (_hd125706126102_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125707126099_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125705126104_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125699126088_))
                                              (___match126968126969_
                                               _e125662125979_
                                               _hd125661125982_
                                               _tl125660125984_
                                               _e125665125987_
                                               _hd125664125990_
                                               _tl125663125992_
                                               _e125668125995_
                                               _hd125667125998_
                                               _tl125666126000_
                                               _e125671126003_
                                               _hd125670126006_
                                               _tl125669126008_
                                               _e125674126011_
                                               _hd125673126014_
                                               _tl125672126016_
                                               _e125677126019_
                                               _hd125676126022_
                                               _tl125675126024_
                                               _e125680126027_
                                               _hd125679126030_
                                               _tl125678126032_
                                               _e125683126035_
                                               _hd125682126038_
                                               _tl125681126040_
                                               _e125686126043_
                                               _hd125685126046_
                                               _tl125684126048_
                                               _e125689126051_
                                               _hd125688126054_
                                               _tl125687126056_
                                               _e125692126059_
                                               _hd125691126062_
                                               _tl125690126064_
                                               _e125695126067_
                                               _hd125694126070_
                                               _tl125693126072_
                                               _e125698126075_
                                               _hd125697126078_
                                               _tl125696126080_
                                               _e125701126083_
                                               _hd125700126086_
                                               _tl125699126088_
                                               _e125704126091_
                                               _hd125703126094_
                                               _tl125702126096_
                                               _e125707126099_
                                               _hd125706126102_
                                               _tl125705126104_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125660125984_))
                                                  (let ((___splice126839126840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125660125984_
                                                            '0))))
                                                    (let ((_tl125757125783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '1)))
                                                          (_target125755125781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125757125783_))
                                                          (___match127088127089_
                                                           _e125662125979_
                                                           _hd125661125982_
                                                           _tl125660125984_
                                                           ___splice126839126840_
                                                           _target125755125781_
                                                           _tl125757125783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125653125768_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125660125984_))
                                              (let ((___splice126839126840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125660125984_
                                                        '0))))
                                                (let ((_tl125757125783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '1)))
                                                      (_target125755125781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125757125783_))
                                                      (___match127088127089_
                                                       _e125662125979_
                                                       _hd125661125982_
                                                       _tl125660125984_
                                                       ___splice126839126840_
                                                       _target125755125781_
                                                       _tl125757125783_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125653125768_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125660125984_))
                                      (let ((___splice126839126840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125660125984_
                                                '0))))
                                        (let ((_tl125757125783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '1)))
                                              (_target125755125781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125757125783_))
                                              (___match127088127089_
                                               _e125662125979_
                                               _hd125661125982_
                                               _tl125660125984_
                                               ___splice126839126840_
                                               _target125755125781_
                                               _tl125757125783_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125660125984_))
                                  (let ((___splice126839126840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125660125984_
                                            '0))))
                                    (let ((_tl125757125783_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126839126840_
                                              '1)))
                                          (_target125755125781_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126839126840_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125757125783_))
                                          (___match127088127089_
                                           _e125662125979_
                                           _hd125661125982_
                                           _tl125660125984_
                                           ___splice126839126840_
                                           _target125755125781_
                                           _tl125757125783_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125653125768_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125653125768_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125660125984_))
                              (let ((___splice126839126840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125660125984_
                                        '0))))
                                (let ((_tl125757125783_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126839126840_
                                          '1)))
                                      (_target125755125781_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126839126840_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125757125783_))
                                      (___match127088127089_
                                       _e125662125979_
                                       _hd125661125982_
                                       _tl125660125984_
                                       ___splice126839126840_
                                       _target125755125781_
                                       _tl125757125783_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_)))))
                              (let ()
                                (declare (not safe))
                                (_g125653125768_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125660125984_))
                      (let ((___splice126839126840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125660125984_ '0))))
                        (let ((_tl125757125783_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '1)))
                              (_target125755125781_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125757125783_))
                              (___match127088127089_
                               _e125662125979_
                               _hd125661125982_
                               _tl125660125984_
                               ___splice126839126840_
                               _target125755125781_
                               _tl125757125783_)
                              (let ()
                                (declare (not safe))
                                (_g125653125768_)))))
                      (let () (declare (not safe)) (_g125653125768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125690126064_))
                                                      (if (let ((__tmp128837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128837 'bind-method!))
                  (let ((_L125935_ _hd125697126078_)
                        (_L125936_ _hd125688126054_)
                        (_L125937_ _hd125679126030_)
                        (_L125938_ _hd125670126006_))
                    (___kont126835126836_
                     _L125935_
                     _L125936_
                     _L125937_
                     _L125938_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125660125984_))
                      (let ((___splice126839126840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125660125984_ '0))))
                        (let ((_tl125757125783_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '1)))
                              (_target125755125781_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125757125783_))
                              (___match127088127089_
                               _e125662125979_
                               _hd125661125982_
                               _tl125660125984_
                               ___splice126839126840_
                               _target125755125781_
                               _tl125757125783_)
                              (let ()
                                (declare (not safe))
                                (_g125653125768_)))))
                      (let () (declare (not safe)) (_g125653125768_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125660125984_))
                  (let ((___splice126839126840_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125660125984_ '0))))
                    (let ((_tl125757125783_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126839126840_ '1)))
                          (_target125755125781_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126839126840_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125757125783_))
                          (___match127088127089_
                           _e125662125979_
                           _hd125661125982_
                           _tl125660125984_
                           ___splice126839126840_
                           _target125755125781_
                           _tl125757125783_)
                          (let () (declare (not safe)) (_g125653125768_)))))
                  (let () (declare (not safe)) (_g125653125768_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125660125984_))
                                                  (let ((___splice126839126840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125660125984_
                                                            '0))))
                                                    (let ((_tl125757125783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '1)))
                                                          (_target125755125781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125757125783_))
                                                          (___match127088127089_
                                                           _e125662125979_
                                                           _hd125661125982_
                                                           _tl125660125984_
                                                           ___splice126839126840_
                                                           _target125755125781_
                                                           _tl125757125783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125653125768_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125660125984_))
                                          (let ((___splice126839126840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125660125984_
                                                    '0))))
                                            (let ((_tl125757125783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126839126840_
                                                      '1)))
                                                  (_target125755125781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126839126840_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125757125783_))
                                                  (___match127088127089_
                                                   _e125662125979_
                                                   _hd125661125982_
                                                   _tl125660125984_
                                                   ___splice126839126840_
                                                   _target125755125781_
                                                   _tl125757125783_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125653125768_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125660125984_))
                                      (let ((___splice126839126840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125660125984_
                                                '0))))
                                        (let ((_tl125757125783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '1)))
                                              (_target125755125781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125757125783_))
                                              (___match127088127089_
                                               _e125662125979_
                                               _hd125661125982_
                                               _tl125660125984_
                                               ___splice126839126840_
                                               _target125755125781_
                                               _tl125757125783_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125660125984_))
                                  (let ((___splice126839126840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125660125984_
                                            '0))))
                                    (let ((_tl125757125783_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126839126840_
                                              '1)))
                                          (_target125755125781_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126839126840_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125757125783_))
                                          (___match127088127089_
                                           _e125662125979_
                                           _hd125661125982_
                                           _tl125660125984_
                                           ___splice126839126840_
                                           _target125755125781_
                                           _tl125757125783_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125653125768_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125653125768_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125660125984_))
                          (let ((___splice126839126840_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125660125984_
                                    '0))))
                            (let ((_tl125757125783_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126839126840_ '1)))
                                  (_target125755125781_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126839126840_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125757125783_))
                                  (___match127088127089_
                                   _e125662125979_
                                   _hd125661125982_
                                   _tl125660125984_
                                   ___splice126839126840_
                                   _target125755125781_
                                   _tl125757125783_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125653125768_)))))
                          (let () (declare (not safe)) (_g125653125768_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125660125984_))
                  (let ((___splice126839126840_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125660125984_ '0))))
                    (let ((_tl125757125783_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126839126840_ '1)))
                          (_target125755125781_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126839126840_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125757125783_))
                          (___match127088127089_
                           _e125662125979_
                           _hd125661125982_
                           _tl125660125984_
                           ___splice126839126840_
                           _target125755125781_
                           _tl125757125783_)
                          (let () (declare (not safe)) (_g125653125768_)))))
                  (let () (declare (not safe)) (_g125653125768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125660125984_))
                                                      (let ((___splice126839126840_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125660125984_ '0))))
                (let ((_tl125757125783_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126839126840_ '1)))
                      (_target125755125781_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126839126840_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125757125783_))
                      (___match127088127089_
                       _e125662125979_
                       _hd125661125982_
                       _tl125660125984_
                       ___splice126839126840_
                       _target125755125781_
                       _tl125757125783_)
                      (let () (declare (not safe)) (_g125653125768_)))))
              (let () (declare (not safe)) (_g125653125768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125660125984_))
                                              (let ((___splice126839126840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125660125984_
                                                        '0))))
                                                (let ((_tl125757125783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '1)))
                                                      (_target125755125781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125757125783_))
                                                      (___match127088127089_
                                                       _e125662125979_
                                                       _hd125661125982_
                                                       _tl125660125984_
                                                       ___splice126839126840_
                                                       _target125755125781_
                                                       _tl125757125783_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125653125768_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125660125984_))
                                          (let ((___splice126839126840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125660125984_
                                                    '0))))
                                            (let ((_tl125757125783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126839126840_
                                                      '1)))
                                                  (_target125755125781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126839126840_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125757125783_))
                                                  (___match127088127089_
                                                   _e125662125979_
                                                   _hd125661125982_
                                                   _tl125660125984_
                                                   ___splice126839126840_
                                                   _target125755125781_
                                                   _tl125757125783_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125653125768_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125660125984_))
                                      (let ((___splice126839126840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125660125984_
                                                '0))))
                                        (let ((_tl125757125783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '1)))
                                              (_target125755125781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125757125783_))
                                              (___match127088127089_
                                               _e125662125979_
                                               _hd125661125982_
                                               _tl125660125984_
                                               ___splice126839126840_
                                               _target125755125781_
                                               _tl125757125783_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125660125984_))
                              (let ((___splice126839126840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125660125984_
                                        '0))))
                                (let ((_tl125757125783_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126839126840_
                                          '1)))
                                      (_target125755125781_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126839126840_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125757125783_))
                                      (___match127088127089_
                                       _e125662125979_
                                       _hd125661125982_
                                       _tl125660125984_
                                       ___splice126839126840_
                                       _target125755125781_
                                       _tl125757125783_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_)))))
                              (let ()
                                (declare (not safe))
                                (_g125653125768_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125660125984_))
                      (let ((___splice126839126840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125660125984_ '0))))
                        (let ((_tl125757125783_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '1)))
                              (_target125755125781_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125757125783_))
                              (___match127088127089_
                               _e125662125979_
                               _hd125661125982_
                               _tl125660125984_
                               ___splice126839126840_
                               _target125755125781_
                               _tl125757125783_)
                              (let ()
                                (declare (not safe))
                                (_g125653125768_)))))
                      (let () (declare (not safe)) (_g125653125768_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125660125984_))
                  (let ((___splice126839126840_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125660125984_ '0))))
                    (let ((_tl125757125783_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126839126840_ '1)))
                          (_target125755125781_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126839126840_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125757125783_))
                          (___match127088127089_
                           _e125662125979_
                           _hd125661125982_
                           _tl125660125984_
                           ___splice126839126840_
                           _target125755125781_
                           _tl125757125783_)
                          (let () (declare (not safe)) (_g125653125768_)))))
                  (let () (declare (not safe)) (_g125653125768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125660125984_))
                                                  (let ((___splice126839126840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125660125984_
                                                            '0))))
                                                    (let ((_tl125757125783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '1)))
                                                          (_target125755125781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125757125783_))
                                                          (___match127088127089_
                                                           _e125662125979_
                                                           _hd125661125982_
                                                           _tl125660125984_
                                                           ___splice126839126840_
                                                           _target125755125781_
                                                           _tl125757125783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125653125768_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125660125984_))
                                              (let ((___splice126839126840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125660125984_
                                                        '0))))
                                                (let ((_tl125757125783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '1)))
                                                      (_target125755125781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125757125783_))
                                                      (___match127088127089_
                                                       _e125662125979_
                                                       _hd125661125982_
                                                       _tl125660125984_
                                                       ___splice126839126840_
                                                       _target125755125781_
                                                       _tl125757125783_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125653125768_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125660125984_))
                                          (let ((___splice126839126840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125660125984_
                                                    '0))))
                                            (let ((_tl125757125783_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126839126840_
                                                      '1)))
                                                  (_target125755125781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126839126840_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125757125783_))
                                                  (___match127088127089_
                                                   _e125662125979_
                                                   _hd125661125982_
                                                   _tl125660125984_
                                                   ___splice126839126840_
                                                   _target125755125781_
                                                   _tl125757125783_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125653125768_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125660125984_))
                                  (let ((___splice126839126840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125660125984_
                                            '0))))
                                    (let ((_tl125757125783_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126839126840_
                                              '1)))
                                          (_target125755125781_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126839126840_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125757125783_))
                                          (___match127088127089_
                                           _e125662125979_
                                           _hd125661125982_
                                           _tl125660125984_
                                           ___splice126839126840_
                                           _target125755125781_
                                           _tl125757125783_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125653125768_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125653125768_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125660125984_))
                          (let ((___splice126839126840_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125660125984_
                                    '0))))
                            (let ((_tl125757125783_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126839126840_ '1)))
                                  (_target125755125781_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126839126840_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125757125783_))
                                  (___match127088127089_
                                   _e125662125979_
                                   _hd125661125982_
                                   _tl125660125984_
                                   ___splice126839126840_
                                   _target125755125781_
                                   _tl125757125783_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125653125768_)))))
                          (let () (declare (not safe)) (_g125653125768_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125660125984_))
                      (let ((___splice126839126840_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125660125984_ '0))))
                        (let ((_tl125757125783_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '1)))
                              (_target125755125781_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126839126840_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125757125783_))
                              (___match127088127089_
                               _e125662125979_
                               _hd125661125982_
                               _tl125660125984_
                               ___splice126839126840_
                               _target125755125781_
                               _tl125757125783_)
                              (let ()
                                (declare (not safe))
                                (_g125653125768_)))))
                      (let () (declare (not safe)) (_g125653125768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125660125984_))
                                                      (let ((___splice126839126840_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125660125984_ '0))))
                (let ((_tl125757125783_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126839126840_ '1)))
                      (_target125755125781_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126839126840_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125757125783_))
                      (___match127088127089_
                       _e125662125979_
                       _hd125661125982_
                       _tl125660125984_
                       ___splice126839126840_
                       _target125755125781_
                       _tl125757125783_)
                      (let () (declare (not safe)) (_g125653125768_)))))
              (let () (declare (not safe)) (_g125653125768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125660125984_))
                                                  (let ((___splice126839126840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125660125984_
                                                            '0))))
                                                    (let ((_tl125757125783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '1)))
                                                          (_target125755125781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126839126840_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125757125783_))
                                                          (___match127088127089_
                                                           _e125662125979_
                                                           _hd125661125982_
                                                           _tl125660125984_
                                                           ___splice126839126840_
                                                           _target125755125781_
                                                           _tl125757125783_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125653125768_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125653125768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125660125984_))
                                              (let ((___splice126839126840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125660125984_
                                                        '0))))
                                                (let ((_tl125757125783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '1)))
                                                      (_target125755125781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126839126840_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125757125783_))
                                                      (___match127088127089_
                                                       _e125662125979_
                                                       _hd125661125982_
                                                       _tl125660125984_
                                                       ___splice126839126840_
                                                       _target125755125781_
                                                       _tl125757125783_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125653125768_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125660125984_))
                                      (let ((___splice126839126840_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125660125984_
                                                '0))))
                                        (let ((_tl125757125783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '1)))
                                              (_target125755125781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126839126840_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125757125783_))
                                              (___match127088127089_
                                               _e125662125979_
                                               _hd125661125982_
                                               _tl125660125984_
                                               ___splice126839126840_
                                               _target125755125781_
                                               _tl125757125783_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125653125768_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125660125984_))
                              (let ((___splice126839126840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125660125984_
                                        '0))))
                                (let ((_tl125757125783_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126839126840_
                                          '1)))
                                      (_target125755125781_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126839126840_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125757125783_))
                                      (___match127088127089_
                                       _e125662125979_
                                       _hd125661125982_
                                       _tl125660125984_
                                       ___splice126839126840_
                                       _target125755125781_
                                       _tl125757125783_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125653125768_)))))
                              (let ()
                                (declare (not safe))
                                (_g125653125768_))))))
                  (let () (declare (not safe)) (_g125653125768_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125589_)
        (let* ((___stx127091127092_ _stx125589_)
               (_g125592125605_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127091127092_)))))
          (let ((___kont127093127094_
                 (lambda (_L125633_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125633_))))
                (___kont127095127096_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127091127092_))
                (let ((_e125597125617_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127091127092_))))
                  (let ((_tl125595125622_
                         (let () (declare (not safe)) (##cdr _e125597125617_)))
                        (_hd125596125620_
                         (let ()
                           (declare (not safe))
                           (##car _e125597125617_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125595125622_))
                        (let ((_e125600125625_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125595125622_))))
                          (let ((_tl125598125630_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125600125625_)))
                                (_hd125599125628_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125600125625_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125598125630_))
                                (___kont127093127094_ _hd125599125628_)
                                (___kont127095127096_))))
                        (___kont127095127096_))))
                (___kont127095127096_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125469_)
        (let* ((_g125471125488_
                (lambda (_g125472125485_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125472125485_))))
               (_g125470125586_
                (lambda (_g125472125491_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125472125491_))
                      (let ((_e125477125493_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125472125491_))))
                        (let ((_hd125476125496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125477125493_)))
                              (_tl125475125498_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125477125493_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125475125498_))
                              (let ((_e125480125501_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125475125498_))))
                                (let ((_hd125479125504_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125480125501_)))
                                      (_tl125478125506_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125480125501_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125478125506_))
                                      (let ((_e125483125509_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125478125506_))))
                                        (let ((_hd125482125512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125483125509_)))
                                              (_tl125481125514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125483125509_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125481125514_))
                                              ((lambda (_L125517_ _L125518_)
                                                 (let* ((___stx127113127114_
                                                         _L125518_)
                                                        (_g125534125545_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127113127114_)))))
                                                   (let ((___kont127115127116_
                                                          (lambda (_L125565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125566_)
                    (let ((_$e125578_
                           (let ((__tmp128838
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125566_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128838))))
                      (if _$e125578_
                          ((lambda (_type-e125581_)
                             (_type-e125581_ _stx125469_ _L125518_))
                           _$e125578_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125517_))))))
                 (___kont127117127118_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127124127125_
                                                            (lambda (_e125540125557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125539125560_
                             _tl125538125562_)
                      (let ((_L125565_ _tl125538125562_)
                            (_L125566_ _hd125539125560_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125566_))
                            (___kont127115127116_ _L125565_ _L125566_)
                            (___kont127117127118_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127113127114_))
                   (let ((_e125540125557_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127113127114_))))
                     (let ((_tl125538125562_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125540125557_)))
                           (_hd125539125560_
                            (let ()
                              (declare (not safe))
                              (##car _e125540125557_))))
                       (___match127124127125_
                        _e125540125557_
                        _hd125539125560_
                        _tl125538125562_)))
                   (___kont127117127118_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125482125512_
                                               _hd125479125504_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125471125488_
                                                 _g125472125491_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125471125488_ _g125472125491_)))))
                              (let ()
                                (declare (not safe))
                                (_g125471125488_ _g125472125491_)))))
                      (let ()
                        (declare (not safe))
                        (_g125471125488_ _g125472125491_))))))
          (declare (not safe))
          (_g125470125586_ _stx125469_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125313_ _ann125314_)
        (let* ((_g125316125353_
                (lambda (_g125317125350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125317125350_))))
               (_g125315125466_
                (lambda (_g125317125356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125317125356_))
                      (let ((_e125327125358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125317125356_))))
                        (let ((_hd125326125361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125327125358_)))
                              (_tl125325125363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125327125358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125325125363_))
                              (let ((_e125330125366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125325125363_))))
                                (let ((_hd125329125369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125330125366_)))
                                      (_tl125328125371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125330125366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125328125371_))
                                      (let ((_e125333125374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125328125371_))))
                                        (let ((_hd125332125377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125333125374_)))
                                              (_tl125331125379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125333125374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125331125379_))
                                              (let ((_e125336125382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125331125379_))))
                                                (let ((_hd125335125385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125336125382_)))
                                                      (_tl125334125387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125336125382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125334125387_))
                                                      (let ((_e125339125390_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125334125387_))))
                (let ((_hd125338125393_
                       (let () (declare (not safe)) (##car _e125339125390_)))
                      (_tl125337125395_
                       (let () (declare (not safe)) (##cdr _e125339125390_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125337125395_))
                      (let ((_e125342125398_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125337125395_))))
                        (let ((_hd125341125401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125342125398_)))
                              (_tl125340125403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125342125398_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125340125403_))
                              (let ((_e125345125406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125340125403_))))
                                (let ((_hd125344125409_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125345125406_)))
                                      (_tl125343125411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125345125406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125343125411_))
                                      (let ((_e125348125414_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125343125411_))))
                                        (let ((_hd125347125417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125348125414_)))
                                              (_tl125346125419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125348125414_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125346125419_))
                                              ((lambda (_L125422_
                                                        _L125423_
                                                        _L125424_
                                                        _L125425_
                                                        _L125426_
                                                        _L125427_
                                                        _L125428_)
                                                 (let ((_type-id125458_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125428_)))
                                                       (_super125459_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125427_)))
                                                       (_slots125460_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125426_)))
                                                       (_ctor-method125461_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125425_)))
                                                       (_struct?125462_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125424_)))
                                                       (_final?125463_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125423_)))
                                                       (_metaclass125464_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125422_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125422_))
                                                            '#f)))
                                                   (let ((__obj128796
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
                                                      __obj128796
                                                      _type-id125458_
                                                      _super125459_
                                                      _slots125460_
                                                      _ctor-method125461_
                                                      _struct?125462_
                                                      _final?125463_
                                                      _metaclass125464_)
                                                     __obj128796)))
                                               _hd125347125417_
                                               _hd125344125409_
                                               _hd125341125401_
                                               _hd125338125393_
                                               _hd125335125385_
                                               _hd125332125377_
                                               _hd125329125369_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125316125353_
                                                 _g125317125356_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125316125353_ _g125317125356_)))))
                              (let ()
                                (declare (not safe))
                                (_g125316125353_ _g125317125356_)))))
                      (let ()
                        (declare (not safe))
                        (_g125316125353_ _g125317125356_)))))
              (let ()
                (declare (not safe))
                (_g125316125353_ _g125317125356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125316125353_
                                                 _g125317125356_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125316125353_ _g125317125356_)))))
                              (let ()
                                (declare (not safe))
                                (_g125316125353_ _g125317125356_)))))
                      (let ()
                        (declare (not safe))
                        (_g125316125353_ _g125317125356_))))))
          (declare (not safe))
          (_g125315125466_ _ann125314_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125261_ _ann125262_)
        (let* ((_g125264125277_
                (lambda (_g125265125274_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125265125274_))))
               (_g125263125310_
                (lambda (_g125265125280_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125265125280_))
                      (let ((_e125269125282_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125265125280_))))
                        (let ((_hd125268125285_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125269125282_)))
                              (_tl125267125287_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125269125282_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125267125287_))
                              (let ((_e125272125290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125267125287_))))
                                (let ((_hd125271125293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125272125290_)))
                                      (_tl125270125295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125272125290_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125270125295_))
                                      ((lambda (_L125298_)
                                         (let ((__tmp128839
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125298_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128839)))
                                       _hd125271125293_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125264125277_ _g125265125280_)))))
                              (let ()
                                (declare (not safe))
                                (_g125264125277_ _g125265125280_)))))
                      (let ()
                        (declare (not safe))
                        (_g125264125277_ _g125265125280_))))))
          (declare (not safe))
          (_g125263125310_ _ann125262_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125209_ _ann125210_)
        (let* ((_g125212125225_
                (lambda (_g125213125222_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125213125222_))))
               (_g125211125258_
                (lambda (_g125213125228_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125213125228_))
                      (let ((_e125217125230_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125213125228_))))
                        (let ((_hd125216125233_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125217125230_)))
                              (_tl125215125235_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125217125230_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125215125235_))
                              (let ((_e125220125238_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125215125235_))))
                                (let ((_hd125219125241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125220125238_)))
                                      (_tl125218125243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125220125238_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125218125243_))
                                      ((lambda (_L125246_)
                                         (let ((__tmp128840
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125246_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128840)))
                                       _hd125219125241_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125212125225_ _g125213125228_)))))
                              (let ()
                                (declare (not safe))
                                (_g125212125225_ _g125213125228_)))))
                      (let ()
                        (declare (not safe))
                        (_g125212125225_ _g125213125228_))))))
          (declare (not safe))
          (_g125211125258_ _ann125210_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125125_ _ann125126_)
        (let* ((_g125128125149_
                (lambda (_g125129125146_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125129125146_))))
               (_g125127125206_
                (lambda (_g125129125152_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125129125152_))
                      (let ((_e125135125154_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125129125152_))))
                        (let ((_hd125134125157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125135125154_)))
                              (_tl125133125159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125135125154_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125133125159_))
                              (let ((_e125138125162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125133125159_))))
                                (let ((_hd125137125165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125138125162_)))
                                      (_tl125136125167_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125138125162_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125136125167_))
                                      (let ((_e125141125170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125136125167_))))
                                        (let ((_hd125140125173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125141125170_)))
                                              (_tl125139125175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125141125170_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125139125175_))
                                              (let ((_e125144125178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125139125175_))))
                                                (let ((_hd125143125181_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125144125178_)))
                                                      (_tl125142125183_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125144125178_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125142125183_))
                                                      ((lambda (_L125186_
                                                                _L125187_
                                                                _L125188_)
                                                         (let ((__tmp128843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125188_)))
                       (__tmp128842
                        (let () (declare (not safe)) (gx#stx-e _L125187_)))
                       (__tmp128841
                        (let () (declare (not safe)) (gx#stx-e _L125186_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128843
                    __tmp128842
                    __tmp128841)))
               _hd125143125181_
               _hd125140125173_
               _hd125137125165_)
              (let ()
                (declare (not safe))
                (_g125128125149_ _g125129125152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125128125149_
                                                 _g125129125152_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125128125149_ _g125129125152_)))))
                              (let ()
                                (declare (not safe))
                                (_g125128125149_ _g125129125152_)))))
                      (let ()
                        (declare (not safe))
                        (_g125128125149_ _g125129125152_))))))
          (declare (not safe))
          (_g125127125206_ _ann125126_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125041_ _ann125042_)
        (let* ((_g125044125065_
                (lambda (_g125045125062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125045125062_))))
               (_g125043125122_
                (lambda (_g125045125068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125045125068_))
                      (let ((_e125051125070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125045125068_))))
                        (let ((_hd125050125073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125051125070_)))
                              (_tl125049125075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125051125070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125049125075_))
                              (let ((_e125054125078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125049125075_))))
                                (let ((_hd125053125081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125054125078_)))
                                      (_tl125052125083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125054125078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125052125083_))
                                      (let ((_e125057125086_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125052125083_))))
                                        (let ((_hd125056125089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125057125086_)))
                                              (_tl125055125091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125057125086_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125055125091_))
                                              (let ((_e125060125094_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125055125091_))))
                                                (let ((_hd125059125097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125060125094_)))
                                                      (_tl125058125099_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125060125094_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125058125099_))
                                                      ((lambda (_L125102_
                                                                _L125103_
                                                                _L125104_)
                                                         (let ((__tmp128846
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125104_)))
                       (__tmp128845
                        (let () (declare (not safe)) (gx#stx-e _L125103_)))
                       (__tmp128844
                        (let () (declare (not safe)) (gx#stx-e _L125102_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128846
                    __tmp128845
                    __tmp128844)))
               _hd125059125097_
               _hd125056125089_
               _hd125053125081_)
              (let ()
                (declare (not safe))
                (_g125044125065_ _g125045125068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125044125065_
                                                 _g125045125068_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125044125065_ _g125045125068_)))))
                              (let ()
                                (declare (not safe))
                                (_g125044125065_ _g125045125068_)))))
                      (let ()
                        (declare (not safe))
                        (_g125044125065_ _g125045125068_))))))
          (declare (not safe))
          (_g125043125122_ _ann125042_))))
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
      (lambda (_stx124161_)
        (let* ((___stx127127127128_ _stx124161_)
               (_g124167124363_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127127127128_)))))
          (let ((___kont127129127130_
                 (lambda (_L125029_)
                   (let ((__obj128797
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128797
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125029_))
                      '#f)
                     __obj128797)))
                (___kont127131127132_
                 (lambda (_L124956_
                          _L124957_
                          _L124958_
                          _L124959_
                          _L124960_
                          _L124961_)
                   (let* ((_tab125011_
                           (let () (declare (not safe)) (gx#stx-e _L124958_)))
                          (_keys125013_
                           (if _tab125011_
                               (let ((__tmp128847 (vector->list _tab125011_)))
                                 (declare (not safe))
                                 (filter values __tmp128847))
                               '#f)))
                     (let ((__tmp128848
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124957_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125013_
                        __tmp128848)))))
                (___kont127133127134_
                 (lambda (_L124689_
                          _L124690_
                          _L124691_
                          _L124692_
                          _L124693_
                          _L124694_
                          _L124695_
                          _L124696_
                          _L124697_
                          _L124698_)
                   (let ((__tmp128850
                          (map gx#stx-e
                               (let ((__tmp128851
                                      (lambda (_g124791124794_ _g124792124796_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124791124794_
                                                _g124792124796_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128851 '() _L124691_))))
                         (__tmp128849
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124695_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128850
                      __tmp128849))))
                (___kont127137127138_
                 (lambda (_L124399_)
                   (let ((__obj128798
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128798
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124399_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124399_)))
                     __obj128798)))
                (___kont127139127140_
                 (lambda (_L124376_)
                   (let ((__obj128799
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128799
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124376_))
                      '#f)
                     __obj128799))))
            (let* ((___match127446127447_
                    (lambda (_e124354124391_ _hd124353124394_ _tl124352124396_)
                      (let ((_L124399_ _tl124352124396_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124399_))
                            (___kont127137127138_ _L124399_)
                            (___kont127139127140_ _tl124352124396_)))))
                   (___match127440127441_
                    (lambda (_e124248124413_
                             _hd124247124416_
                             _tl124246124418_
                             _e124251124421_
                             _hd124250124424_
                             _tl124249124426_
                             _e124254124429_
                             _hd124253124432_
                             _tl124252124434_
                             _e124257124437_
                             _hd124256124440_
                             _tl124255124442_
                             _e124260124445_
                             _hd124259124448_
                             _tl124258124450_
                             _e124263124453_
                             _hd124262124456_
                             _tl124261124458_
                             _e124266124461_
                             _hd124265124464_
                             _tl124264124466_
                             _e124269124469_
                             _hd124268124472_
                             _tl124267124474_
                             _e124272124477_
                             _hd124271124480_
                             _tl124270124482_
                             _e124275124485_
                             _hd124274124488_
                             _tl124273124490_
                             _e124278124493_
                             _hd124277124496_
                             _tl124276124498_
                             _e124281124501_
                             _hd124280124504_
                             _tl124279124506_
                             _e124284124509_
                             _hd124283124512_
                             _tl124282124514_
                             _e124287124517_
                             _hd124286124520_
                             _tl124285124522_
                             ___splice127135127136_
                             _target124288124525_
                             _tl124290124527_
                             _e124305124530_
                             _hd124304124533_
                             _tl124303124535_
                             _e124308124538_
                             _hd124307124541_
                             _tl124306124543_
                             _e124311124546_
                             _hd124310124549_
                             _tl124309124551_)
                      (letrec ((_loop124291124554_
                                (lambda (_hd124289124557_
                                         _-absent-value124295124559_
                                         _key124296124561_
                                         _-xkwvar124297124563_
                                         _-hash-ref124298124565_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124289124557_))
                                      (let ((_e124292124568_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124289124557_))))
                                        (let ((_lp-tl124294124573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124292124568_)))
                                              (_lp-hd124293124571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124292124568_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124293124571_))
                                              (let ((_e124314124576_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124293124571_))))
                                                (let ((_tl124312124581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124314124576_)))
                                                      (_hd124313124579_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124314124576_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124313124579_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124313124579_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124312124581_))
                      (let ((_e124317124584_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124312124581_))))
                        (let ((_tl124315124589_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124317124584_)))
                              (_hd124316124587_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124317124584_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124316124587_))
                              (let ((_e124320124592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124316124587_))))
                                (let ((_tl124318124597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124320124592_)))
                                      (_hd124319124595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124320124592_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124319124595_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124319124595_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124318124597_))
                                              (let ((_e124323124600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124318124597_))))
                                                (let ((_tl124321124605_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124323124600_)))
                                                      (_hd124322124603_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124323124600_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124321124605_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124315124589_))
                                                          (let ((_e124326124608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124315124589_))))
                    (let ((_tl124324124613_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124326124608_)))
                          (_hd124325124611_
                           (let ()
                             (declare (not safe))
                             (##car _e124326124608_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124325124611_))
                          (let ((_e124329124616_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124325124611_))))
                            (let ((_tl124327124621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124329124616_)))
                                  (_hd124328124619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124329124616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124328124619_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124328124619_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124327124621_))
                                          (let ((_e124332124624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124327124621_))))
                                            (let ((_tl124330124629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124332124624_)))
                                                  (_hd124331124627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124332124624_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124330124629_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124324124613_))
                                                      (let ((_e124335124632_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124324124613_))))
                (let ((_tl124333124637_
                       (let () (declare (not safe)) (##cdr _e124335124632_)))
                      (_hd124334124635_
                       (let () (declare (not safe)) (##car _e124335124632_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124334124635_))
                      (let ((_e124338124640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124334124635_))))
                        (let ((_tl124336124645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124338124640_)))
                              (_hd124337124643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124338124640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124337124643_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124337124643_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124336124645_))
                                      (let ((_e124341124648_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124336124645_))))
                                        (let ((_tl124339124653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124341124648_)))
                                              (_hd124340124651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124341124648_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124339124653_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124333124637_))
                                                  (let ((_e124344124656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124333124637_))))
                                                    (let ((_tl124342124661_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124344124656_)))
                                                          (_hd124343124659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124344124656_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124343124659_))
                                                          (let ((_e124347124664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124343124659_))))
                    (let ((_tl124345124669_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124347124664_)))
                          (_hd124346124667_
                           (let ()
                             (declare (not safe))
                             (##car _e124347124664_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124346124667_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124346124667_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124345124669_))
                                  (let ((_e124350124672_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124345124669_))))
                                    (let ((_tl124348124677_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124350124672_)))
                                          (_hd124349124675_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124350124672_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124348124677_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124342124661_))
                                              (let ((__tmp128866
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124349124675_
                                                             _-absent-value124295124559_)))
                                                    (__tmp128865
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124340124651_
                                                             _key124296124561_)))
                                                    (__tmp128864
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124331124627_
                                                             _-xkwvar124297124563_)))
                                                    (__tmp128863
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124322124603_
                                                             _-hash-ref124298124565_))))
                                                (declare (not safe))
                                                (_loop124291124554_
                                                 _lp-tl124294124573_
                                                 __tmp128866
                                                 __tmp128865
                                                 __tmp128864
                                                 __tmp128863))
                                              (___match127446127447_
                                               _e124248124413_
                                               _hd124247124416_
                                               _tl124246124418_))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))
                              (___match127446127447_
                               _e124248124413_
                               _hd124247124416_
                               _tl124246124418_))
                          (___match127446127447_
                           _e124248124413_
                           _hd124247124416_
                           _tl124246124418_))))
                  (___match127446127447_
                   _e124248124413_
                   _hd124247124416_
                   _tl124246124418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))
                                              (___match127446127447_
                                               _e124248124413_
                                               _hd124247124416_
                                               _tl124246124418_))))
                                      (___match127446127447_
                                       _e124248124413_
                                       _hd124247124416_
                                       _tl124246124418_))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))
                              (___match127446127447_
                               _e124248124413_
                               _hd124247124416_
                               _tl124246124418_))))
                      (___match127446127447_
                       _e124248124413_
                       _hd124247124416_
                       _tl124246124418_))))
              (___match127446127447_
               _e124248124413_
               _hd124247124416_
               _tl124246124418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))
                                      (___match127446127447_
                                       _e124248124413_
                                       _hd124247124416_
                                       _tl124246124418_))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))))
                          (___match127446127447_
                           _e124248124413_
                           _hd124247124416_
                           _tl124246124418_))))
                  (___match127446127447_
                   _e124248124413_
                   _hd124247124416_
                   _tl124246124418_))
              (___match127446127447_
               _e124248124413_
               _hd124247124416_
               _tl124246124418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127446127447_
                                               _e124248124413_
                                               _hd124247124416_
                                               _tl124246124418_))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))
                                      (___match127446127447_
                                       _e124248124413_
                                       _hd124247124416_
                                       _tl124246124418_))))
                              (___match127446127447_
                               _e124248124413_
                               _hd124247124416_
                               _tl124246124418_))))
                      (___match127446127447_
                       _e124248124413_
                       _hd124247124416_
                       _tl124246124418_))
                  (___match127446127447_
                   _e124248124413_
                   _hd124247124416_
                   _tl124246124418_))
              (___match127446127447_
               _e124248124413_
               _hd124247124416_
               _tl124246124418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127446127447_
                                               _e124248124413_
                                               _hd124247124416_
                                               _tl124246124418_))))
                                      (let ((_-hash-ref124302124686_
                                             (reverse _-hash-ref124298124565_))
                                            (_-xkwvar124301124684_
                                             (reverse _-xkwvar124297124563_))
                                            (_key124300124682_
                                             (reverse _key124296124561_))
                                            (_-absent-value124299124680_
                                             (reverse _-absent-value124295124559_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124255124442_))
                                            (let ((_L124689_ _hd124310124549_)
                                                  (_L124690_
                                                   _-absent-value124299124680_)
                                                  (_L124691_ _key124300124682_)
                                                  (_L124692_
                                                   _-xkwvar124301124684_)
                                                  (_L124693_
                                                   _-hash-ref124302124686_)
                                                  (_L124694_ _hd124286124520_)
                                                  (_L124695_ _hd124277124496_)
                                                  (_L124696_ _hd124268124472_)
                                                  (_L124697_ _tl124252124434_)
                                                  (_L124698_ _hd124253124432_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124698_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124697_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124696_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124698_
                                                          _L124694_))
                                                       (let ((__tmp128861
                                                              (let ((__tmp128862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124751124754_ _g124752124756_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124751124754_ _g124752124756_)))))
                        (declare (not safe))
                        (foldr1 __tmp128862 '() _L124691_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128861))
               (let ((__tmp128860
                      (lambda (_g124758124760_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124758124760_
                           'hash-ref))))
                     (__tmp128858
                      (let ((__tmp128859
                             (lambda (_g124762124765_ _g124763124767_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124762124765_ _g124763124767_)))))
                        (declare (not safe))
                        (foldr1 __tmp128859 '() _L124693_))))
                 (declare (not safe))
                 (andmap1 __tmp128860 __tmp128858))
               (let ((__tmp128857
                      (lambda (_g124769124771_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124769124771_
                           'absent-value))))
                     (__tmp128855
                      (let ((__tmp128856
                             (lambda (_g124773124776_ _g124774124778_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124773124776_ _g124774124778_)))))
                        (declare (not safe))
                        (foldr1 __tmp128856 '() _L124690_))))
                 (declare (not safe))
                 (andmap1 __tmp128857 __tmp128855))
               (let ((__tmp128854
                      (lambda (_g124780124782_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124780124782_ _L124698_))))
                     (__tmp128852
                      (let ((__tmp128853
                             (lambda (_g124784124787_ _g124785124789_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124784124787_ _g124785124789_)))))
                        (declare (not safe))
                        (foldr1 __tmp128853 '() _L124692_))))
                 (declare (not safe))
                 (andmap1 __tmp128854 __tmp128852)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127133127134_
                                                   _L124689_
                                                   _L124690_
                                                   _L124691_
                                                   _L124692_
                                                   _L124693_
                                                   _L124694_
                                                   _L124695_
                                                   _L124696_
                                                   _L124697_
                                                   _L124698_)
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_)))
                                            (___match127446127447_
                                             _e124248124413_
                                             _hd124247124416_
                                             _tl124246124418_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124291124554_
                           _target124288124525_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127312127313_
                    (lambda (_e124248124413_
                             _hd124247124416_
                             _tl124246124418_
                             _e124251124421_
                             _hd124250124424_
                             _tl124249124426_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124250124424_))
                          (let ((_e124254124429_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124250124424_))))
                            (let ((_tl124252124434_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124254124429_)))
                                  (_hd124253124432_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124254124429_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124249124426_))
                                  (let ((_e124257124437_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124249124426_))))
                                    (let ((_tl124255124442_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124257124437_)))
                                          (_hd124256124440_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124257124437_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124256124440_))
                                          (let ((_e124260124445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124256124440_))))
                                            (let ((_tl124258124450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124260124445_)))
                                                  (_hd124259124448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124260124445_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124259124448_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124259124448_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124258124450_))
                                                          (let ((_e124263124453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124258124450_))))
                    (let ((_tl124261124458_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124263124453_)))
                          (_hd124262124456_
                           (let ()
                             (declare (not safe))
                             (##car _e124263124453_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124262124456_))
                          (let ((_e124266124461_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124262124456_))))
                            (let ((_tl124264124466_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124266124461_)))
                                  (_hd124265124464_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124266124461_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124265124464_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124265124464_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124264124466_))
                                          (let ((_e124269124469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124264124466_))))
                                            (let ((_tl124267124474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124269124469_)))
                                                  (_hd124268124472_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124269124469_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124267124474_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124261124458_))
                                                      (let ((_e124272124477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124261124458_))))
                (let ((_tl124270124482_
                       (let () (declare (not safe)) (##cdr _e124272124477_)))
                      (_hd124271124480_
                       (let () (declare (not safe)) (##car _e124272124477_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124271124480_))
                      (let ((_e124275124485_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124271124480_))))
                        (let ((_tl124273124490_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124275124485_)))
                              (_hd124274124488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124275124485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124274124488_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124274124488_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124273124490_))
                                      (let ((_e124278124493_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124273124490_))))
                                        (let ((_tl124276124498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124278124493_)))
                                              (_hd124277124496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124278124493_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124276124498_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124270124482_))
                                                  (let ((_e124281124501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124270124482_))))
                                                    (let ((_tl124279124506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124281124501_)))
                                                          (_hd124280124504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124281124501_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124280124504_))
                                                          (let ((_e124284124509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124280124504_))))
                    (let ((_tl124282124514_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124284124509_)))
                          (_hd124283124512_
                           (let ()
                             (declare (not safe))
                             (##car _e124284124509_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124283124512_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124283124512_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124282124514_))
                                  (let ((_e124287124517_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124282124514_))))
                                    (let ((_tl124285124522_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124287124517_)))
                                          (_hd124286124520_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124287124517_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124285124522_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124279124506_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124279124506_))
                                                        '1)
                                                  (let ((___splice127135127136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124279124506_
                                                            '1))))
                                                    (let ((_tl124290124527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127135127136_
                                                              '1)))
                                                          (_target124288124525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127135127136_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124290124527_))
                                                          (let ((_e124305124530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124290124527_))))
                    (let ((_tl124303124535_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124305124530_)))
                          (_hd124304124533_
                           (let ()
                             (declare (not safe))
                             (##car _e124305124530_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124304124533_))
                          (let ((_e124308124538_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124304124533_))))
                            (let ((_tl124306124543_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124308124538_)))
                                  (_hd124307124541_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124308124538_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124307124541_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124307124541_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124306124543_))
                                          (let ((_e124311124546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124306124543_))))
                                            (let ((_tl124309124551_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124311124546_)))
                                                  (_hd124310124549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124311124546_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124309124551_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124303124535_))
                                                      (___match127440127441_
                                                       _e124248124413_
                                                       _hd124247124416_
                                                       _tl124246124418_
                                                       _e124251124421_
                                                       _hd124250124424_
                                                       _tl124249124426_
                                                       _e124254124429_
                                                       _hd124253124432_
                                                       _tl124252124434_
                                                       _e124257124437_
                                                       _hd124256124440_
                                                       _tl124255124442_
                                                       _e124260124445_
                                                       _hd124259124448_
                                                       _tl124258124450_
                                                       _e124263124453_
                                                       _hd124262124456_
                                                       _tl124261124458_
                                                       _e124266124461_
                                                       _hd124265124464_
                                                       _tl124264124466_
                                                       _e124269124469_
                                                       _hd124268124472_
                                                       _tl124267124474_
                                                       _e124272124477_
                                                       _hd124271124480_
                                                       _tl124270124482_
                                                       _e124275124485_
                                                       _hd124274124488_
                                                       _tl124273124490_
                                                       _e124278124493_
                                                       _hd124277124496_
                                                       _tl124276124498_
                                                       _e124281124501_
                                                       _hd124280124504_
                                                       _tl124279124506_
                                                       _e124284124509_
                                                       _hd124283124512_
                                                       _tl124282124514_
                                                       _e124287124517_
                                                       _hd124286124520_
                                                       _tl124285124522_
                                                       ___splice127135127136_
                                                       _target124288124525_
                                                       _tl124290124527_
                                                       _e124305124530_
                                                       _hd124304124533_
                                                       _tl124303124535_
                                                       _e124308124538_
                                                       _hd124307124541_
                                                       _tl124306124543_
                                                       _e124311124546_
                                                       _hd124310124549_
                                                       _tl124309124551_)
                                                      (___match127446127447_
                                                       _e124248124413_
                                                       _hd124247124416_
                                                       _tl124246124418_))
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))
                                      (___match127446127447_
                                       _e124248124413_
                                       _hd124247124416_
                                       _tl124246124418_))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))))
                          (___match127446127447_
                           _e124248124413_
                           _hd124247124416_
                           _tl124246124418_))))
                  (___match127446127447_
                   _e124248124413_
                   _hd124247124416_
                   _tl124246124418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))
                                              (___match127446127447_
                                               _e124248124413_
                                               _hd124247124416_
                                               _tl124246124418_))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))
                              (___match127446127447_
                               _e124248124413_
                               _hd124247124416_
                               _tl124246124418_))
                          (___match127446127447_
                           _e124248124413_
                           _hd124247124416_
                           _tl124246124418_))))
                  (___match127446127447_
                   _e124248124413_
                   _hd124247124416_
                   _tl124246124418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))
                                              (___match127446127447_
                                               _e124248124413_
                                               _hd124247124416_
                                               _tl124246124418_))))
                                      (___match127446127447_
                                       _e124248124413_
                                       _hd124247124416_
                                       _tl124246124418_))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))
                              (___match127446127447_
                               _e124248124413_
                               _hd124247124416_
                               _tl124246124418_))))
                      (___match127446127447_
                       _e124248124413_
                       _hd124247124416_
                       _tl124246124418_))))
              (___match127446127447_
               _e124248124413_
               _hd124247124416_
               _tl124246124418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))
                                      (___match127446127447_
                                       _e124248124413_
                                       _hd124247124416_
                                       _tl124246124418_))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))))
                          (___match127446127447_
                           _e124248124413_
                           _hd124247124416_
                           _tl124246124418_))))
                  (___match127446127447_
                   _e124248124413_
                   _hd124247124416_
                   _tl124246124418_))
              (___match127446127447_
               _e124248124413_
               _hd124247124416_
               _tl124246124418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127446127447_
                                                   _e124248124413_
                                                   _hd124247124416_
                                                   _tl124246124418_))))
                                          (___match127446127447_
                                           _e124248124413_
                                           _hd124247124416_
                                           _tl124246124418_))))
                                  (___match127446127447_
                                   _e124248124413_
                                   _hd124247124416_
                                   _tl124246124418_))))
                          (___match127446127447_
                           _e124248124413_
                           _hd124247124416_
                           _tl124246124418_))))
                   (___match127300127301_
                    (lambda (_e124181124804_
                             _hd124180124807_
                             _tl124179124809_
                             _e124184124812_
                             _hd124183124815_
                             _tl124182124817_
                             _e124187124820_
                             _hd124186124823_
                             _tl124185124825_
                             _e124190124828_
                             _hd124189124831_
                             _tl124188124833_
                             _e124193124836_
                             _hd124192124839_
                             _tl124191124841_
                             _e124196124844_
                             _hd124195124847_
                             _tl124194124849_
                             _e124199124852_
                             _hd124198124855_
                             _tl124197124857_
                             _e124202124860_
                             _hd124201124863_
                             _tl124200124865_
                             _e124205124868_
                             _hd124204124871_
                             _tl124203124873_
                             _e124208124876_
                             _hd124207124879_
                             _tl124206124881_
                             _e124211124884_
                             _hd124210124887_
                             _tl124209124889_
                             _e124214124892_
                             _hd124213124895_
                             _tl124212124897_
                             _e124217124900_
                             _hd124216124903_
                             _tl124215124905_
                             _e124220124908_
                             _hd124219124911_
                             _tl124218124913_
                             _e124223124916_
                             _hd124222124919_
                             _tl124221124921_
                             _e124226124924_
                             _hd124225124927_
                             _tl124224124929_
                             _e124229124932_
                             _hd124228124935_
                             _tl124227124937_
                             _e124232124940_
                             _hd124231124943_
                             _tl124230124945_
                             _e124235124948_
                             _hd124234124951_
                             _tl124233124953_)
                      (let ((_L124956_ _hd124234124951_)
                            (_L124957_ _hd124225124927_)
                            (_L124958_ _hd124216124903_)
                            (_L124959_ _hd124207124879_)
                            (_L124960_ _hd124198124855_)
                            (_L124961_ _hd124183124815_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124961_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124960_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124959_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124961_ _L124956_)))
                            (___kont127131127132_
                             _L124956_
                             _L124957_
                             _L124958_
                             _L124959_
                             _L124960_
                             _L124961_)
                            (___match127312127313_
                             _e124181124804_
                             _hd124180124807_
                             _tl124179124809_
                             _e124184124812_
                             _hd124183124815_
                             _tl124182124817_)))))
                   (___match127154127155_
                    (lambda (_e124181124804_ _hd124180124807_ _tl124179124809_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124179124809_))
                          (let ((_e124184124812_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124179124809_))))
                            (let ((_tl124182124817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124184124812_)))
                                  (_hd124183124815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124184124812_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124182124817_))
                                  (let ((_e124187124820_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124182124817_))))
                                    (let ((_tl124185124825_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124187124820_)))
                                          (_hd124186124823_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124187124820_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124186124823_))
                                          (let ((_e124190124828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124186124823_))))
                                            (let ((_tl124188124833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124190124828_)))
                                                  (_hd124189124831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124190124828_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124189124831_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124189124831_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124188124833_))
                                                          (let ((_e124193124836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124188124833_))))
                    (let ((_tl124191124841_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124193124836_)))
                          (_hd124192124839_
                           (let ()
                             (declare (not safe))
                             (##car _e124193124836_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124192124839_))
                          (let ((_e124196124844_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124192124839_))))
                            (let ((_tl124194124849_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124196124844_)))
                                  (_hd124195124847_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124196124844_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124195124847_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124195124847_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124194124849_))
                                          (let ((_e124199124852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124194124849_))))
                                            (let ((_tl124197124857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124199124852_)))
                                                  (_hd124198124855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124199124852_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124197124857_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124191124841_))
                                                      (let ((_e124202124860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124191124841_))))
                (let ((_tl124200124865_
                       (let () (declare (not safe)) (##cdr _e124202124860_)))
                      (_hd124201124863_
                       (let () (declare (not safe)) (##car _e124202124860_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124201124863_))
                      (let ((_e124205124868_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124201124863_))))
                        (let ((_tl124203124873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124205124868_)))
                              (_hd124204124871_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124205124868_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124204124871_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124204124871_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124203124873_))
                                      (let ((_e124208124876_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124203124873_))))
                                        (let ((_tl124206124881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124208124876_)))
                                              (_hd124207124879_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124208124876_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124206124881_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124200124865_))
                                                  (let ((_e124211124884_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124200124865_))))
                                                    (let ((_tl124209124889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124211124884_)))
                                                          (_hd124210124887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124211124884_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124210124887_))
                                                          (let ((_e124214124892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124210124887_))))
                    (let ((_tl124212124897_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124214124892_)))
                          (_hd124213124895_
                           (let ()
                             (declare (not safe))
                             (##car _e124214124892_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124213124895_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124213124895_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124212124897_))
                                  (let ((_e124217124900_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124212124897_))))
                                    (let ((_tl124215124905_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124217124900_)))
                                          (_hd124216124903_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124217124900_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124215124905_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124209124889_))
                                              (let ((_e124220124908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124209124889_))))
                                                (let ((_tl124218124913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124220124908_)))
                                                      (_hd124219124911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124220124908_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124219124911_))
                                                      (let ((_e124223124916_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124219124911_))))
                (let ((_tl124221124921_
                       (let () (declare (not safe)) (##cdr _e124223124916_)))
                      (_hd124222124919_
                       (let () (declare (not safe)) (##car _e124223124916_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124222124919_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124222124919_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124221124921_))
                              (let ((_e124226124924_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124221124921_))))
                                (let ((_tl124224124929_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124226124924_)))
                                      (_hd124225124927_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124226124924_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124224124929_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124218124913_))
                                          (let ((_e124229124932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124218124913_))))
                                            (let ((_tl124227124937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124229124932_)))
                                                  (_hd124228124935_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124229124932_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124228124935_))
                                                  (let ((_e124232124940_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124228124935_))))
                                                    (let ((_tl124230124945_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124232124940_)))
                                                          (_hd124231124943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124232124940_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124231124943_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124231124943_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124230124945_))
                          (let ((_e124235124948_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124230124945_))))
                            (let ((_tl124233124953_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124235124948_)))
                                  (_hd124234124951_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124235124948_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124233124953_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124227124937_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124185124825_))
                                          (___match127300127301_
                                           _e124181124804_
                                           _hd124180124807_
                                           _tl124179124809_
                                           _e124184124812_
                                           _hd124183124815_
                                           _tl124182124817_
                                           _e124187124820_
                                           _hd124186124823_
                                           _tl124185124825_
                                           _e124190124828_
                                           _hd124189124831_
                                           _tl124188124833_
                                           _e124193124836_
                                           _hd124192124839_
                                           _tl124191124841_
                                           _e124196124844_
                                           _hd124195124847_
                                           _tl124194124849_
                                           _e124199124852_
                                           _hd124198124855_
                                           _tl124197124857_
                                           _e124202124860_
                                           _hd124201124863_
                                           _tl124200124865_
                                           _e124205124868_
                                           _hd124204124871_
                                           _tl124203124873_
                                           _e124208124876_
                                           _hd124207124879_
                                           _tl124206124881_
                                           _e124211124884_
                                           _hd124210124887_
                                           _tl124209124889_
                                           _e124214124892_
                                           _hd124213124895_
                                           _tl124212124897_
                                           _e124217124900_
                                           _hd124216124903_
                                           _tl124215124905_
                                           _e124220124908_
                                           _hd124219124911_
                                           _tl124218124913_
                                           _e124223124916_
                                           _hd124222124919_
                                           _tl124221124921_
                                           _e124226124924_
                                           _hd124225124927_
                                           _tl124224124929_
                                           _e124229124932_
                                           _hd124228124935_
                                           _tl124227124937_
                                           _e124232124940_
                                           _hd124231124943_
                                           _tl124230124945_
                                           _e124235124948_
                                           _hd124234124951_
                                           _tl124233124953_)
                                          (___match127312127313_
                                           _e124181124804_
                                           _hd124180124807_
                                           _tl124179124809_
                                           _e124184124812_
                                           _hd124183124815_
                                           _tl124182124817_))
                                      (___match127312127313_
                                       _e124181124804_
                                       _hd124180124807_
                                       _tl124179124809_
                                       _e124184124812_
                                       _hd124183124815_
                                       _tl124182124817_))
                                  (___match127312127313_
                                   _e124181124804_
                                   _hd124180124807_
                                   _tl124179124809_
                                   _e124184124812_
                                   _hd124183124815_
                                   _tl124182124817_))))
                          (___match127312127313_
                           _e124181124804_
                           _hd124180124807_
                           _tl124179124809_
                           _e124184124812_
                           _hd124183124815_
                           _tl124182124817_))
                      (___match127312127313_
                       _e124181124804_
                       _hd124180124807_
                       _tl124179124809_
                       _e124184124812_
                       _hd124183124815_
                       _tl124182124817_))
                  (___match127312127313_
                   _e124181124804_
                   _hd124180124807_
                   _tl124179124809_
                   _e124184124812_
                   _hd124183124815_
                   _tl124182124817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127312127313_
                                                   _e124181124804_
                                                   _hd124180124807_
                                                   _tl124179124809_
                                                   _e124184124812_
                                                   _hd124183124815_
                                                   _tl124182124817_))))
                                          (___match127312127313_
                                           _e124181124804_
                                           _hd124180124807_
                                           _tl124179124809_
                                           _e124184124812_
                                           _hd124183124815_
                                           _tl124182124817_))
                                      (___match127312127313_
                                       _e124181124804_
                                       _hd124180124807_
                                       _tl124179124809_
                                       _e124184124812_
                                       _hd124183124815_
                                       _tl124182124817_))))
                              (___match127312127313_
                               _e124181124804_
                               _hd124180124807_
                               _tl124179124809_
                               _e124184124812_
                               _hd124183124815_
                               _tl124182124817_))
                          (___match127312127313_
                           _e124181124804_
                           _hd124180124807_
                           _tl124179124809_
                           _e124184124812_
                           _hd124183124815_
                           _tl124182124817_))
                      (___match127312127313_
                       _e124181124804_
                       _hd124180124807_
                       _tl124179124809_
                       _e124184124812_
                       _hd124183124815_
                       _tl124182124817_))))
              (___match127312127313_
               _e124181124804_
               _hd124180124807_
               _tl124179124809_
               _e124184124812_
               _hd124183124815_
               _tl124182124817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127312127313_
                                               _e124181124804_
                                               _hd124180124807_
                                               _tl124179124809_
                                               _e124184124812_
                                               _hd124183124815_
                                               _tl124182124817_))
                                          (___match127312127313_
                                           _e124181124804_
                                           _hd124180124807_
                                           _tl124179124809_
                                           _e124184124812_
                                           _hd124183124815_
                                           _tl124182124817_))))
                                  (___match127312127313_
                                   _e124181124804_
                                   _hd124180124807_
                                   _tl124179124809_
                                   _e124184124812_
                                   _hd124183124815_
                                   _tl124182124817_))
                              (___match127312127313_
                               _e124181124804_
                               _hd124180124807_
                               _tl124179124809_
                               _e124184124812_
                               _hd124183124815_
                               _tl124182124817_))
                          (___match127312127313_
                           _e124181124804_
                           _hd124180124807_
                           _tl124179124809_
                           _e124184124812_
                           _hd124183124815_
                           _tl124182124817_))))
                  (___match127312127313_
                   _e124181124804_
                   _hd124180124807_
                   _tl124179124809_
                   _e124184124812_
                   _hd124183124815_
                   _tl124182124817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127312127313_
                                                   _e124181124804_
                                                   _hd124180124807_
                                                   _tl124179124809_
                                                   _e124184124812_
                                                   _hd124183124815_
                                                   _tl124182124817_))
                                              (___match127312127313_
                                               _e124181124804_
                                               _hd124180124807_
                                               _tl124179124809_
                                               _e124184124812_
                                               _hd124183124815_
                                               _tl124182124817_))))
                                      (___match127312127313_
                                       _e124181124804_
                                       _hd124180124807_
                                       _tl124179124809_
                                       _e124184124812_
                                       _hd124183124815_
                                       _tl124182124817_))
                                  (___match127312127313_
                                   _e124181124804_
                                   _hd124180124807_
                                   _tl124179124809_
                                   _e124184124812_
                                   _hd124183124815_
                                   _tl124182124817_))
                              (___match127312127313_
                               _e124181124804_
                               _hd124180124807_
                               _tl124179124809_
                               _e124184124812_
                               _hd124183124815_
                               _tl124182124817_))))
                      (___match127312127313_
                       _e124181124804_
                       _hd124180124807_
                       _tl124179124809_
                       _e124184124812_
                       _hd124183124815_
                       _tl124182124817_))))
              (___match127312127313_
               _e124181124804_
               _hd124180124807_
               _tl124179124809_
               _e124184124812_
               _hd124183124815_
               _tl124182124817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127312127313_
                                                   _e124181124804_
                                                   _hd124180124807_
                                                   _tl124179124809_
                                                   _e124184124812_
                                                   _hd124183124815_
                                                   _tl124182124817_))))
                                          (___match127312127313_
                                           _e124181124804_
                                           _hd124180124807_
                                           _tl124179124809_
                                           _e124184124812_
                                           _hd124183124815_
                                           _tl124182124817_))
                                      (___match127312127313_
                                       _e124181124804_
                                       _hd124180124807_
                                       _tl124179124809_
                                       _e124184124812_
                                       _hd124183124815_
                                       _tl124182124817_))
                                  (___match127312127313_
                                   _e124181124804_
                                   _hd124180124807_
                                   _tl124179124809_
                                   _e124184124812_
                                   _hd124183124815_
                                   _tl124182124817_))))
                          (___match127312127313_
                           _e124181124804_
                           _hd124180124807_
                           _tl124179124809_
                           _e124184124812_
                           _hd124183124815_
                           _tl124182124817_))))
                  (___match127312127313_
                   _e124181124804_
                   _hd124180124807_
                   _tl124179124809_
                   _e124184124812_
                   _hd124183124815_
                   _tl124182124817_))
              (___match127312127313_
               _e124181124804_
               _hd124180124807_
               _tl124179124809_
               _e124184124812_
               _hd124183124815_
               _tl124182124817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127312127313_
                                                   _e124181124804_
                                                   _hd124180124807_
                                                   _tl124179124809_
                                                   _e124184124812_
                                                   _hd124183124815_
                                                   _tl124182124817_))))
                                          (___match127312127313_
                                           _e124181124804_
                                           _hd124180124807_
                                           _tl124179124809_
                                           _e124184124812_
                                           _hd124183124815_
                                           _tl124182124817_))))
                                  (___match127312127313_
                                   _e124181124804_
                                   _hd124180124807_
                                   _tl124179124809_
                                   _e124184124812_
                                   _hd124183124815_
                                   _tl124182124817_))))
                          (___match127446127447_
                           _e124181124804_
                           _hd124180124807_
                           _tl124179124809_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127127127128_))
                  (let ((_e124172125021_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127127127128_))))
                    (let ((_tl124170125026_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124172125021_)))
                          (_hd124171125024_
                           (let ()
                             (declare (not safe))
                             (##car _e124172125021_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125029_ _tl124170125026_))
                            (___kont127129127130_ _L125029_))
                          (___match127154127155_
                           _e124172125021_
                           _hd124171125024_
                           _tl124170125026_))))
                  (let () (declare (not safe)) (_g124167124363_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx124116_)
        (letrec ((_clause-e124118_
                  (lambda (_form124159_)
                    (let ((__obj128800
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
                       __obj128800
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124159_))
                       (if (let ((__tmp128867
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128867))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124159_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124159_))
                               '#f)
                           '#f))
                      __obj128800))))
          (let* ((_g124120124130_
                  (lambda (_g124121124127_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124121124127_))))
                 (_g124119124156_
                  (lambda (_g124121124133_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124121124133_))
                        (let ((_e124125124135_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124121124133_))))
                          (let ((_hd124124124138_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124125124135_)))
                                (_tl124123124140_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124125124135_))))
                            ((lambda (_L124143_)
                               (let ((_clauses124154_
                                      (map _clause-e124118_ _L124143_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124154_)))
                             _tl124123124140_)))
                        (let ()
                          (declare (not safe))
                          (_g124120124130_ _g124121124133_))))))
            (declare (not safe))
            (_g124119124156_ _stx124116_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx124048_)
        (let* ((_g124050124067_
                (lambda (_g124051124064_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124051124064_))))
               (_g124049124113_
                (lambda (_g124051124070_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124051124070_))
                      (let ((_e124056124072_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124051124070_))))
                        (let ((_hd124055124075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124056124072_)))
                              (_tl124054124077_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124056124072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124054124077_))
                              (let ((_e124059124080_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124054124077_))))
                                (let ((_hd124058124083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124059124080_)))
                                      (_tl124057124085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124059124080_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124057124085_))
                                      (let ((_e124062124088_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124057124085_))))
                                        (let ((_hd124061124091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124062124088_)))
                                              (_tl124060124093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124062124088_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124060124093_))
                                              ((lambda (_L124096_ _L124097_)
                                                 (let ((__tmp128868
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L124096_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128868
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124061124091_
                                               _hd124058124083_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124050124067_
                                                 _g124051124070_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124050124067_ _g124051124070_)))))
                              (let ()
                                (declare (not safe))
                                (_g124050124067_ _g124051124070_)))))
                      (let ()
                        (declare (not safe))
                        (_g124050124067_ _g124051124070_))))))
          (declare (not safe))
          (_g124049124113_ _stx124048_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123953_)
        (let* ((___stx127455127456_ _stx123953_)
               (_g123956123976_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127455127456_)))))
          (let ((___kont127457127458_
                 (lambda (_L124020_ _L124021_)
                   (let ((_type-e124038124040_
                          (let ((__tmp128869
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124021_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128869))))
                     (if _type-e124038124040_
                         (let ((_type-e124043_ _type-e124038124040_))
                           (_type-e124043_ _stx123953_ _L124020_))
                         '#f))))
                (___kont127459127460_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127455127456_))
                (let ((_e123962123988_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127455127456_))))
                  (let ((_tl123960123993_
                         (let () (declare (not safe)) (##cdr _e123962123988_)))
                        (_hd123961123991_
                         (let ()
                           (declare (not safe))
                           (##car _e123962123988_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123960123993_))
                        (let ((_e123965123996_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123960123993_))))
                          (let ((_tl123963124001_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123965123996_)))
                                (_hd123964123999_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123965123996_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123964123999_))
                                (let ((_e123968124004_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123964123999_))))
                                  (let ((_tl123966124009_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123968124004_)))
                                        (_hd123967124007_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123968124004_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123967124007_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123967124007_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123966124009_))
                                                (let ((_e123971124012_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123966124009_))))
                                                  (let ((_tl123969124017_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123971124012_)))
                                                        (_hd123970124015_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123971124012_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123969124017_))
                                                        (___kont127457127458_
                                                         _tl123963124001_
                                                         _hd123970124015_)
                                                        (___kont127459127460_))))
                                                (___kont127459127460_))
                                            (___kont127459127460_))
                                        (___kont127459127460_))))
                                (___kont127459127460_))))
                        (___kont127459127460_))))
                (___kont127459127460_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123902_)
        (let* ((_g123904123917_
                (lambda (_g123905123914_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123905123914_))))
               (_g123903123950_
                (lambda (_g123905123920_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123905123920_))
                      (let ((_e123909123922_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123905123920_))))
                        (let ((_hd123908123925_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123909123922_)))
                              (_tl123907123927_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123909123922_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123907123927_))
                              (let ((_e123912123930_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123907123927_))))
                                (let ((_hd123911123933_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123912123930_)))
                                      (_tl123910123935_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123912123930_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123910123935_))
                                      ((lambda (_L123938_)
                                         (let ((__tmp128870
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123938_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128870)))
                                       _hd123911123933_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123904123917_ _g123905123920_)))))
                              (let ()
                                (declare (not safe))
                                (_g123904123917_ _g123905123920_)))))
                      (let ()
                        (declare (not safe))
                        (_g123904123917_ _g123905123920_))))))
          (declare (not safe))
          (_g123903123950_ _stx123902_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123136_)
        (let* ((___stx127493127494_ _form123136_)
               (_g123141123298_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127493127494_)))))
          (let ((___kont127495127496_
                 (lambda (_L123822_ _L123823_ _L123824_) '#t))
                (___kont127501127502_
                 (lambda (_L123610_
                          _L123611_
                          _L123612_
                          _L123613_
                          _L123614_
                          _L123615_)
                   '#t))
                (___kont127507127508_
                 (lambda (_L123406_ _L123407_ _L123408_ _L123409_) '#t))
                (___kont127509127510_ (lambda () '#f)))
            (let* ((___match127634127635_
                    (lambda (_e123260123310_
                             _hd123259123313_
                             _tl123258123315_
                             _e123263123318_
                             _hd123262123321_
                             _tl123261123323_
                             _e123266123326_
                             _hd123265123329_
                             _tl123264123331_
                             _e123269123334_
                             _hd123268123337_
                             _tl123267123339_
                             _e123272123342_
                             _hd123271123345_
                             _tl123270123347_
                             _e123275123350_
                             _hd123274123353_
                             _tl123273123355_
                             _e123278123358_
                             _hd123277123361_
                             _tl123276123363_
                             _e123281123366_
                             _hd123280123369_
                             _tl123279123371_
                             _e123284123374_
                             _hd123283123377_
                             _tl123282123379_
                             _e123287123382_
                             _hd123286123385_
                             _tl123285123387_
                             _e123290123390_
                             _hd123289123393_
                             _tl123288123395_
                             _e123293123398_
                             _hd123292123401_
                             _tl123291123403_)
                      (let ((_L123406_ _hd123292123401_)
                            (_L123407_ _hd123283123377_)
                            (_L123408_ _hd123274123353_)
                            (_L123409_ _hd123259123313_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123409_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123408_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123409_ _L123406_))
                                 (let ((__tmp128871
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123407_
                                           _L123409_))))
                                   (declare (not safe))
                                   (not __tmp128871)))
                            (___kont127507127508_
                             _L123406_
                             _L123407_
                             _L123408_
                             _L123409_)
                            (___kont127509127510_)))))
                   (___match127606127607_
                    (lambda (_e123260123310_
                             _hd123259123313_
                             _tl123258123315_
                             _e123263123318_
                             _hd123262123321_
                             _tl123261123323_
                             _e123266123326_
                             _hd123265123329_
                             _tl123264123331_
                             _e123269123334_
                             _hd123268123337_
                             _tl123267123339_
                             _e123272123342_
                             _hd123271123345_
                             _tl123270123347_
                             _e123275123350_
                             _hd123274123353_
                             _tl123273123355_
                             _e123278123358_
                             _hd123277123361_
                             _tl123276123363_
                             _e123281123366_
                             _hd123280123369_
                             _tl123279123371_
                             _e123284123374_
                             _hd123283123377_
                             _tl123282123379_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123276123363_))
                          (let ((_e123287123382_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123276123363_))))
                            (let ((_tl123285123387_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123287123382_)))
                                  (_hd123286123385_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123287123382_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123286123385_))
                                  (let ((_e123290123390_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123286123385_))))
                                    (let ((_tl123288123395_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123290123390_)))
                                          (_hd123289123393_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123290123390_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123289123393_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123289123393_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123288123395_))
                                                  (let ((_e123293123398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123288123395_))))
                                                    (let ((_tl123291123403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123293123398_)))
                                                          (_hd123292123401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123293123398_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123291123403_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123285123387_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123261123323_))
                          (___match127634127635_
                           _e123260123310_
                           _hd123259123313_
                           _tl123258123315_
                           _e123263123318_
                           _hd123262123321_
                           _tl123261123323_
                           _e123266123326_
                           _hd123265123329_
                           _tl123264123331_
                           _e123269123334_
                           _hd123268123337_
                           _tl123267123339_
                           _e123272123342_
                           _hd123271123345_
                           _tl123270123347_
                           _e123275123350_
                           _hd123274123353_
                           _tl123273123355_
                           _e123278123358_
                           _hd123277123361_
                           _tl123276123363_
                           _e123281123366_
                           _hd123280123369_
                           _tl123279123371_
                           _e123284123374_
                           _hd123283123377_
                           _tl123282123379_
                           _e123287123382_
                           _hd123286123385_
                           _tl123285123387_
                           _e123290123390_
                           _hd123289123393_
                           _tl123288123395_
                           _e123293123398_
                           _hd123292123401_
                           _tl123291123403_)
                          (___kont127509127510_))
                      (___kont127509127510_))
                  (___kont127509127510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127509127510_))
                                              (___kont127509127510_))
                                          (___kont127509127510_))))
                                  (___kont127509127510_))))
                          (___kont127509127510_))))
                   (___match127536127537_
                    (lambda (_e123196123450_
                             _hd123195123453_
                             _tl123194123455_
                             ___splice127503127504_
                             _target123197123458_
                             _tl123199123460_)
                      (letrec ((_loop123200123463_
                                (lambda (_hd123198123466_ _arg123204123468_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123198123466_))
                                      (let ((_e123201123471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123198123466_))))
                                        (let ((_lp-tl123203123476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123201123471_)))
                                              (_lp-hd123202123474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123201123471_))))
                                          (let ((__tmp128886
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123202123474_
                                                         _arg123204123468_))))
                                            (declare (not safe))
                                            (_loop123200123463_
                                             _lp-tl123203123476_
                                             __tmp128886))))
                                      (let ((_arg123205123479_
                                             (reverse _arg123204123468_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123194123455_))
                                            (let ((_e123208123482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123194123455_))))
                                              (let ((_tl123206123487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123208123482_)))
                                                    (_hd123207123485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123208123482_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123207123485_))
                                                    (let ((_e123211123490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123207123485_))))
                                                      (let ((_tl123209123495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123211123490_)))
                    (_hd123210123493_
                     (let () (declare (not safe)) (##car _e123211123490_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123210123493_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123210123493_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123209123495_))
                            (let ((_e123214123498_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123209123495_))))
                              (let ((_tl123212123503_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123214123498_)))
                                    (_hd123213123501_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123214123498_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123213123501_))
                                    (let ((_e123217123506_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123213123501_))))
                                      (let ((_tl123215123511_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123217123506_)))
                                            (_hd123216123509_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123217123506_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123216123509_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123216123509_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123215123511_))
                                                    (let ((_e123220123514_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123215123511_))))
                                                      (let ((_tl123218123519_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123220123514_)))
                    (_hd123219123517_
                     (let () (declare (not safe)) (##car _e123220123514_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123218123519_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123212123503_))
                        (let ((_e123223123522_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123212123503_))))
                          (let ((_tl123221123527_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123223123522_)))
                                (_hd123222123525_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123223123522_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123222123525_))
                                (let ((_e123226123530_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123222123525_))))
                                  (let ((_tl123224123535_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123226123530_)))
                                        (_hd123225123533_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123226123530_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123225123533_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123225123533_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123224123535_))
                                                (let ((_e123229123538_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123224123535_))))
                                                  (let ((_tl123227123543_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123229123538_)))
                                                        (_hd123228123541_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123229123538_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123227123543_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123221123527_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123221123527_))
                              '1)
                        (let ((___splice127505127506_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123221123527_
                                  '1))))
                          (let ((_tl123232123548_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127505127506_ '1)))
                                (_target123230123546_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127505127506_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123232123548_))
                                (let ((_e123241123551_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123232123548_))))
                                  (let ((_tl123239123556_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123241123551_)))
                                        (_hd123240123554_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123241123551_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123240123554_))
                                        (let ((_e123244123559_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123240123554_))))
                                          (let ((_tl123242123564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123244123559_)))
                                                (_hd123243123562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123244123559_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123243123562_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123243123562_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123242123564_))
                                                        (let ((_e123247123567_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123242123564_))))
                  (let ((_tl123245123572_
                         (let () (declare (not safe)) (##cdr _e123247123567_)))
                        (_hd123246123570_
                         (let ()
                           (declare (not safe))
                           (##car _e123247123567_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123245123572_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123239123556_))
                            (letrec ((_loop123233123575_
                                      (lambda (_hd123231123578_
                                               _xarg123237123580_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123231123578_))
                                            (let ((_e123234123583_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123231123578_))))
                                              (let ((_lp-tl123236123588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123234123583_)))
                                                    (_lp-hd123235123586_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123234123583_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123235123586_))
                                                    (let ((_e123250123591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123235123586_))))
                                                      (let ((_tl123248123596_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123250123591_)))
                    (_hd123249123594_
                     (let () (declare (not safe)) (##car _e123250123591_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123249123594_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123249123594_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123248123596_))
                            (let ((_e123253123599_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123248123596_))))
                              (let ((_tl123251123604_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123253123599_)))
                                    (_hd123252123602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123253123599_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123251123604_))
                                    (let ((__tmp128885
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123252123602_
                                                   _xarg123237123580_))))
                                      (declare (not safe))
                                      (_loop123233123575_
                                       _lp-tl123236123588_
                                       __tmp128885))
                                    (___match127606127607_
                                     _e123196123450_
                                     _hd123195123453_
                                     _tl123194123455_
                                     _e123208123482_
                                     _hd123207123485_
                                     _tl123206123487_
                                     _e123211123490_
                                     _hd123210123493_
                                     _tl123209123495_
                                     _e123214123498_
                                     _hd123213123501_
                                     _tl123212123503_
                                     _e123217123506_
                                     _hd123216123509_
                                     _tl123215123511_
                                     _e123220123514_
                                     _hd123219123517_
                                     _tl123218123519_
                                     _e123223123522_
                                     _hd123222123525_
                                     _tl123221123527_
                                     _e123226123530_
                                     _hd123225123533_
                                     _tl123224123535_
                                     _e123229123538_
                                     _hd123228123541_
                                     _tl123227123543_))))
                            (___match127606127607_
                             _e123196123450_
                             _hd123195123453_
                             _tl123194123455_
                             _e123208123482_
                             _hd123207123485_
                             _tl123206123487_
                             _e123211123490_
                             _hd123210123493_
                             _tl123209123495_
                             _e123214123498_
                             _hd123213123501_
                             _tl123212123503_
                             _e123217123506_
                             _hd123216123509_
                             _tl123215123511_
                             _e123220123514_
                             _hd123219123517_
                             _tl123218123519_
                             _e123223123522_
                             _hd123222123525_
                             _tl123221123527_
                             _e123226123530_
                             _hd123225123533_
                             _tl123224123535_
                             _e123229123538_
                             _hd123228123541_
                             _tl123227123543_))
                        (___match127606127607_
                         _e123196123450_
                         _hd123195123453_
                         _tl123194123455_
                         _e123208123482_
                         _hd123207123485_
                         _tl123206123487_
                         _e123211123490_
                         _hd123210123493_
                         _tl123209123495_
                         _e123214123498_
                         _hd123213123501_
                         _tl123212123503_
                         _e123217123506_
                         _hd123216123509_
                         _tl123215123511_
                         _e123220123514_
                         _hd123219123517_
                         _tl123218123519_
                         _e123223123522_
                         _hd123222123525_
                         _tl123221123527_
                         _e123226123530_
                         _hd123225123533_
                         _tl123224123535_
                         _e123229123538_
                         _hd123228123541_
                         _tl123227123543_))
                    (___match127606127607_
                     _e123196123450_
                     _hd123195123453_
                     _tl123194123455_
                     _e123208123482_
                     _hd123207123485_
                     _tl123206123487_
                     _e123211123490_
                     _hd123210123493_
                     _tl123209123495_
                     _e123214123498_
                     _hd123213123501_
                     _tl123212123503_
                     _e123217123506_
                     _hd123216123509_
                     _tl123215123511_
                     _e123220123514_
                     _hd123219123517_
                     _tl123218123519_
                     _e123223123522_
                     _hd123222123525_
                     _tl123221123527_
                     _e123226123530_
                     _hd123225123533_
                     _tl123224123535_
                     _e123229123538_
                     _hd123228123541_
                     _tl123227123543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127606127607_
                                                     _e123196123450_
                                                     _hd123195123453_
                                                     _tl123194123455_
                                                     _e123208123482_
                                                     _hd123207123485_
                                                     _tl123206123487_
                                                     _e123211123490_
                                                     _hd123210123493_
                                                     _tl123209123495_
                                                     _e123214123498_
                                                     _hd123213123501_
                                                     _tl123212123503_
                                                     _e123217123506_
                                                     _hd123216123509_
                                                     _tl123215123511_
                                                     _e123220123514_
                                                     _hd123219123517_
                                                     _tl123218123519_
                                                     _e123223123522_
                                                     _hd123222123525_
                                                     _tl123221123527_
                                                     _e123226123530_
                                                     _hd123225123533_
                                                     _tl123224123535_
                                                     _e123229123538_
                                                     _hd123228123541_
                                                     _tl123227123543_))))
                                            (let ((_xarg123238123607_
                                                   (reverse _xarg123237123580_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123206123487_))
                                                  (let ((_L123610_
                                                         _hd123246123570_)
                                                        (_L123611_
                                                         _xarg123238123607_)
                                                        (_L123612_
                                                         _hd123228123541_)
                                                        (_L123613_
                                                         _hd123219123517_)
                                                        (_L123614_
                                                         _tl123199123460_)
                                                        (_L123615_
                                                         _arg123205123479_))
                                                    (if (and (let ((__tmp128883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128884
                                   (lambda (_g123658123661_ _g123659123663_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123658123661_
                                             _g123659123663_)))))
                              (declare (not safe))
                              (foldr1 __tmp128884 '() _L123615_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128883))
                     (let () (declare (not safe)) (gx#identifier? _L123614_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123613_ 'apply))
                     (fx= (length (let ((__tmp128881
                                         (lambda (_g123665123668_
                                                  _g123666123670_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123665123668_
                                                   _g123666123670_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128881 '() _L123615_)))
                          (length (let ((__tmp128882
                                         (lambda (_g123672123675_
                                                  _g123673123677_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123672123675_
                                                   _g123673123677_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128882 '() _L123611_))))
                     (let ((__tmp128879
                            (let ((__tmp128880
                                   (lambda (_g123679123682_ _g123680123684_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123679123682_
                                             _g123680123684_)))))
                              (declare (not safe))
                              (foldr1 __tmp128880 '() _L123615_)))
                           (__tmp128877
                            (let ((__tmp128878
                                   (lambda (_g123686123689_ _g123687123691_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123686123689_
                                             _g123687123691_)))))
                              (declare (not safe))
                              (foldr1 __tmp128878 '() _L123611_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128879 __tmp128877))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123614_ _L123610_))
                     (let ((__tmp128872
                            (let ((__tmp128876
                                   (lambda (_g123693123695_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123693123695_
                                        _L123612_))))
                                  (__tmp128873
                                   (let ((__tmp128875
                                          (lambda (_g123697123700_
                                                   _g123698123702_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123697123700_
                                                    _g123698123702_))))
                                         (__tmp128874
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123614_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128875
                                             __tmp128874
                                             _L123615_))))
                              (declare (not safe))
                              (find __tmp128876 __tmp128873))))
                       (declare (not safe))
                       (not __tmp128872)))
                (___kont127501127502_
                 _L123610_
                 _L123611_
                 _L123612_
                 _L123613_
                 _L123614_
                 _L123615_)
                (___match127606127607_
                 _e123196123450_
                 _hd123195123453_
                 _tl123194123455_
                 _e123208123482_
                 _hd123207123485_
                 _tl123206123487_
                 _e123211123490_
                 _hd123210123493_
                 _tl123209123495_
                 _e123214123498_
                 _hd123213123501_
                 _tl123212123503_
                 _e123217123506_
                 _hd123216123509_
                 _tl123215123511_
                 _e123220123514_
                 _hd123219123517_
                 _tl123218123519_
                 _e123223123522_
                 _hd123222123525_
                 _tl123221123527_
                 _e123226123530_
                 _hd123225123533_
                 _tl123224123535_
                 _e123229123538_
                 _hd123228123541_
                 _tl123227123543_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127606127607_
                                                   _e123196123450_
                                                   _hd123195123453_
                                                   _tl123194123455_
                                                   _e123208123482_
                                                   _hd123207123485_
                                                   _tl123206123487_
                                                   _e123211123490_
                                                   _hd123210123493_
                                                   _tl123209123495_
                                                   _e123214123498_
                                                   _hd123213123501_
                                                   _tl123212123503_
                                                   _e123217123506_
                                                   _hd123216123509_
                                                   _tl123215123511_
                                                   _e123220123514_
                                                   _hd123219123517_
                                                   _tl123218123519_
                                                   _e123223123522_
                                                   _hd123222123525_
                                                   _tl123221123527_
                                                   _e123226123530_
                                                   _hd123225123533_
                                                   _tl123224123535_
                                                   _e123229123538_
                                                   _hd123228123541_
                                                   _tl123227123543_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123233123575_ _target123230123546_ '())))
                            (___match127606127607_
                             _e123196123450_
                             _hd123195123453_
                             _tl123194123455_
                             _e123208123482_
                             _hd123207123485_
                             _tl123206123487_
                             _e123211123490_
                             _hd123210123493_
                             _tl123209123495_
                             _e123214123498_
                             _hd123213123501_
                             _tl123212123503_
                             _e123217123506_
                             _hd123216123509_
                             _tl123215123511_
                             _e123220123514_
                             _hd123219123517_
                             _tl123218123519_
                             _e123223123522_
                             _hd123222123525_
                             _tl123221123527_
                             _e123226123530_
                             _hd123225123533_
                             _tl123224123535_
                             _e123229123538_
                             _hd123228123541_
                             _tl123227123543_))
                        (___match127606127607_
                         _e123196123450_
                         _hd123195123453_
                         _tl123194123455_
                         _e123208123482_
                         _hd123207123485_
                         _tl123206123487_
                         _e123211123490_
                         _hd123210123493_
                         _tl123209123495_
                         _e123214123498_
                         _hd123213123501_
                         _tl123212123503_
                         _e123217123506_
                         _hd123216123509_
                         _tl123215123511_
                         _e123220123514_
                         _hd123219123517_
                         _tl123218123519_
                         _e123223123522_
                         _hd123222123525_
                         _tl123221123527_
                         _e123226123530_
                         _hd123225123533_
                         _tl123224123535_
                         _e123229123538_
                         _hd123228123541_
                         _tl123227123543_))))
                (___match127606127607_
                 _e123196123450_
                 _hd123195123453_
                 _tl123194123455_
                 _e123208123482_
                 _hd123207123485_
                 _tl123206123487_
                 _e123211123490_
                 _hd123210123493_
                 _tl123209123495_
                 _e123214123498_
                 _hd123213123501_
                 _tl123212123503_
                 _e123217123506_
                 _hd123216123509_
                 _tl123215123511_
                 _e123220123514_
                 _hd123219123517_
                 _tl123218123519_
                 _e123223123522_
                 _hd123222123525_
                 _tl123221123527_
                 _e123226123530_
                 _hd123225123533_
                 _tl123224123535_
                 _e123229123538_
                 _hd123228123541_
                 _tl123227123543_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127606127607_
                                                     _e123196123450_
                                                     _hd123195123453_
                                                     _tl123194123455_
                                                     _e123208123482_
                                                     _hd123207123485_
                                                     _tl123206123487_
                                                     _e123211123490_
                                                     _hd123210123493_
                                                     _tl123209123495_
                                                     _e123214123498_
                                                     _hd123213123501_
                                                     _tl123212123503_
                                                     _e123217123506_
                                                     _hd123216123509_
                                                     _tl123215123511_
                                                     _e123220123514_
                                                     _hd123219123517_
                                                     _tl123218123519_
                                                     _e123223123522_
                                                     _hd123222123525_
                                                     _tl123221123527_
                                                     _e123226123530_
                                                     _hd123225123533_
                                                     _tl123224123535_
                                                     _e123229123538_
                                                     _hd123228123541_
                                                     _tl123227123543_))
                                                (___match127606127607_
                                                 _e123196123450_
                                                 _hd123195123453_
                                                 _tl123194123455_
                                                 _e123208123482_
                                                 _hd123207123485_
                                                 _tl123206123487_
                                                 _e123211123490_
                                                 _hd123210123493_
                                                 _tl123209123495_
                                                 _e123214123498_
                                                 _hd123213123501_
                                                 _tl123212123503_
                                                 _e123217123506_
                                                 _hd123216123509_
                                                 _tl123215123511_
                                                 _e123220123514_
                                                 _hd123219123517_
                                                 _tl123218123519_
                                                 _e123223123522_
                                                 _hd123222123525_
                                                 _tl123221123527_
                                                 _e123226123530_
                                                 _hd123225123533_
                                                 _tl123224123535_
                                                 _e123229123538_
                                                 _hd123228123541_
                                                 _tl123227123543_))))
                                        (___match127606127607_
                                         _e123196123450_
                                         _hd123195123453_
                                         _tl123194123455_
                                         _e123208123482_
                                         _hd123207123485_
                                         _tl123206123487_
                                         _e123211123490_
                                         _hd123210123493_
                                         _tl123209123495_
                                         _e123214123498_
                                         _hd123213123501_
                                         _tl123212123503_
                                         _e123217123506_
                                         _hd123216123509_
                                         _tl123215123511_
                                         _e123220123514_
                                         _hd123219123517_
                                         _tl123218123519_
                                         _e123223123522_
                                         _hd123222123525_
                                         _tl123221123527_
                                         _e123226123530_
                                         _hd123225123533_
                                         _tl123224123535_
                                         _e123229123538_
                                         _hd123228123541_
                                         _tl123227123543_))))
                                (___match127606127607_
                                 _e123196123450_
                                 _hd123195123453_
                                 _tl123194123455_
                                 _e123208123482_
                                 _hd123207123485_
                                 _tl123206123487_
                                 _e123211123490_
                                 _hd123210123493_
                                 _tl123209123495_
                                 _e123214123498_
                                 _hd123213123501_
                                 _tl123212123503_
                                 _e123217123506_
                                 _hd123216123509_
                                 _tl123215123511_
                                 _e123220123514_
                                 _hd123219123517_
                                 _tl123218123519_
                                 _e123223123522_
                                 _hd123222123525_
                                 _tl123221123527_
                                 _e123226123530_
                                 _hd123225123533_
                                 _tl123224123535_
                                 _e123229123538_
                                 _hd123228123541_
                                 _tl123227123543_))))
                        (___match127606127607_
                         _e123196123450_
                         _hd123195123453_
                         _tl123194123455_
                         _e123208123482_
                         _hd123207123485_
                         _tl123206123487_
                         _e123211123490_
                         _hd123210123493_
                         _tl123209123495_
                         _e123214123498_
                         _hd123213123501_
                         _tl123212123503_
                         _e123217123506_
                         _hd123216123509_
                         _tl123215123511_
                         _e123220123514_
                         _hd123219123517_
                         _tl123218123519_
                         _e123223123522_
                         _hd123222123525_
                         _tl123221123527_
                         _e123226123530_
                         _hd123225123533_
                         _tl123224123535_
                         _e123229123538_
                         _hd123228123541_
                         _tl123227123543_))
                    (___match127606127607_
                     _e123196123450_
                     _hd123195123453_
                     _tl123194123455_
                     _e123208123482_
                     _hd123207123485_
                     _tl123206123487_
                     _e123211123490_
                     _hd123210123493_
                     _tl123209123495_
                     _e123214123498_
                     _hd123213123501_
                     _tl123212123503_
                     _e123217123506_
                     _hd123216123509_
                     _tl123215123511_
                     _e123220123514_
                     _hd123219123517_
                     _tl123218123519_
                     _e123223123522_
                     _hd123222123525_
                     _tl123221123527_
                     _e123226123530_
                     _hd123225123533_
                     _tl123224123535_
                     _e123229123538_
                     _hd123228123541_
                     _tl123227123543_))
                (___kont127509127510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127509127510_))
                                            (___kont127509127510_))
                                        (___kont127509127510_))))
                                (___kont127509127510_))))
                        (___kont127509127510_))
                    (___kont127509127510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127509127510_))
                                                (___kont127509127510_))
                                            (___kont127509127510_))))
                                    (___kont127509127510_))))
                            (___kont127509127510_))
                        (___kont127509127510_))
                    (___kont127509127510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127509127510_))))
                                            (___kont127509127510_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123200123463_ _target123197123458_ '())))))
                   (___match127524127525_
                    (lambda (_e123148123710_
                             _hd123147123713_
                             _tl123146123715_
                             ___splice127497127498_
                             _target123149123718_
                             _tl123151123720_)
                      (letrec ((_loop123152123723_
                                (lambda (_hd123150123726_ _arg123156123728_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123150123726_))
                                      (let ((_e123153123731_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123150123726_))))
                                        (let ((_lp-tl123155123736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123153123731_)))
                                              (_lp-hd123154123734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123153123731_))))
                                          (let ((__tmp128900
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123154123734_
                                                         _arg123156123728_))))
                                            (declare (not safe))
                                            (_loop123152123723_
                                             _lp-tl123155123736_
                                             __tmp128900))))
                                      (let ((_arg123157123739_
                                             (reverse _arg123156123728_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123146123715_))
                                            (let ((_e123160123742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123146123715_))))
                                              (let ((_tl123158123747_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123160123742_)))
                                                    (_hd123159123745_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123160123742_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123159123745_))
                                                    (let ((_e123163123750_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123159123745_))))
                                                      (let ((_tl123161123755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123163123750_)))
                    (_hd123162123753_
                     (let () (declare (not safe)) (##car _e123163123750_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123162123753_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123162123753_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123161123755_))
                            (let ((_e123166123758_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123161123755_))))
                              (let ((_tl123164123763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123166123758_)))
                                    (_hd123165123761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123166123758_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123165123761_))
                                    (let ((_e123169123766_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123165123761_))))
                                      (let ((_tl123167123771_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123169123766_)))
                                            (_hd123168123769_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123169123766_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123168123769_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123168123769_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123167123771_))
                                                    (let ((_e123172123774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123167123771_))))
                                                      (let ((_tl123170123779_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123172123774_)))
                    (_hd123171123777_
                     (let () (declare (not safe)) (##car _e123172123774_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123170123779_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123164123763_))
                        (let ((___splice127499127500_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123164123763_
                                  '0))))
                          (let ((_tl123175123784_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127499127500_ '1)))
                                (_target123173123782_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127499127500_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123175123784_))
                                (letrec ((_loop123176123787_
                                          (lambda (_hd123174123790_
                                                   _xarg123180123792_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123174123790_))
                                                (let ((_e123177123795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123174123790_))))
                                                  (let ((_lp-tl123179123800_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123177123795_)))
                                                        (_lp-hd123178123798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123177123795_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123178123798_))
                                                        (let ((_e123184123803_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123178123798_))))
                  (let ((_tl123182123808_
                         (let () (declare (not safe)) (##cdr _e123184123803_)))
                        (_hd123183123806_
                         (let ()
                           (declare (not safe))
                           (##car _e123184123803_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123183123806_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123183123806_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123182123808_))
                                (let ((_e123187123811_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123182123808_))))
                                  (let ((_tl123185123816_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123187123811_)))
                                        (_hd123186123814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123187123811_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123185123816_))
                                        (let ((__tmp128899
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123186123814_
                                                       _xarg123180123792_))))
                                          (declare (not safe))
                                          (_loop123176123787_
                                           _lp-tl123179123800_
                                           __tmp128899))
                                        (___match127536127537_
                                         _e123148123710_
                                         _hd123147123713_
                                         _tl123146123715_
                                         ___splice127497127498_
                                         _target123149123718_
                                         _tl123151123720_))))
                                (___match127536127537_
                                 _e123148123710_
                                 _hd123147123713_
                                 _tl123146123715_
                                 ___splice127497127498_
                                 _target123149123718_
                                 _tl123151123720_))
                            (___match127536127537_
                             _e123148123710_
                             _hd123147123713_
                             _tl123146123715_
                             ___splice127497127498_
                             _target123149123718_
                             _tl123151123720_))
                        (___match127536127537_
                         _e123148123710_
                         _hd123147123713_
                         _tl123146123715_
                         ___splice127497127498_
                         _target123149123718_
                         _tl123151123720_))))
                (___match127536127537_
                 _e123148123710_
                 _hd123147123713_
                 _tl123146123715_
                 ___splice127497127498_
                 _target123149123718_
                 _tl123151123720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123181123819_
                                                       (reverse _xarg123180123792_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123158123747_))
                                                      (let ((_L123822_
                                                             _xarg123181123819_)
                                                            (_L123823_
                                                             _hd123171123777_)
                                                            (_L123824_
                                                             _arg123157123739_))
                                                        (if (and (let ((__tmp128897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128898
                                       (lambda (_g123852123855_
                                                _g123853123857_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123852123855_
                                                 _g123853123857_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128898 '() _L123824_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128897))
                         (fx= (length (let ((__tmp128895
                                             (lambda (_g123859123862_
                                                      _g123860123864_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123859123862_
                                                       _g123860123864_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128895 '() _L123824_)))
                              (length (let ((__tmp128896
                                             (lambda (_g123866123869_
                                                      _g123867123871_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123866123869_
                                                       _g123867123871_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128896 '() _L123822_))))
                         (let ((__tmp128893
                                (let ((__tmp128894
                                       (lambda (_g123873123876_
                                                _g123874123878_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123873123876_
                                                 _g123874123878_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128894 '() _L123824_)))
                               (__tmp128891
                                (let ((__tmp128892
                                       (lambda (_g123880123883_
                                                _g123881123885_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123880123883_
                                                 _g123881123885_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128892 '() _L123822_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128893
                                    __tmp128891))
                         (let ((__tmp128887
                                (let ((__tmp128890
                                       (lambda (_g123887123889_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123887123889_
                                            _L123823_))))
                                      (__tmp128888
                                       (let ((__tmp128889
                                              (lambda (_g123891123894_
                                                       _g123892123896_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123891123894_
                                                        _g123892123896_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128889 '() _L123824_))))
                                  (declare (not safe))
                                  (find __tmp128890 __tmp128888))))
                           (declare (not safe))
                           (not __tmp128887)))
                    (___kont127495127496_ _L123822_ _L123823_ _L123824_)
                    (___match127536127537_
                     _e123148123710_
                     _hd123147123713_
                     _tl123146123715_
                     ___splice127497127498_
                     _target123149123718_
                     _tl123151123720_)))
              (___match127536127537_
               _e123148123710_
               _hd123147123713_
               _tl123146123715_
               ___splice127497127498_
               _target123149123718_
               _tl123151123720_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123176123787_
                                     _target123173123782_
                                     '())))
                                (___match127536127537_
                                 _e123148123710_
                                 _hd123147123713_
                                 _tl123146123715_
                                 ___splice127497127498_
                                 _target123149123718_
                                 _tl123151123720_))))
                        (___match127536127537_
                         _e123148123710_
                         _hd123147123713_
                         _tl123146123715_
                         ___splice127497127498_
                         _target123149123718_
                         _tl123151123720_))
                    (___match127536127537_
                     _e123148123710_
                     _hd123147123713_
                     _tl123146123715_
                     ___splice127497127498_
                     _target123149123718_
                     _tl123151123720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127536127537_
                                                     _e123148123710_
                                                     _hd123147123713_
                                                     _tl123146123715_
                                                     ___splice127497127498_
                                                     _target123149123718_
                                                     _tl123151123720_))
                                                (___match127536127537_
                                                 _e123148123710_
                                                 _hd123147123713_
                                                 _tl123146123715_
                                                 ___splice127497127498_
                                                 _target123149123718_
                                                 _tl123151123720_))
                                            (___match127536127537_
                                             _e123148123710_
                                             _hd123147123713_
                                             _tl123146123715_
                                             ___splice127497127498_
                                             _target123149123718_
                                             _tl123151123720_))))
                                    (___match127536127537_
                                     _e123148123710_
                                     _hd123147123713_
                                     _tl123146123715_
                                     ___splice127497127498_
                                     _target123149123718_
                                     _tl123151123720_))))
                            (___match127536127537_
                             _e123148123710_
                             _hd123147123713_
                             _tl123146123715_
                             ___splice127497127498_
                             _target123149123718_
                             _tl123151123720_))
                        (___match127536127537_
                         _e123148123710_
                         _hd123147123713_
                         _tl123146123715_
                         ___splice127497127498_
                         _target123149123718_
                         _tl123151123720_))
                    (___match127536127537_
                     _e123148123710_
                     _hd123147123713_
                     _tl123146123715_
                     ___splice127497127498_
                     _target123149123718_
                     _tl123151123720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127536127537_
                                                     _e123148123710_
                                                     _hd123147123713_
                                                     _tl123146123715_
                                                     ___splice127497127498_
                                                     _target123149123718_
                                                     _tl123151123720_))))
                                            (___match127536127537_
                                             _e123148123710_
                                             _hd123147123713_
                                             _tl123146123715_
                                             ___splice127497127498_
                                             _target123149123718_
                                             _tl123151123720_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123152123723_ _target123149123718_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127493127494_))
                  (let ((_e123148123710_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127493127494_))))
                    (let ((_tl123146123715_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123148123710_)))
                          (_hd123147123713_
                           (let ()
                             (declare (not safe))
                             (##car _e123148123710_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123147123713_))
                          (let ((___splice127497127498_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123147123713_
                                    '0))))
                            (let ((_tl123151123720_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127497127498_ '1)))
                                  (_target123149123718_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127497127498_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123151123720_))
                                  (___match127524127525_
                                   _e123148123710_
                                   _hd123147123713_
                                   _tl123146123715_
                                   ___splice127497127498_
                                   _target123149123718_
                                   _tl123151123720_)
                                  (___match127536127537_
                                   _e123148123710_
                                   _hd123147123713_
                                   _tl123146123715_
                                   ___splice127497127498_
                                   _target123149123718_
                                   _tl123151123720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123146123715_))
                              (let ((_e123263123318_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123146123715_))))
                                (let ((_tl123261123323_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123263123318_)))
                                      (_hd123262123321_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123263123318_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123262123321_))
                                      (let ((_e123266123326_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123262123321_))))
                                        (let ((_tl123264123331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123266123326_)))
                                              (_hd123265123329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123266123326_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123265123329_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123265123329_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123264123331_))
                                                      (let ((_e123269123334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123264123331_))))
                (let ((_tl123267123339_
                       (let () (declare (not safe)) (##cdr _e123269123334_)))
                      (_hd123268123337_
                       (let () (declare (not safe)) (##car _e123269123334_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123268123337_))
                      (let ((_e123272123342_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123268123337_))))
                        (let ((_tl123270123347_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123272123342_)))
                              (_hd123271123345_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123272123342_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123271123345_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123271123345_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123270123347_))
                                      (let ((_e123275123350_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123270123347_))))
                                        (let ((_tl123273123355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123275123350_)))
                                              (_hd123274123353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123275123350_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123273123355_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123267123339_))
                                                  (let ((_e123278123358_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123267123339_))))
                                                    (let ((_tl123276123363_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123278123358_)))
                                                          (_hd123277123361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123278123358_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123277123361_))
                                                          (let ((_e123281123366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123277123361_))))
                    (let ((_tl123279123371_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123281123366_)))
                          (_hd123280123369_
                           (let ()
                             (declare (not safe))
                             (##car _e123281123366_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123280123369_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123280123369_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123279123371_))
                                  (let ((_e123284123374_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123279123371_))))
                                    (let ((_tl123282123379_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123284123374_)))
                                          (_hd123283123377_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123284123374_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123282123379_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123276123363_))
                                              (let ((_e123287123382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123276123363_))))
                                                (let ((_tl123285123387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123287123382_)))
                                                      (_hd123286123385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123287123382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123286123385_))
                                                      (let ((_e123290123390_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123286123385_))))
                (let ((_tl123288123395_
                       (let () (declare (not safe)) (##cdr _e123290123390_)))
                      (_hd123289123393_
                       (let () (declare (not safe)) (##car _e123290123390_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123289123393_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123289123393_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123288123395_))
                              (let ((_e123293123398_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123288123395_))))
                                (let ((_tl123291123403_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123293123398_)))
                                      (_hd123292123401_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123293123398_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123291123403_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123285123387_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123261123323_))
                                              (___match127634127635_
                                               _e123148123710_
                                               _hd123147123713_
                                               _tl123146123715_
                                               _e123263123318_
                                               _hd123262123321_
                                               _tl123261123323_
                                               _e123266123326_
                                               _hd123265123329_
                                               _tl123264123331_
                                               _e123269123334_
                                               _hd123268123337_
                                               _tl123267123339_
                                               _e123272123342_
                                               _hd123271123345_
                                               _tl123270123347_
                                               _e123275123350_
                                               _hd123274123353_
                                               _tl123273123355_
                                               _e123278123358_
                                               _hd123277123361_
                                               _tl123276123363_
                                               _e123281123366_
                                               _hd123280123369_
                                               _tl123279123371_
                                               _e123284123374_
                                               _hd123283123377_
                                               _tl123282123379_
                                               _e123287123382_
                                               _hd123286123385_
                                               _tl123285123387_
                                               _e123290123390_
                                               _hd123289123393_
                                               _tl123288123395_
                                               _e123293123398_
                                               _hd123292123401_
                                               _tl123291123403_)
                                              (___kont127509127510_))
                                          (___kont127509127510_))
                                      (___kont127509127510_))))
                              (___kont127509127510_))
                          (___kont127509127510_))
                      (___kont127509127510_))))
              (___kont127509127510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127509127510_))
                                          (___kont127509127510_))))
                                  (___kont127509127510_))
                              (___kont127509127510_))
                          (___kont127509127510_))))
                  (___kont127509127510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127509127510_))
                                              (___kont127509127510_))))
                                      (___kont127509127510_))
                                  (___kont127509127510_))
                              (___kont127509127510_))))
                      (___kont127509127510_))))
              (___kont127509127510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127509127510_))
                                              (___kont127509127510_))))
                                      (___kont127509127510_))))
                              (___kont127509127510_)))))
                  (___kont127509127510_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122604_)
        (let* ((___stx127637127638_ _form122604_)
               (_g122608122732_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127637127638_)))))
          (let ((___kont127639127640_
                 (lambda (_L123102_ _L123103_ _L123104_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123103_))))
                (___kont127645127646_
                 (lambda (_L122950_ _L122951_ _L122952_ _L122953_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122950_))))
                (___kont127649127650_
                 (lambda (_L122817_ _L122818_ _L122819_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122817_)))))
            (let* ((___match127746127747_
                    (lambda (_e122700122737_
                             _hd122699122740_
                             _tl122698122742_
                             _e122703122745_
                             _hd122702122748_
                             _tl122701122750_
                             _e122706122753_
                             _hd122705122756_
                             _tl122704122758_
                             _e122709122761_
                             _hd122708122764_
                             _tl122707122766_
                             _e122712122769_
                             _hd122711122772_
                             _tl122710122774_
                             _e122715122777_
                             _hd122714122780_
                             _tl122713122782_
                             _e122718122785_
                             _hd122717122788_
                             _tl122716122790_
                             _e122721122793_
                             _hd122720122796_
                             _tl122719122798_
                             _e122724122801_
                             _hd122723122804_
                             _tl122722122806_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122716122790_))
                          (let ((_e122727122809_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122716122790_))))
                            (let ((_tl122725122814_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122727122809_)))
                                  (_hd122726122812_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122727122809_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122725122814_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122701122750_))
                                      (___kont127649127650_
                                       _hd122723122804_
                                       _hd122714122780_
                                       _hd122699122740_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122608122732_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122608122732_)))))
                          (let () (declare (not safe)) (_g122608122732_)))))
                   (___match127676127677_
                    (lambda (_e122661122854_
                             _hd122660122857_
                             _tl122659122859_
                             ___splice127647127648_
                             _target122662122862_
                             _tl122664122864_)
                      (letrec ((_loop122665122867_
                                (lambda (_hd122663122870_ _arg122669122872_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122663122870_))
                                      (let ((_e122666122875_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122663122870_))))
                                        (let ((_lp-tl122668122880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122666122875_)))
                                              (_lp-hd122667122878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122666122875_))))
                                          (let ((__tmp128901
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122667122878_
                                                         _arg122669122872_))))
                                            (declare (not safe))
                                            (_loop122665122867_
                                             _lp-tl122668122880_
                                             __tmp128901))))
                                      (let ((_arg122670122883_
                                             (reverse _arg122669122872_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122659122859_))
                                            (let ((_e122673122886_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122659122859_))))
                                              (let ((_tl122671122891_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122673122886_)))
                                                    (_hd122672122889_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122673122886_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122672122889_))
                                                    (let ((_e122676122894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122672122889_))))
                                                      (let ((_tl122674122899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122676122894_)))
                    (_hd122675122897_
                     (let () (declare (not safe)) (##car _e122676122894_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122675122897_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122675122897_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122674122899_))
                            (let ((_e122679122902_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122674122899_))))
                              (let ((_tl122677122907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122679122902_)))
                                    (_hd122678122905_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122679122902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122678122905_))
                                    (let ((_e122682122910_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122678122905_))))
                                      (let ((_tl122680122915_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122682122910_)))
                                            (_hd122681122913_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122682122910_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122681122913_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122681122913_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122680122915_))
                                                    (let ((_e122685122918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122680122915_))))
                                                      (let ((_tl122683122923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122685122918_)))
                    (_hd122684122921_
                     (let () (declare (not safe)) (##car _e122685122918_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122683122923_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122677122907_))
                        (let ((_e122688122926_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122677122907_))))
                          (let ((_tl122686122931_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122688122926_)))
                                (_hd122687122929_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122688122926_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122687122929_))
                                (let ((_e122691122934_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122687122929_))))
                                  (let ((_tl122689122939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122691122934_)))
                                        (_hd122690122937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122691122934_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122690122937_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122690122937_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122689122939_))
                                                (let ((_e122694122942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122689122939_))))
                                                  (let ((_tl122692122947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122694122942_)))
                                                        (_hd122693122945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122694122942_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122692122947_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122671122891_))
                                                            (___kont127645127646_
                                                             _hd122693122945_
                                                             _hd122684122921_
                                                             _tl122664122864_
                                                             _arg122670122883_)
                                                            (___match127746127747_
                                                             _e122661122854_
                                                             _hd122660122857_
                                                             _tl122659122859_
                                                             _e122673122886_
                                                             _hd122672122889_
                                                             _tl122671122891_
                                                             _e122676122894_
                                                             _hd122675122897_
                                                             _tl122674122899_
                                                             _e122679122902_
                                                             _hd122678122905_
                                                             _tl122677122907_
                                                             _e122682122910_
                                                             _hd122681122913_
                                                             _tl122680122915_
                                                             _e122685122918_
                                                             _hd122684122921_
                                                             _tl122683122923_
                                                             _e122688122926_
                                                             _hd122687122929_
                                                             _tl122686122931_
                                                             _e122691122934_
                                                             _hd122690122937_
                                                             _tl122689122939_
                                                             _e122694122942_
                                                             _hd122693122945_
                                                             _tl122692122947_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122608122732_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122608122732_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122608122732_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122608122732_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122608122732_)))))
                        (let () (declare (not safe)) (_g122608122732_)))
                    (let () (declare (not safe)) (_g122608122732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122608122732_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122608122732_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122608122732_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122608122732_)))))
                            (let () (declare (not safe)) (_g122608122732_)))
                        (let () (declare (not safe)) (_g122608122732_)))
                    (let () (declare (not safe)) (_g122608122732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122608122732_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122608122732_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122665122867_ _target122662122862_ '())))))
                   (___match127664127665_
                    (lambda (_e122615122990_
                             _hd122614122993_
                             _tl122613122995_
                             ___splice127641127642_
                             _target122616122998_
                             _tl122618123000_)
                      (letrec ((_loop122619123003_
                                (lambda (_hd122617123006_ _arg122623123008_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122617123006_))
                                      (let ((_e122620123011_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122617123006_))))
                                        (let ((_lp-tl122622123016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122620123011_)))
                                              (_lp-hd122621123014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122620123011_))))
                                          (let ((__tmp128903
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122621123014_
                                                         _arg122623123008_))))
                                            (declare (not safe))
                                            (_loop122619123003_
                                             _lp-tl122622123016_
                                             __tmp128903))))
                                      (let ((_arg122624123019_
                                             (reverse _arg122623123008_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122613122995_))
                                            (let ((_e122627123022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122613122995_))))
                                              (let ((_tl122625123027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122627123022_)))
                                                    (_hd122626123025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122627123022_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122626123025_))
                                                    (let ((_e122630123030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122626123025_))))
                                                      (let ((_tl122628123035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122630123030_)))
                    (_hd122629123033_
                     (let () (declare (not safe)) (##car _e122630123030_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122629123033_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122629123033_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122628123035_))
                            (let ((_e122633123038_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122628123035_))))
                              (let ((_tl122631123043_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122633123038_)))
                                    (_hd122632123041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122633123038_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122632123041_))
                                    (let ((_e122636123046_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122632123041_))))
                                      (let ((_tl122634123051_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122636123046_)))
                                            (_hd122635123049_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122636123046_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122635123049_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122635123049_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122634123051_))
                                                    (let ((_e122639123054_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122634123051_))))
                                                      (let ((_tl122637123059_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122639123054_)))
                    (_hd122638123057_
                     (let () (declare (not safe)) (##car _e122639123054_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122637123059_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122631123043_))
                        (let ((___splice127643127644_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122631123043_
                                  '0))))
                          (let ((_tl122642123064_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127643127644_ '1)))
                                (_target122640123062_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127643127644_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122642123064_))
                                (letrec ((_loop122643123067_
                                          (lambda (_hd122641123070_
                                                   _xarg122647123072_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122641123070_))
                                                (let ((_e122644123075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122641123070_))))
                                                  (let ((_lp-tl122646123080_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122644123075_)))
                                                        (_lp-hd122645123078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122644123075_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122645123078_))
                                                        (let ((_e122651123083_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122645123078_))))
                  (let ((_tl122649123088_
                         (let () (declare (not safe)) (##cdr _e122651123083_)))
                        (_hd122650123086_
                         (let ()
                           (declare (not safe))
                           (##car _e122651123083_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122650123086_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122650123086_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122649123088_))
                                (let ((_e122654123091_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122649123088_))))
                                  (let ((_tl122652123096_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122654123091_)))
                                        (_hd122653123094_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122654123091_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122652123096_))
                                        (let ((__tmp128902
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122653123094_
                                                       _xarg122647123072_))))
                                          (declare (not safe))
                                          (_loop122643123067_
                                           _lp-tl122646123080_
                                           __tmp128902))
                                        (___match127676127677_
                                         _e122615122990_
                                         _hd122614122993_
                                         _tl122613122995_
                                         ___splice127641127642_
                                         _target122616122998_
                                         _tl122618123000_))))
                                (___match127676127677_
                                 _e122615122990_
                                 _hd122614122993_
                                 _tl122613122995_
                                 ___splice127641127642_
                                 _target122616122998_
                                 _tl122618123000_))
                            (___match127676127677_
                             _e122615122990_
                             _hd122614122993_
                             _tl122613122995_
                             ___splice127641127642_
                             _target122616122998_
                             _tl122618123000_))
                        (___match127676127677_
                         _e122615122990_
                         _hd122614122993_
                         _tl122613122995_
                         ___splice127641127642_
                         _target122616122998_
                         _tl122618123000_))))
                (___match127676127677_
                 _e122615122990_
                 _hd122614122993_
                 _tl122613122995_
                 ___splice127641127642_
                 _target122616122998_
                 _tl122618123000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122648123099_
                                                       (reverse _xarg122647123072_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122625123027_))
                                                      (___kont127639127640_
                                                       _xarg122648123099_
                                                       _hd122638123057_
                                                       _arg122624123019_)
                                                      (___match127676127677_
                                                       _e122615122990_
                                                       _hd122614122993_
                                                       _tl122613122995_
                                                       ___splice127641127642_
                                                       _target122616122998_
                                                       _tl122618123000_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122643123067_
                                     _target122640123062_
                                     '())))
                                (___match127676127677_
                                 _e122615122990_
                                 _hd122614122993_
                                 _tl122613122995_
                                 ___splice127641127642_
                                 _target122616122998_
                                 _tl122618123000_))))
                        (___match127676127677_
                         _e122615122990_
                         _hd122614122993_
                         _tl122613122995_
                         ___splice127641127642_
                         _target122616122998_
                         _tl122618123000_))
                    (___match127676127677_
                     _e122615122990_
                     _hd122614122993_
                     _tl122613122995_
                     ___splice127641127642_
                     _target122616122998_
                     _tl122618123000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127676127677_
                                                     _e122615122990_
                                                     _hd122614122993_
                                                     _tl122613122995_
                                                     ___splice127641127642_
                                                     _target122616122998_
                                                     _tl122618123000_))
                                                (___match127676127677_
                                                 _e122615122990_
                                                 _hd122614122993_
                                                 _tl122613122995_
                                                 ___splice127641127642_
                                                 _target122616122998_
                                                 _tl122618123000_))
                                            (___match127676127677_
                                             _e122615122990_
                                             _hd122614122993_
                                             _tl122613122995_
                                             ___splice127641127642_
                                             _target122616122998_
                                             _tl122618123000_))))
                                    (___match127676127677_
                                     _e122615122990_
                                     _hd122614122993_
                                     _tl122613122995_
                                     ___splice127641127642_
                                     _target122616122998_
                                     _tl122618123000_))))
                            (___match127676127677_
                             _e122615122990_
                             _hd122614122993_
                             _tl122613122995_
                             ___splice127641127642_
                             _target122616122998_
                             _tl122618123000_))
                        (___match127676127677_
                         _e122615122990_
                         _hd122614122993_
                         _tl122613122995_
                         ___splice127641127642_
                         _target122616122998_
                         _tl122618123000_))
                    (___match127676127677_
                     _e122615122990_
                     _hd122614122993_
                     _tl122613122995_
                     ___splice127641127642_
                     _target122616122998_
                     _tl122618123000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127676127677_
                                                     _e122615122990_
                                                     _hd122614122993_
                                                     _tl122613122995_
                                                     ___splice127641127642_
                                                     _target122616122998_
                                                     _tl122618123000_))))
                                            (___match127676127677_
                                             _e122615122990_
                                             _hd122614122993_
                                             _tl122613122995_
                                             ___splice127641127642_
                                             _target122616122998_
                                             _tl122618123000_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122619123003_ _target122616122998_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127637127638_))
                  (let ((_e122615122990_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127637127638_))))
                    (let ((_tl122613122995_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122615122990_)))
                          (_hd122614122993_
                           (let ()
                             (declare (not safe))
                             (##car _e122615122990_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122614122993_))
                          (let ((___splice127641127642_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122614122993_
                                    '0))))
                            (let ((_tl122618123000_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127641127642_ '1)))
                                  (_target122616122998_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127641127642_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122618123000_))
                                  (___match127664127665_
                                   _e122615122990_
                                   _hd122614122993_
                                   _tl122613122995_
                                   ___splice127641127642_
                                   _target122616122998_
                                   _tl122618123000_)
                                  (___match127676127677_
                                   _e122615122990_
                                   _hd122614122993_
                                   _tl122613122995_
                                   ___splice127641127642_
                                   _target122616122998_
                                   _tl122618123000_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122613122995_))
                              (let ((_e122703122745_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122613122995_))))
                                (let ((_tl122701122750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122703122745_)))
                                      (_hd122702122748_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122703122745_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122702122748_))
                                      (let ((_e122706122753_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122702122748_))))
                                        (let ((_tl122704122758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122706122753_)))
                                              (_hd122705122756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122706122753_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122705122756_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122705122756_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122704122758_))
                                                      (let ((_e122709122761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122704122758_))))
                (let ((_tl122707122766_
                       (let () (declare (not safe)) (##cdr _e122709122761_)))
                      (_hd122708122764_
                       (let () (declare (not safe)) (##car _e122709122761_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122708122764_))
                      (let ((_e122712122769_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122708122764_))))
                        (let ((_tl122710122774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122712122769_)))
                              (_hd122711122772_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122712122769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122711122772_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122711122772_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122710122774_))
                                      (let ((_e122715122777_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122710122774_))))
                                        (let ((_tl122713122782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122715122777_)))
                                              (_hd122714122780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122715122777_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122713122782_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122707122766_))
                                                  (let ((_e122718122785_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122707122766_))))
                                                    (let ((_tl122716122790_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122718122785_)))
                                                          (_hd122717122788_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122718122785_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122717122788_))
                                                          (let ((_e122721122793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122717122788_))))
                    (let ((_tl122719122798_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122721122793_)))
                          (_hd122720122796_
                           (let ()
                             (declare (not safe))
                             (##car _e122721122793_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122720122796_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122720122796_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122719122798_))
                                  (let ((_e122724122801_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122719122798_))))
                                    (let ((_tl122722122806_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122724122801_)))
                                          (_hd122723122804_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122724122801_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122722122806_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122716122790_))
                                              (let ((_e122727122809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122716122790_))))
                                                (let ((_tl122725122814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122727122809_)))
                                                      (_hd122726122812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122727122809_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122725122814_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122701122750_))
                                                          (___kont127649127650_
                                                           _hd122723122804_
                                                           _hd122714122780_
                                                           _hd122614122993_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122608122732_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122608122732_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122608122732_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122608122732_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122608122732_)))
                              (let () (declare (not safe)) (_g122608122732_)))
                          (let () (declare (not safe)) (_g122608122732_)))))
                  (let () (declare (not safe)) (_g122608122732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122608122732_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122608122732_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122608122732_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122608122732_)))
                              (let ()
                                (declare (not safe))
                                (_g122608122732_)))))
                      (let () (declare (not safe)) (_g122608122732_)))))
              (let () (declare (not safe)) (_g122608122732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122608122732_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122608122732_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122608122732_)))))
                              (let ()
                                (declare (not safe))
                                (_g122608122732_))))))
                  (let () (declare (not safe)) (_g122608122732_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122408_)
        (let* ((_g122410122424_
                (lambda (_g122411122421_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122411122421_))))
               (_g122409122601_
                (lambda (_g122411122427_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122411122427_))
                      (let ((_e122416122429_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122411122427_))))
                        (let ((_hd122415122432_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122416122429_)))
                              (_tl122414122434_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122416122429_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122414122434_))
                              (let ((_e122419122437_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122414122434_))))
                                (let ((_hd122418122440_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122419122437_)))
                                      (_tl122417122442_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122419122437_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122417122442_))
                                      ((lambda (_L122445_ _L122446_)
                                         (let* ((___stx127759127760_ _L122446_)
                                                (_g122461122489_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127759127760_)))))
                                           (let ((___kont127761127762_
                                                  (lambda (_L122580_)
                                                    (length (let ((__tmp128904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122590122593_ _g122591122595_)
                             (let ()
                               (declare (not safe))
                               (cons _g122590122593_ _g122591122595_)))))
                      (declare (not safe))
                      (foldr1 __tmp128904 '() _L122580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127765127766_
                                                  (lambda (_L122531_ _L122532_)
                                                    (let ((__tmp128905
                                                           (length (let ((__tmp128906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122543122546_ _g122544122548_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122543122546_
                                            _g122544122548_)))))
                             (declare (not safe))
                             (foldr1 __tmp128906 '() _L122532_)))))
              (declare (not safe))
              (cons __tmp128905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127769127770_
                                                  (lambda (_L122494_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127784127785_
                                                     (lambda (___splice127767127768_
                                                              _target122475122507_
                                                              _tl122477122509_)
                                                       (letrec ((_loop122478122512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122476122515_ _arg122482122517_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122476122515_))
                               (let ((_e122479122520_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122476122515_))))
                                 (let ((_lp-tl122481122525_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122479122520_)))
                                       (_lp-hd122480122523_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122479122520_))))
                                   (let ((__tmp128907
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122480122523_
                                                  _arg122482122517_))))
                                     (declare (not safe))
                                     (_loop122478122512_
                                      _lp-tl122481122525_
                                      __tmp128907))))
                               (let ((_arg122483122528_
                                      (reverse _arg122482122517_)))
                                 (___kont127765127766_
                                  _tl122477122509_
                                  _arg122483122528_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122478122512_ _target122475122507_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127778127779_
                                                     (lambda (___splice127763127764_
                                                              _target122464122556_
                                                              _tl122466122558_)
                                                       (letrec ((_loop122467122561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122465122564_ _arg122471122566_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122465122564_))
                               (let ((_e122468122569_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122465122564_))))
                                 (let ((_lp-tl122470122574_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122468122569_)))
                                       (_lp-hd122469122572_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122468122569_))))
                                   (let ((__tmp128908
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122469122572_
                                                  _arg122471122566_))))
                                     (declare (not safe))
                                     (_loop122467122561_
                                      _lp-tl122470122574_
                                      __tmp128908))))
                               (let ((_arg122472122577_
                                      (reverse _arg122471122566_)))
                                 (___kont127761127762_ _arg122472122577_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122467122561_ _target122464122556_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127759127760_))
                                                   (let ((___splice127763127764_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127759127760_
                                                             '0))))
                                                     (let ((_tl122466122558_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127763127764_
                                                               '1)))
                                                           (_target122464122556_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127763127764_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122466122558_))
                                                           (___match127778127779_
                                                            ___splice127763127764_
                                                            _target122464122556_
                                                            _tl122466122558_)
                                                           (___match127784127785_
                                                            ___splice127763127764_
                                                            _target122464122556_
                                                            _tl122466122558_))))
                                                   (___kont127769127770_
                                                    ___stx127759127760_))))))
                                       _hd122418122440_
                                       _hd122415122432_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122410122424_ _g122411122427_)))))
                              (let ()
                                (declare (not safe))
                                (_g122410122424_ _g122411122427_)))))
                      (let ()
                        (declare (not safe))
                        (_g122410122424_ _g122411122427_))))))
          (declare (not safe))
          (_g122409122601_ _form122408_))))
    (define gxc#lambda-expr?
      (lambda (_expr122361_)
        (let* ((___stx127787127788_ _expr122361_)
               (_g122364122374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127787127788_)))))
          (let ((___kont127789127790_ (lambda (_L122394_) '#t))
                (___kont127791127792_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127787127788_))
                (let ((_e122369122386_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127787127788_))))
                  (let ((_tl122367122391_
                         (let () (declare (not safe)) (##cdr _e122369122386_)))
                        (_hd122368122389_
                         (let ()
                           (declare (not safe))
                           (##car _e122369122386_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122368122389_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122368122389_))
                            (___kont127789127790_ _tl122367122391_)
                            (___kont127791127792_))
                        (___kont127791127792_))))
                (___kont127791127792_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122314_)
        (let* ((___stx127805127806_ _expr122314_)
               (_g122317122327_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127805127806_)))))
          (let ((___kont127807127808_ (lambda (_L122347_) '#t))
                (___kont127809127810_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127805127806_))
                (let ((_e122322122339_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127805127806_))))
                  (let ((_tl122320122344_
                         (let () (declare (not safe)) (##cdr _e122322122339_)))
                        (_hd122321122342_
                         (let ()
                           (declare (not safe))
                           (##car _e122322122339_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122321122342_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122321122342_))
                            (___kont127807127808_ _tl122320122344_)
                            (___kont127809127810_))
                        (___kont127809127810_))))
                (___kont127809127810_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122183_)
        (let* ((___stx127823127824_ _expr122183_)
               (_g122186122216_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127823127824_)))))
          (let ((___kont127825127826_
                 (lambda (_L122284_ _L122285_ _L122286_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122286_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122285_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122284_))
                           '#f)
                       '#f)))
                (___kont127827127828_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127823127824_))
                (let ((_e122193122228_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127823127824_))))
                  (let ((_tl122191122233_
                         (let () (declare (not safe)) (##cdr _e122193122228_)))
                        (_hd122192122231_
                         (let ()
                           (declare (not safe))
                           (##car _e122193122228_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122192122231_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122192122231_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122191122233_))
                                (let ((_e122196122236_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122191122233_))))
                                  (let ((_tl122194122241_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122196122236_)))
                                        (_hd122195122239_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122196122236_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122195122239_))
                                        (let ((_e122199122244_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122195122239_))))
                                          (let ((_tl122197122249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122199122244_)))
                                                (_hd122198122247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122199122244_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122198122247_))
                                                (let ((_e122202122252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122198122247_))))
                                                  (let ((_tl122200122257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122202122252_)))
                                                        (_hd122201122255_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122202122252_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122201122255_))
                                                        (let ((_e122205122260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122201122255_))))
                  (let ((_tl122203122265_
                         (let () (declare (not safe)) (##cdr _e122205122260_)))
                        (_hd122204122263_
                         (let ()
                           (declare (not safe))
                           (##car _e122205122260_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122203122265_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122200122257_))
                            (let ((_e122208122268_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122200122257_))))
                              (let ((_tl122206122273_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122208122268_)))
                                    (_hd122207122271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122208122268_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122206122273_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122197122249_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122194122241_))
                                            (let ((_e122211122276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122194122241_))))
                                              (let ((_tl122209122281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122211122276_)))
                                                    (_hd122210122279_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122211122276_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122209122281_))
                                                    (___kont127825127826_
                                                     _hd122210122279_
                                                     _hd122207122271_
                                                     _hd122204122263_)
                                                    (___kont127827127828_))))
                                            (___kont127827127828_))
                                        (___kont127827127828_))
                                    (___kont127827127828_))))
                            (___kont127827127828_))
                        (___kont127827127828_))))
                (___kont127827127828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127827127828_))))
                                        (___kont127827127828_))))
                                (___kont127827127828_))
                            (___kont127827127828_))
                        (___kont127827127828_))))
                (___kont127827127828_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121508_)
        (let* ((___stx127885127886_ _expr121508_)
               (_g121511121669_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127885127886_)))))
          (let ((___kont127887127888_
                 (lambda (_L122057_
                          _L122058_
                          _L122059_
                          _L122060_
                          _L122061_
                          _L122062_
                          _L122063_
                          _L122064_
                          _L122065_
                          _L122066_
                          _L122067_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122064_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122060_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122059_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122067_
                                      _L122058_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122066_
                                          _L122063_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122061_
                                              _L122057_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122065_
                                              _L122062_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127889127890_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127885127886_))
                (let ((_e121526121681_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127885127886_))))
                  (let ((_tl121524121686_
                         (let () (declare (not safe)) (##cdr _e121526121681_)))
                        (_hd121525121684_
                         (let ()
                           (declare (not safe))
                           (##car _e121526121681_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121525121684_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121525121684_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121524121686_))
                                (let ((_e121529121689_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121524121686_))))
                                  (let ((_tl121527121694_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121529121689_)))
                                        (_hd121528121692_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121529121689_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121528121692_))
                                        (let ((_e121532121697_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121528121692_))))
                                          (let ((_tl121530121702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121532121697_)))
                                                (_hd121531121700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121532121697_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121531121700_))
                                                (let ((_e121535121705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121531121700_))))
                                                  (let ((_tl121533121710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121535121705_)))
                                                        (_hd121534121708_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121535121705_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121534121708_))
                                                        (let ((_e121538121713_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121534121708_))))
                  (let ((_tl121536121718_
                         (let () (declare (not safe)) (##cdr _e121538121713_)))
                        (_hd121537121716_
                         (let ()
                           (declare (not safe))
                           (##car _e121538121713_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121536121718_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121533121710_))
                            (let ((_e121541121721_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121533121710_))))
                              (let ((_tl121539121726_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121541121721_)))
                                    (_hd121540121724_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121541121721_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121540121724_))
                                    (let ((_e121544121729_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121540121724_))))
                                      (let ((_tl121542121734_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121544121729_)))
                                            (_hd121543121732_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121544121729_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121543121732_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121543121732_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121542121734_))
                                                    (let ((_e121547121737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121542121734_))))
                                                      (let ((_tl121545121742_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121547121737_)))
                    (_hd121546121740_
                     (let () (declare (not safe)) (##car _e121547121737_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121546121740_))
                    (let ((_e121550121745_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121546121740_))))
                      (let ((_tl121548121750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121550121745_)))
                            (_hd121549121748_
                             (let ()
                               (declare (not safe))
                               (##car _e121550121745_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121549121748_))
                            (let ((_e121553121753_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121549121748_))))
                              (let ((_tl121551121758_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121553121753_)))
                                    (_hd121552121756_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121553121753_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121552121756_))
                                    (let ((_e121556121761_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121552121756_))))
                                      (let ((_tl121554121766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121556121761_)))
                                            (_hd121555121764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121556121761_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121554121766_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121551121758_))
                                                (let ((_e121559121769_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121551121758_))))
                                                  (let ((_tl121557121774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121559121769_)))
                                                        (_hd121558121772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121559121769_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121557121774_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121548121750_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121545121742_))
                        (let ((_e121562121777_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121545121742_))))
                          (let ((_tl121560121782_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121562121777_)))
                                (_hd121561121780_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121562121777_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121561121780_))
                                (let ((_e121565121785_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121561121780_))))
                                  (let ((_tl121563121790_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121565121785_)))
                                        (_hd121564121788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121565121785_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121564121788_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121564121788_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121563121790_))
                                                (let ((_e121568121793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121563121790_))))
                                                  (let ((_tl121566121798_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121568121793_)))
                                                        (_hd121567121796_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121568121793_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121567121796_))
                                                        (let ((_e121571121801_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121567121796_))))
                  (let ((_tl121569121806_
                         (let () (declare (not safe)) (##cdr _e121571121801_)))
                        (_hd121570121804_
                         (let ()
                           (declare (not safe))
                           (##car _e121571121801_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121566121798_))
                        (let ((_e121574121809_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121566121798_))))
                          (let ((_tl121572121814_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121574121809_)))
                                (_hd121573121812_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121574121809_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121573121812_))
                                (let ((_e121577121817_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121573121812_))))
                                  (let ((_tl121575121822_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121577121817_)))
                                        (_hd121576121820_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121577121817_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121576121820_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121576121820_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121575121822_))
                                                (let ((_e121580121825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121575121822_))))
                                                  (let ((_tl121578121830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121580121825_)))
                                                        (_hd121579121828_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121580121825_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121579121828_))
                                                        (let ((_e121583121833_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121579121828_))))
                  (let ((_tl121581121838_
                         (let () (declare (not safe)) (##cdr _e121583121833_)))
                        (_hd121582121836_
                         (let ()
                           (declare (not safe))
                           (##car _e121583121833_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121582121836_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121582121836_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121581121838_))
                                (let ((_e121586121841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121581121838_))))
                                  (let ((_tl121584121846_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121586121841_)))
                                        (_hd121585121844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121586121841_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121584121846_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121578121830_))
                                            (let ((_e121589121849_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121578121830_))))
                                              (let ((_tl121587121854_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121589121849_)))
                                                    (_hd121588121852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121589121849_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121588121852_))
                                                    (let ((_e121592121857_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121588121852_))))
                                                      (let ((_tl121590121862_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121592121857_)))
                    (_hd121591121860_
                     (let () (declare (not safe)) (##car _e121592121857_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121591121860_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121591121860_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121590121862_))
                            (let ((_e121595121865_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121590121862_))))
                              (let ((_tl121593121870_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121595121865_)))
                                    (_hd121594121868_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121595121865_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121593121870_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121587121854_))
                                        (let ((_e121598121873_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121587121854_))))
                                          (let ((_tl121596121878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121598121873_)))
                                                (_hd121597121876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121598121873_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121597121876_))
                                                (let ((_e121601121881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121597121876_))))
                                                  (let ((_tl121599121886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121601121881_)))
                                                        (_hd121600121884_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121601121881_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121600121884_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121600121884_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121599121886_))
                        (let ((_e121604121889_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121599121886_))))
                          (let ((_tl121602121894_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121604121889_)))
                                (_hd121603121892_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121604121889_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121602121894_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121572121814_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121560121782_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121539121726_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121530121702_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121527121694_))
                                                    (let ((_e121607121897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121527121694_))))
                                                      (let ((_tl121605121902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121607121897_)))
                    (_hd121606121900_
                     (let () (declare (not safe)) (##car _e121607121897_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121606121900_))
                    (let ((_e121610121905_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121606121900_))))
                      (let ((_tl121608121910_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121610121905_)))
                            (_hd121609121908_
                             (let ()
                               (declare (not safe))
                               (##car _e121610121905_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121609121908_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121609121908_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121608121910_))
                                    (let ((_e121613121913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121608121910_))))
                                      (let ((_tl121611121918_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121613121913_)))
                                            (_hd121612121916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121613121913_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121611121918_))
                                            (let ((_e121616121921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121611121918_))))
                                              (let ((_tl121614121926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121616121921_)))
                                                    (_hd121615121924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121616121921_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121615121924_))
                                                    (let ((_e121619121929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121615121924_))))
                                                      (let ((_tl121617121934_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121619121929_)))
                    (_hd121618121932_
                     (let () (declare (not safe)) (##car _e121619121929_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121618121932_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121618121932_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121617121934_))
                            (let ((_e121622121937_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121617121934_))))
                              (let ((_tl121620121942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121622121937_)))
                                    (_hd121621121940_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121622121937_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121621121940_))
                                    (let ((_e121625121945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121621121940_))))
                                      (let ((_tl121623121950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121625121945_)))
                                            (_hd121624121948_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121625121945_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121624121948_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121624121948_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121623121950_))
                                                    (let ((_e121628121953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121623121950_))))
                                                      (let ((_tl121626121958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121628121953_)))
                    (_hd121627121956_
                     (let () (declare (not safe)) (##car _e121628121953_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121626121958_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121620121942_))
                        (let ((_e121631121961_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121620121942_))))
                          (let ((_tl121629121966_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121631121961_)))
                                (_hd121630121964_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121631121961_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121630121964_))
                                (let ((_e121634121969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121630121964_))))
                                  (let ((_tl121632121974_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121634121969_)))
                                        (_hd121633121972_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121634121969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121633121972_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121633121972_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121632121974_))
                                                (let ((_e121637121977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121632121974_))))
                                                  (let ((_tl121635121982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121637121977_)))
                                                        (_hd121636121980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121637121977_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121635121982_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121629121966_))
                                                            (let ((_e121640121985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121629121966_))))
                      (let ((_tl121638121990_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121640121985_)))
                            (_hd121639121988_
                             (let ()
                               (declare (not safe))
                               (##car _e121640121985_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121639121988_))
                            (let ((_e121643121993_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121639121988_))))
                              (let ((_tl121641121998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121643121993_)))
                                    (_hd121642121996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121643121993_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121642121996_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121642121996_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121641121998_))
                                            (let ((_e121646122001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121641121998_))))
                                              (let ((_tl121644122006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121646122001_)))
                                                    (_hd121645122004_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121646122001_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121644122006_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121638121990_))
                                                        (let ((_e121649122009_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121638121990_))))
                  (let ((_tl121647122014_
                         (let () (declare (not safe)) (##cdr _e121649122009_)))
                        (_hd121648122012_
                         (let ()
                           (declare (not safe))
                           (##car _e121649122009_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121648122012_))
                        (let ((_e121652122017_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121648122012_))))
                          (let ((_tl121650122022_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121652122017_)))
                                (_hd121651122020_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121652122017_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121651122020_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121651122020_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121650122022_))
                                        (let ((_e121655122025_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121650122022_))))
                                          (let ((_tl121653122030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121655122025_)))
                                                (_hd121654122028_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121655122025_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121653122030_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121647122014_))
                                                    (let ((_e121658122033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121647122014_))))
                                                      (let ((_tl121656122038_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121658122033_)))
                    (_hd121657122036_
                     (let () (declare (not safe)) (##car _e121658122033_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121657122036_))
                    (let ((_e121661122041_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121657122036_))))
                      (let ((_tl121659122046_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121661122041_)))
                            (_hd121660122044_
                             (let ()
                               (declare (not safe))
                               (##car _e121661122041_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121660122044_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121660122044_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121659122046_))
                                    (let ((_e121664122049_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121659122046_))))
                                      (let ((_tl121662122054_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121664122049_)))
                                            (_hd121663122052_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121664122049_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121662122054_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121656122038_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121614121926_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121605121902_))
                                                        (___kont127887127888_
                                                         _hd121663122052_
                                                         _hd121654122028_
                                                         _hd121636121980_
                                                         _hd121627121956_
                                                         _hd121612121916_
                                                         _hd121603121892_
                                                         _hd121594121868_
                                                         _hd121585121844_
                                                         _hd121570121804_
                                                         _hd121555121764_
                                                         _hd121537121716_)
                                                        (___kont127889127890_))
                                                    (___kont127889127890_))
                                                (___kont127889127890_))
                                            (___kont127889127890_))))
                                    (___kont127889127890_))
                                (___kont127889127890_))
                            (___kont127889127890_))))
                    (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))
                                                (___kont127889127890_))))
                                        (___kont127889127890_))
                                    (___kont127889127890_))
                                (___kont127889127890_))))
                        (___kont127889127890_))))
                (___kont127889127890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))))
                                            (___kont127889127890_))
                                        (___kont127889127890_))
                                    (___kont127889127890_))))
                            (___kont127889127890_))))
                    (___kont127889127890_))
                (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127889127890_))
                                            (___kont127889127890_))
                                        (___kont127889127890_))))
                                (___kont127889127890_))))
                        (___kont127889127890_))
                    (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))
                                                (___kont127889127890_))
                                            (___kont127889127890_))))
                                    (___kont127889127890_))))
                            (___kont127889127890_))
                        (___kont127889127890_))
                    (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))))
                                            (___kont127889127890_))))
                                    (___kont127889127890_))
                                (___kont127889127890_))
                            (___kont127889127890_))))
                    (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))
                                                (___kont127889127890_))
                                            (___kont127889127890_))
                                        (___kont127889127890_))
                                    (___kont127889127890_))
                                (___kont127889127890_))))
                        (___kont127889127890_))
                    (___kont127889127890_))
                (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127889127890_))))
                                        (___kont127889127890_))
                                    (___kont127889127890_))))
                            (___kont127889127890_))
                        (___kont127889127890_))
                    (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))))
                                            (___kont127889127890_))
                                        (___kont127889127890_))))
                                (___kont127889127890_))
                            (___kont127889127890_))
                        (___kont127889127890_))))
                (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127889127890_))
                                            (___kont127889127890_))
                                        (___kont127889127890_))))
                                (___kont127889127890_))))
                        (___kont127889127890_))))
                (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127889127890_))
                                            (___kont127889127890_))
                                        (___kont127889127890_))))
                                (___kont127889127890_))))
                        (___kont127889127890_))
                    (___kont127889127890_))
                (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127889127890_))
                                            (___kont127889127890_))))
                                    (___kont127889127890_))))
                            (___kont127889127890_))))
                    (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127889127890_))
                                                (___kont127889127890_))
                                            (___kont127889127890_))))
                                    (___kont127889127890_))))
                            (___kont127889127890_))
                        (___kont127889127890_))))
                (___kont127889127890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127889127890_))))
                                        (___kont127889127890_))))
                                (___kont127889127890_))
                            (___kont127889127890_))
                        (___kont127889127890_))))
                (___kont127889127890_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121250_ _id121251_ _clauses121252_ _gensym?121253_)
        (let _lp121255_ ((_rest121257_ _clauses121252_)
                         (_ids121258_ '())
                         (_impls121259_ '())
                         (_clauses121260_ '()))
          (let* ((_rest121261121269_ _rest121257_)
                 (_else121263121277_
                  (lambda ()
                    (values (reverse _ids121258_)
                            (reverse _impls121259_)
                            (reverse _clauses121260_))))
                 (_K121265121482_
                  (lambda (_rest121280_ _clause121281_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121281_))
                        (let ((__tmp128964
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121281_ _clauses121260_))))
                          (declare (not safe))
                          (_lp121255_
                           _rest121280_
                           _ids121258_
                           _impls121259_
                           __tmp128964))
                        (let* ((_g121283121294_
                                (lambda (_g121284121291_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121284121291_))))
                               (_g121282121479_
                                (lambda (_g121284121297_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121284121297_))
                                      (let ((_e121289121299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121284121297_))))
                                        (let ((_hd121288121302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121289121299_)))
                                              (_tl121287121304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121289121299_))))
                                          ((lambda (_L121307_ _L121308_)
                                             (let* ((_id121325_
                                                     (let ((__tmp128911
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121251_)))
                                                           (__tmp128910
                                                            (length _clauses121260_))
                                                           (__tmp128909
                                                            (if _gensym?121253_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128911
                                                        '"__"
                                                        __tmp128910
                                                        __tmp128909)))
                                                    (_id121327_
                                                     (let ((__tmp128912
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121250_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121325_
                                                        __tmp128912)))
                                                    (_impl121329_
                                                     (let ((__tmp128913
                                                            (let ((__tmp128915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128914
                           (let ()
                             (declare (not safe))
                             (cons _L121308_ _L121307_))))
                      (declare (not safe))
                      (cons __tmp128915 __tmp128914))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128913 _stx121250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121476_
                                                     (let* ((___stx128269128270_
                                                             _L121308_)
                                                            (_g121333121361_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128269128270_)))))
               (let ((___kont128271128272_
                      (lambda (_L121455_)
                        (let ((__tmp128916
                               (let ((__tmp128917
                                      (let ((__tmp128918
                                             (let ((__tmp128919
                                                    (let ((__tmp128925
                                                           (let ((__tmp128926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121327_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128926)))
                  (__tmp128920
                   (let ((__tmp128921
                          (lambda (_g121465121468_ _g121466121470_)
                            (let ((__tmp128922
                                   (let ((__tmp128924
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128923
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121465121468_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128924 __tmp128923))))
                              (declare (not safe))
                              (cons __tmp128922 _g121466121470_)))))
                     (declare (not safe))
                     (foldr1 __tmp128921 '() _L121455_))))
              (declare (not safe))
              (cons __tmp128925 __tmp128920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128919))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128918
                                         _stx121250_))))
                                 (declare (not safe))
                                 (cons __tmp128917 '()))))
                          (declare (not safe))
                          (cons _L121308_ __tmp128916))))
                     (___kont128275128276_
                      (lambda (_L121406_ _L121407_)
                        (let ((__tmp128927
                               (let ((__tmp128928
                                      (let ((__tmp128929
                                             (let ((__tmp128930
                                                    (let ((__tmp128944
                                                           (let ((__tmp128945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128945)))
                  (__tmp128931
                   (let ((__tmp128942
                          (let ((__tmp128943
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121327_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128943)))
                         (__tmp128932
                          (let ((__tmp128938
                                 (let ((__tmp128939
                                        (let ((__tmp128941
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128940
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121406_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128941 __tmp128940))))
                                   (declare (not safe))
                                   (cons __tmp128939 '())))
                                (__tmp128933
                                 (let ((__tmp128934
                                        (lambda (_g121418121421_
                                                 _g121419121423_)
                                          (let ((__tmp128935
                                                 (let ((__tmp128937
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128936
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121418121421_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128937
                                                         __tmp128936))))
                                            (declare (not safe))
                                            (cons __tmp128935
                                                  _g121419121423_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128934 '() _L121407_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128938 __tmp128933))))
                     (declare (not safe))
                     (cons __tmp128942 __tmp128932))))
              (declare (not safe))
              (cons __tmp128944 __tmp128931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128930))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128929
                                         _stx121250_))))
                                 (declare (not safe))
                                 (cons __tmp128928 '()))))
                          (declare (not safe))
                          (cons _L121308_ __tmp128927))))
                     (___kont128279128280_
                      (lambda (_L121366_)
                        (let ((__tmp128946
                               (let ((__tmp128947
                                      (let ((__tmp128948
                                             (let ((__tmp128949
                                                    (let ((__tmp128957
                                                           (let ((__tmp128958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128958)))
                  (__tmp128950
                   (let ((__tmp128955
                          (let ((__tmp128956
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121327_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128956)))
                         (__tmp128951
                          (let ((__tmp128952
                                 (let ((__tmp128954
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128953
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121366_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128954 __tmp128953))))
                            (declare (not safe))
                            (cons __tmp128952 '()))))
                     (declare (not safe))
                     (cons __tmp128955 __tmp128951))))
              (declare (not safe))
              (cons __tmp128957 __tmp128950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128949))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128948
                                         _stx121250_))))
                                 (declare (not safe))
                                 (cons __tmp128947 '()))))
                          (declare (not safe))
                          (cons _L121308_ __tmp128946)))))
                 (let* ((___match128294128295_
                         (lambda (___splice128277128278_
                                  _target121347121382_
                                  _tl121349121384_)
                           (letrec ((_loop121350121387_
                                     (lambda (_hd121348121390_
                                              _arg121354121392_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121348121390_))
                                           (let ((_e121351121395_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121348121390_))))
                                             (let ((_lp-tl121353121400_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121351121395_)))
                                                   (_lp-hd121352121398_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121351121395_))))
                                               (let ((__tmp128959
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121352121398_
                                                              _arg121354121392_))))
                                                 (declare (not safe))
                                                 (_loop121350121387_
                                                  _lp-tl121353121400_
                                                  __tmp128959))))
                                           (let ((_arg121355121403_
                                                  (reverse _arg121354121392_)))
                                             (___kont128275128276_
                                              _tl121349121384_
                                              _arg121355121403_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121350121387_
                                _target121347121382_
                                '())))))
                        (___match128288128289_
                         (lambda (___splice128273128274_
                                  _target121336121431_
                                  _tl121338121433_)
                           (letrec ((_loop121339121436_
                                     (lambda (_hd121337121439_
                                              _arg121343121441_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121337121439_))
                                           (let ((_e121340121444_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121337121439_))))
                                             (let ((_lp-tl121342121449_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121340121444_)))
                                                   (_lp-hd121341121447_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121340121444_))))
                                               (let ((__tmp128960
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121341121447_
                                                              _arg121343121441_))))
                                                 (declare (not safe))
                                                 (_loop121339121436_
                                                  _lp-tl121342121449_
                                                  __tmp128960))))
                                           (let ((_arg121344121452_
                                                  (reverse _arg121343121441_)))
                                             (___kont128271128272_
                                              _arg121344121452_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121339121436_
                                _target121336121431_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128269128270_))
                       (let ((___splice128273128274_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128269128270_
                                 '0))))
                         (let ((_tl121338121433_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128273128274_ '1)))
                               (_target121336121431_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128273128274_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121338121433_))
                               (___match128288128289_
                                ___splice128273128274_
                                _target121336121431_
                                _tl121338121433_)
                               (___match128294128295_
                                ___splice128273128274_
                                _target121336121431_
                                _tl121338121433_))))
                       (___kont128279128280_ ___stx128269128270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128963
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121327_
                                                              _ids121258_)))
                                                     (__tmp128962
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121329_
                                                              _impls121259_)))
                                                     (__tmp128961
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121476_
                                                              _clauses121260_))))
                                                 (declare (not safe))
                                                 (_lp121255_
                                                  _rest121280_
                                                  __tmp128963
                                                  __tmp128962
                                                  __tmp128961))))
                                           _tl121287121304_
                                           _hd121288121302_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121283121294_ _g121284121297_))))))
                          (declare (not safe))
                          (_g121282121479_ _clause121281_))))))
            (if (let () (declare (not safe)) (##pair? _rest121261121269_))
                (let ((_hd121266121485_
                       (let ()
                         (declare (not safe))
                         (##car _rest121261121269_)))
                      (_tl121267121487_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121261121269_))))
                  (let* ((_clause121490_ _hd121266121485_)
                         (_rest121492_ _tl121267121487_))
                    (declare (not safe))
                    (_K121265121482_ _rest121492_ _clause121490_)))
                (let () (declare (not safe)) (_else121263121277_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121497_ _id121498_ _clauses121499_)
        (let ((_gensym?121501_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121497_
           _id121498_
           _clauses121499_
           _gensym?121501_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128966_
        (let ((_g128965_ (let () (declare (not safe)) (##length _g128966_))))
          (cond ((let () (declare (not safe)) (##fx= _g128965_ 3))
                 (apply (lambda (_stx121497_ _id121498_ _clauses121499_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121497_
                             _id121498_
                             _clauses121499_)))
                        _g128966_))
                ((let () (declare (not safe)) (##fx= _g128965_ 4))
                 (apply (lambda (_stx121503_
                                 _id121504_
                                 _clauses121505_
                                 _gensym?121506_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121503_
                             _id121504_
                             _clauses121505_
                             _gensym?121506_)))
                        _g128966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128966_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120527_)
        (letrec ((_case-lambda-clause-def120529_
                  (lambda (_id121246_ _impl121247_)
                    (let ((__tmp128967
                           (let ((__tmp128968
                                  (let ((__tmp128971
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121246_ '())))
                                        (__tmp128969
                                         (let ((__tmp128970
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl121247_))))
                                           (declare (not safe))
                                           (cons __tmp128970 '()))))
                                    (declare (not safe))
                                    (cons __tmp128971 __tmp128969))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128968))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128967 _stx120527_))))
                 (_opt-lambda-dispatch-name120530_
                  (lambda (_id121242_)
                    (if (uninterned-symbol? _id121242_)
                        (let ((_str121244_ (symbol->string _id121242_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121244_))
                              '"%"
                              _id121242_))
                        _id121242_)))
                 (_kw-lambda-dispatch-name120531_
                  (lambda (_id121237_ _name121238_)
                    (if (uninterned-symbol? _id121237_)
                        (let ((_str121240_ (symbol->string _id121237_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121240_))
                              _name121238_
                              _id121237_))
                        _id121237_))))
          (let* ((___stx128317128318_ _stx120527_)
                 (_g120536120595_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128317128318_)))))
            (let ((___kont128319128320_
                   (lambda (_L121146_ _L121147_)
                     (let* ((___stx128297128298_ _L121146_)
                            (_g121164121178_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128297128298_)))))
                       (let ((___kont128299128300_
                              (lambda (_L121222_) _stx120527_))
                             (___kont128301128302_
                              (lambda (_L121191_)
                                (let ((_g128972_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120527_
                                          _L121147_
                                          _L121191_))))
                                  (begin
                                    (let ((_g128973_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128972_)
                                                 (##vector-length _g128972_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128973_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128973_)))
                                    (let ((_ids121201_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128972_ 0)))
                                          (_impls121202_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128972_ 1)))
                                          (_clauses121203_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128972_ 2))))
                                      (let* ((_g128974_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121201_))
                                             (_defs121206_
                                              (map _case-lambda-clause-def120529_
                                                   _ids121201_
                                                   _impls121202_)))
                                        (let ((__tmp128976
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121147_)))
                                              (__tmp128975
                                               (map gxc#identifier-symbol
                                                    _ids121201_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128976
                                           '" => "
                                           __tmp128975))
                                        (let ((__tmp128977
                                               (let ((__tmp128978
                                                      (let ((__tmp128979
                                                             (let ((__tmp128980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128981
                                   (let ((__tmp128982
                                          (let ((__tmp128987
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121147_ '())))
                                                (__tmp128983
                                                 (let ((__tmp128984
                                                        (let ((__tmp128986
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121203_)))
                      (__tmp128985
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128986 __tmp128985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128984 '()))))
                                            (declare (not safe))
                                            (cons __tmp128987 __tmp128983))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128982))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128981
                               _stx120527_))))
                       (declare (not safe))
                       (cons __tmp128980 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128979 _defs121206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128978))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128977
                                           _stx120527_)))))))))
                         (let ((___match128308128309_
                                (lambda (_e121169121214_
                                         _hd121168121217_
                                         _tl121167121219_)
                                  (let ((_L121222_ _tl121167121219_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121222_))
                                        (___kont128299128300_ _L121222_)
                                        (___kont128301128302_
                                         _tl121167121219_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128297128298_))
                               (let ((_e121169121214_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128297128298_))))
                                 (let ((_tl121167121219_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121169121214_)))
                                       (_hd121168121217_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121169121214_))))
                                   (___match128308128309_
                                    _e121169121214_
                                    _hd121168121217_
                                    _tl121167121219_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121164121178_))))))))
                  (___kont128321128322_
                   (lambda (_L120964_ _L120965_)
                     (let* ((_g120981121011_
                             (lambda (_g120982121008_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120982121008_))))
                            (_g120980121106_
                             (lambda (_g120982121014_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120982121014_))
                                   (let ((_e120988121016_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120982121014_))))
                                     (let ((_hd120987121019_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120988121016_)))
                                           (_tl120986121021_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120988121016_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120986121021_))
                                           (let ((_e120991121024_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120986121021_))))
                                             (let ((_hd120990121027_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120991121024_)))
                                                   (_tl120989121029_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120991121024_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120990121027_))
                                                   (let ((_e120994121032_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120990121027_))))
                                                     (let ((_hd120993121035_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120994121032_)))
                                                           (_tl120992121037_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120994121032_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120993121035_))
                                                           (let ((_e120997121040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120993121035_))))
                     (let ((_hd120996121043_
                            (let ()
                              (declare (not safe))
                              (##car _e120997121040_)))
                           (_tl120995121045_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120997121040_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120996121043_))
                           (let ((_e121000121048_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120996121043_))))
                             (let ((_hd120999121051_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121000121048_)))
                                   (_tl120998121053_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121000121048_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120998121053_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120995121045_))
                                       (let ((_e121003121056_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120995121045_))))
                                         (let ((_hd121002121059_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121003121056_)))
                                               (_tl121001121061_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121003121056_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121001121061_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120992121037_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120989121029_))
                                                       (let ((_e121006121064_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120989121029_))))
                 (let ((_hd121005121067_
                        (let () (declare (not safe)) (##car _e121006121064_)))
                       (_tl121004121069_
                        (let () (declare (not safe)) (##cdr _e121006121064_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121004121069_))
                       ((lambda (_L121072_ _L121073_ _L121074_)
                          (let* ((_lambda-id121098_
                                  (let ((__tmp128990
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120965_)))
                                        (__tmp128988
                                         (let ((__tmp128989
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121074_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120530_
                                            __tmp128989))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128990
                                     '"__"
                                     __tmp128988)))
                                 (_lambda-id121100_
                                  (let ((__tmp128991
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120527_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121098_
                                     __tmp128991)))
                                 (_g128992_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121100_)))
                                 (_new-case-lambda-expr121103_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121072_
                                     _L121074_
                                     _lambda-id121100_))))
                            (let ((__tmp128994
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120965_)))
                                  (__tmp128993
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121100_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp128994
                               '" => "
                               __tmp128993))
                            (let ((__tmp128995
                                   (let ((__tmp128996
                                          (let ((__tmp129004
                                                 (let ((__tmp129005
                                                        (let ((__tmp129006
                                                               (let ((__tmp129009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121100_ '())))
                             (__tmp129007
                              (let ((__tmp129008
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L121073_))))
                                (declare (not safe))
                                (cons __tmp129008 '()))))
                         (declare (not safe))
                         (cons __tmp129009 __tmp129007))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129005
                                                    _stx120527_)))
                                                (__tmp128997
                                                 (let ((__tmp128998
                                                        (let ((__tmp128999
                                                               (let ((__tmp129000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129001
                                     (let ((__tmp129003
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120965_ '())))
                                           (__tmp129002
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121103_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129003 __tmp129002))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129001))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129000 _stx120527_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp128999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128998 '()))))
                                            (declare (not safe))
                                            (cons __tmp129004 __tmp128997))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp128996))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128995
                               _stx120527_))))
                        _hd121005121067_
                        _hd121002121059_
                        _hd120999121051_)
                       (let ()
                         (declare (not safe))
                         (_g120981121011_ _g120982121014_)))))
               (let () (declare (not safe)) (_g120981121011_ _g120982121014_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120981121011_
                                                      _g120982121014_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120981121011_
                                                  _g120982121014_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120981121011_ _g120982121014_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120981121011_ _g120982121014_)))))
                           (let ()
                             (declare (not safe))
                             (_g120981121011_ _g120982121014_)))))
                   (let ()
                     (declare (not safe))
                     (_g120981121011_ _g120982121014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120981121011_
                                                      _g120982121014_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120981121011_
                                              _g120982121014_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120981121011_ _g120982121014_))))))
                       (declare (not safe))
                       (_g120980121106_ _L120964_))))
                  (___kont128323128324_
                   (lambda (_L120678_ _L120679_)
                     (let* ((_g120695120748_
                             (lambda (_g120696120745_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120696120745_))))
                            (_g120694120924_
                             (lambda (_g120696120751_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120696120751_))
                                   (let ((_e120704120753_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120696120751_))))
                                     (let ((_hd120703120756_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120704120753_)))
                                           (_tl120702120758_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120704120753_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120702120758_))
                                           (let ((_e120707120761_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120702120758_))))
                                             (let ((_hd120706120764_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120707120761_)))
                                                   (_tl120705120766_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120707120761_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120706120764_))
                                                   (let ((_e120710120769_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120706120764_))))
                                                     (let ((_hd120709120772_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120710120769_)))
                                                           (_tl120708120774_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120710120769_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120709120772_))
                                                           (let ((_e120713120777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120709120772_))))
                     (let ((_hd120712120780_
                            (let ()
                              (declare (not safe))
                              (##car _e120713120777_)))
                           (_tl120711120782_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120713120777_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120712120780_))
                           (let ((_e120716120785_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120712120780_))))
                             (let ((_hd120715120788_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120716120785_)))
                                   (_tl120714120790_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120716120785_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120714120790_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120711120782_))
                                       (let ((_e120719120793_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120711120782_))))
                                         (let ((_hd120718120796_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120719120793_)))
                                               (_tl120717120798_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120719120793_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120718120796_))
                                               (let ((_e120722120801_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120718120796_))))
                                                 (let ((_hd120721120804_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120722120801_)))
                                                       (_tl120720120806_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120722120801_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120720120806_))
                                                       (let ((_e120725120809_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120720120806_))))
                 (let ((_hd120724120812_
                        (let () (declare (not safe)) (##car _e120725120809_)))
                       (_tl120723120814_
                        (let () (declare (not safe)) (##cdr _e120725120809_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120724120812_))
                       (let ((_e120728120817_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120724120812_))))
                         (let ((_hd120727120820_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120728120817_)))
                               (_tl120726120822_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120728120817_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120727120820_))
                               (let ((_e120731120825_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120727120820_))))
                                 (let ((_hd120730120828_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120731120825_)))
                                       (_tl120729120830_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120731120825_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120730120828_))
                                       (let ((_e120734120833_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120730120828_))))
                                         (let ((_hd120733120836_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120734120833_)))
                                               (_tl120732120838_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120734120833_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120732120838_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120729120830_))
                                                   (let ((_e120737120841_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120729120830_))))
                                                     (let ((_hd120736120844_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120737120841_)))
                                                           (_tl120735120846_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120737120841_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120735120846_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120726120822_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120723120814_))
                           (let ((_e120740120849_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120723120814_))))
                             (let ((_hd120739120852_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120740120849_)))
                                   (_tl120738120854_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120740120849_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120738120854_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120717120798_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120708120774_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120705120766_))
                                               (let ((_e120743120857_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120705120766_))))
                                                 (let ((_hd120742120860_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120743120857_)))
                                                       (_tl120741120862_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120743120857_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120741120862_))
                                                       ((lambda (_L120865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120866_
                         _L120867_
                         _L120868_
                         _L120869_)
                  (let* ((_get-kws-id120909_
                          (let ((__tmp129012
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120679_)))
                                (__tmp129010
                                 (let ((__tmp129011
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120869_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120531_
                                    __tmp129011
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129012 '"__" __tmp129010)))
                         (_get-kws-id120911_
                          (let ((__tmp129013
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120527_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120909_
                             __tmp129013)))
                         (_main-id120913_
                          (let ((__tmp129016
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120679_)))
                                (__tmp129014
                                 (let ((__tmp129015
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120868_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120531_
                                    __tmp129015
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129016 '"__" __tmp129014)))
                         (_main-id120915_
                          (let ((__tmp129017
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120527_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120913_
                             __tmp129017)))
                         (_g129018_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120911_)))
                         (_g129019_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120915_)))
                         (_new-kw-dispatch120919_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120865_
                             _L120869_
                             _get-kws-id120911_)))
                         (_new-get-kws120921_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120866_
                             _L120868_
                             _main-id120915_))))
                    (let ((__tmp129022
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120679_)))
                          (__tmp129021
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120911_)))
                          (__tmp129020
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120915_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129022
                       '" => "
                       __tmp129021
                       '" => "
                       __tmp129020))
                    (let ((__tmp129023
                           (let ((__tmp129024
                                  (let ((__tmp129037
                                         (let ((__tmp129038
                                                (let ((__tmp129039
                                                       (let ((__tmp129040
                                                              (let ((__tmp129042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120915_ '())))
                            (__tmp129041
                             (let ()
                               (declare (not safe))
                               (cons _L120867_ '()))))
                        (declare (not safe))
                        (cons __tmp129042 __tmp129041))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129039
                                                   _stx120527_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp129038)))
                                        (__tmp129025
                                         (let ((__tmp129032
                                                (let ((__tmp129033
                                                       (let ((__tmp129034
                                                              (let ((__tmp129036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120911_ '())))
                            (__tmp129035
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120921_ '()))))
                        (declare (not safe))
                        (cons __tmp129036 __tmp129035))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129033
                                                   _stx120527_)))
                                               (__tmp129026
                                                (let ((__tmp129027
                                                       (let ((__tmp129028
                                                              (let ((__tmp129029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129031
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120679_ '())))
                                   (__tmp129030
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120919_ '()))))
                               (declare (not safe))
                               (cons __tmp129031 __tmp129030))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129029))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129028 _stx120527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129027 '()))))
                                           (declare (not safe))
                                           (cons __tmp129032 __tmp129026))))
                                    (declare (not safe))
                                    (cons __tmp129037 __tmp129025))))
                             (declare (not safe))
                             (cons '%#begin __tmp129024))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129023 _stx120527_))))
                _hd120742120860_
                _hd120739120852_
                _hd120736120844_
                _hd120733120836_
                _hd120715120788_)
               (let ()
                 (declare (not safe))
                 (_g120695120748_ _g120696120751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120695120748_
                                                  _g120696120751_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120695120748_
                                              _g120696120751_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120695120748_ _g120696120751_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120695120748_ _g120696120751_)))))
                           (let ()
                             (declare (not safe))
                             (_g120695120748_ _g120696120751_)))
                       (let ()
                         (declare (not safe))
                         (_g120695120748_ _g120696120751_)))
                   (let ()
                     (declare (not safe))
                     (_g120695120748_ _g120696120751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120695120748_
                                                      _g120696120751_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120695120748_
                                                  _g120696120751_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120695120748_ _g120696120751_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120695120748_ _g120696120751_)))))
                       (let ()
                         (declare (not safe))
                         (_g120695120748_ _g120696120751_)))))
               (let ()
                 (declare (not safe))
                 (_g120695120748_ _g120696120751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120695120748_
                                                  _g120696120751_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120695120748_ _g120696120751_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120695120748_ _g120696120751_)))))
                           (let ()
                             (declare (not safe))
                             (_g120695120748_ _g120696120751_)))))
                   (let ()
                     (declare (not safe))
                     (_g120695120748_ _g120696120751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120695120748_
                                                      _g120696120751_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120695120748_
                                              _g120696120751_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120695120748_ _g120696120751_))))))
                       (declare (not safe))
                       (_g120694120924_ _L120678_))))
                  (___kont128325128326_
                   (lambda (_L120624_ _L120625_)
                     (let ((__tmp129043
                            (let ((__tmp129044
                                   (let ((__tmp129045
                                          (let ((__tmp129046
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120624_))))
                                            (declare (not safe))
                                            (cons __tmp129046 '()))))
                                     (declare (not safe))
                                     (cons _L120625_ __tmp129045))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129044))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129043 _stx120527_)))))
              (let* ((___match128410128411_
                      (lambda (_e120570120646_
                               _hd120569120649_
                               _tl120568120651_
                               _e120573120654_
                               _hd120572120657_
                               _tl120571120659_
                               _e120576120662_
                               _hd120575120665_
                               _tl120574120667_
                               _e120579120670_
                               _hd120578120673_
                               _tl120577120675_)
                        (let ((_L120678_ _hd120578120673_)
                              (_L120679_ _hd120575120665_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120679_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120678_)))
                              (___kont128323128324_ _L120678_ _L120679_)
                              (___kont128325128326_
                               _hd120578120673_
                               _hd120572120657_)))))
                     (___match128382128383_
                      (lambda (_e120556120932_
                               _hd120555120935_
                               _tl120554120937_
                               _e120559120940_
                               _hd120558120943_
                               _tl120557120945_
                               _e120562120948_
                               _hd120561120951_
                               _tl120560120953_
                               _e120565120956_
                               _hd120564120959_
                               _tl120563120961_)
                        (let ((_L120964_ _hd120564120959_)
                              (_L120965_ _hd120561120951_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120965_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120964_)))
                              (___kont128321128322_ _L120964_ _L120965_)
                              (___match128410128411_
                               _e120556120932_
                               _hd120555120935_
                               _tl120554120937_
                               _e120559120940_
                               _hd120558120943_
                               _tl120557120945_
                               _e120562120948_
                               _hd120561120951_
                               _tl120560120953_
                               _e120565120956_
                               _hd120564120959_
                               _tl120563120961_)))))
                     (___match128354128355_
                      (lambda (_e120542121114_
                               _hd120541121117_
                               _tl120540121119_
                               _e120545121122_
                               _hd120544121125_
                               _tl120543121127_
                               _e120548121130_
                               _hd120547121133_
                               _tl120546121135_
                               _e120551121138_
                               _hd120550121141_
                               _tl120549121143_)
                        (let ((_L121146_ _hd120550121141_)
                              (_L121147_ _hd120547121133_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121147_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121146_)))
                              (___kont128319128320_ _L121146_ _L121147_)
                              (___match128382128383_
                               _e120542121114_
                               _hd120541121117_
                               _tl120540121119_
                               _e120545121122_
                               _hd120544121125_
                               _tl120543121127_
                               _e120548121130_
                               _hd120547121133_
                               _tl120546121135_
                               _e120551121138_
                               _hd120550121141_
                               _tl120549121143_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128317128318_))
                    (let ((_e120542121114_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128317128318_))))
                      (let ((_tl120540121119_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120542121114_)))
                            (_hd120541121117_
                             (let ()
                               (declare (not safe))
                               (##car _e120542121114_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120540121119_))
                            (let ((_e120545121122_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120540121119_))))
                              (let ((_tl120543121127_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120545121122_)))
                                    (_hd120544121125_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120545121122_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120544121125_))
                                    (let ((_e120548121130_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120544121125_))))
                                      (let ((_tl120546121135_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120548121130_)))
                                            (_hd120547121133_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120548121130_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120546121135_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120543121127_))
                                                (let ((_e120551121138_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120543121127_))))
                                                  (let ((_tl120549121143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120551121138_)))
                                                        (_hd120550121141_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120551121138_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120549121143_))
                                                        (___match128354128355_
                                                         _e120542121114_
                                                         _hd120541121117_
                                                         _tl120540121119_
                                                         _e120545121122_
                                                         _hd120544121125_
                                                         _tl120543121127_
                                                         _e120548121130_
                                                         _hd120547121133_
                                                         _tl120546121135_
                                                         _e120551121138_
                                                         _hd120550121141_
                                                         _tl120549121143_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120536120595_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120536120595_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120543121127_))
                                                (let ((_e120590120616_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120543121127_))))
                                                  (let ((_tl120588120621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120590120616_)))
                                                        (_hd120589120619_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120590120616_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120588120621_))
                                                        (___kont128325128326_
                                                         _hd120589120619_
                                                         _hd120544121125_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120536120595_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120536120595_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120543121127_))
                                        (let ((_e120590120616_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120543121127_))))
                                          (let ((_tl120588120621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120590120616_)))
                                                (_hd120589120619_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120590120616_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120588120621_))
                                                (___kont128325128326_
                                                 _hd120589120619_
                                                 _hd120544121125_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120536120595_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120536120595_))))))
                            (let () (declare (not safe)) (_g120536120595_)))))
                    (let () (declare (not safe)) (_g120536120595_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119459_)
        (letrec* ((_bind-e__126713126714_
                   (lambda (_id120511_ _expr120512_ _compile?120513_)
                     (let ((__tmp129049
                            (let ()
                              (declare (not safe))
                              (cons _id120511_ '())))
                           (__tmp129047
                            (let ((__tmp129048
                                   (if _compile?120513_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120512_))
                                       _expr120512_)))
                              (declare (not safe))
                              (cons __tmp129048 '()))))
                       (declare (not safe))
                       (cons __tmp129049 __tmp129047))))
                  (_bind-e__0__126715126716_
                   (lambda (_id120518_ _expr120519_)
                     (let ((_compile?120521_ '#t))
                       (declare (not safe))
                       (_bind-e__126713126714_
                        _id120518_
                        _expr120519_
                        _compile?120521_))))
                  (_bind-e119461_
                   (lambda _g129051_
                     (let ((_g129050_
                            (let ()
                              (declare (not safe))
                              (##length _g129051_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129050_ 2))
                              (apply (lambda (_id120518_ _expr120519_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126715126716_
                                          _id120518_
                                          _expr120519_)))
                                     _g129051_))
                             ((let () (declare (not safe)) (##fx= _g129050_ 3))
                              (apply (lambda (_id120523_
                                              _expr120524_
                                              _compile?120525_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126713126714_
                                          _id120523_
                                          _expr120524_
                                          _compile?120525_)))
                                     _g129051_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129051_))))))
                  (_compile-bindings119462_
                   (lambda (_bindings120095_)
                     (let _lp120097_ ((_rest120099_ _bindings120095_)
                                      (_lift1120100_ '())
                                      (_lift2120101_ '())
                                      (_bind120102_ '()))
                       (let* ((_rest120103120111_ _rest120099_)
                              (_else120105120119_
                               (lambda ()
                                 (values (reverse _lift1120100_)
                                         (reverse _lift2120101_)
                                         (reverse _bind120102_))))
                              (_K120107120498_
                               (lambda (_rest120122_ _hd120123_)
                                 (let* ((___stx128453128454_ _hd120123_)
                                        (_g120127120163_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128453128454_)))))
                                   (let ((___kont128455128456_
                                          (lambda (_L120405_ _L120406_)
                                            (let* ((___stx128433128434_
                                                    _L120405_)
                                                   (_g120421120435_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128433128434_)))))
                                              (let ((___kont128435128436_
                                                     (lambda (_L120483_)
                                                       (let ((__tmp129052
                                                              (let ((__tmp129053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126713126714_
                                _L120406_
                                _L120405_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129053 _bind120102_))))
                 (declare (not safe))
                 (_lp120097_
                  _rest120122_
                  _lift1120100_
                  _lift2120101_
                  __tmp129052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128437128438_
                                                     (lambda (_L120448_)
                                                       (let ((_g129054_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119459_
                         _L120406_
                         _L120448_
                         '#t))))
                 (begin
                   (let ((_g129055_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129054_)
                                (##vector-length _g129054_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129055_ 3)))
                         (error "Context expects 3 values" _g129055_)))
                   (let ((_ids120458_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129054_ 0)))
                         (_impls120459_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129054_ 1)))
                         (_clauses120460_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129054_ 2))))
                     (let* ((_g129056_
                             (for-each gx#core-bind-runtime! _ids120458_))
                            (_xbind120463_
                             (map _bind-e119461_ _ids120458_ _impls120459_))
                            (_expr*120465_
                             (let ((__tmp129058
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120460_)))
                                   (__tmp129057
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129058
                                __tmp129057)))
                            (_bind*120467_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126713126714_
                                _L120406_
                                _expr*120465_
                                '#f))))
                       (let ((__tmp129060
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120406_)))
                             (__tmp129059
                              (map gxc#identifier-symbol _ids120458_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129060
                          '" => "
                          __tmp129059))
                       (let ((__tmp129062
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120101_ _xbind120463_)))
                             (__tmp129061
                              (let ()
                                (declare (not safe))
                                (cons _bind*120467_ _bind120102_))))
                         (declare (not safe))
                         (_lp120097_
                          _rest120122_
                          _lift1120100_
                          __tmp129062
                          __tmp129061)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128444128445_
                                                       (lambda (_e120426120475_
                                                                _hd120425120478_
                                                                _tl120424120480_)
                                                         (let ((_L120483_
                                                                _tl120424120480_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120483_))
                       (___kont128435128436_ _L120483_)
                       (___kont128437128438_ _tl120424120480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128433128434_))
                                                      (let ((_e120426120475_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128433128434_))))
                (let ((_tl120424120480_
                       (let () (declare (not safe)) (##cdr _e120426120475_)))
                      (_hd120425120478_
                       (let () (declare (not safe)) (##car _e120426120475_))))
                  (___match128444128445_
                   _e120426120475_
                   _hd120425120478_
                   _tl120424120480_)))
              (let () (declare (not safe)) (_g120421120435_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128457128458_
                                          (lambda (_L120233_ _L120234_)
                                            (let* ((_g120248120278_
                                                    (lambda (_g120249120275_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120249120275_))))
                                                   (_g120247120373_
                                                    (lambda (_g120249120281_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120249120281_))
                                                          (let ((_e120255120283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120249120281_))))
                    (let ((_hd120254120286_
                           (let ()
                             (declare (not safe))
                             (##car _e120255120283_)))
                          (_tl120253120288_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120255120283_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120253120288_))
                          (let ((_e120258120291_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120253120288_))))
                            (let ((_hd120257120294_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120258120291_)))
                                  (_tl120256120296_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120258120291_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120257120294_))
                                  (let ((_e120261120299_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120257120294_))))
                                    (let ((_hd120260120302_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120261120299_)))
                                          (_tl120259120304_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120261120299_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120260120302_))
                                          (let ((_e120264120307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120260120302_))))
                                            (let ((_hd120263120310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120264120307_)))
                                                  (_tl120262120312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120264120307_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120263120310_))
                                                  (let ((_e120267120315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120263120310_))))
                                                    (let ((_hd120266120318_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120267120315_)))
                                                          (_tl120265120320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120267120315_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120265120320_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120262120312_))
                      (let ((_e120270120323_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120262120312_))))
                        (let ((_hd120269120326_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120270120323_)))
                              (_tl120268120328_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120270120323_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120268120328_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120259120304_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120256120296_))
                                      (let ((_e120273120331_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120256120296_))))
                                        (let ((_hd120272120334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120273120331_)))
                                              (_tl120271120336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120273120331_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120271120336_))
                                              ((lambda (_L120339_
                                                        _L120340_
                                                        _L120341_)
                                                 (let* ((_lambda-id120365_
                                                         (let ((__tmp129064
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120234_)))
                       (__tmp129063 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129064 __tmp129063)))
                (_lambda-id120367_
                 (let ((__tmp129065
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119459_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120365_ __tmp129065)))
                (_g129066_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120367_)))
                (_new-case-lambda-expr120370_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120339_
                    _L120341_
                    _lambda-id120367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129068
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120234_)))
                                                         (__tmp129067
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120367_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129068
                                                      '" => "
                                                      __tmp129067))
                                                   (let ((__tmp129071
                                                          (let ((__tmp129072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126713126714_
                            _L120234_
                            _new-case-lambda-expr120370_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129072 _rest120122_)))
                 (__tmp129069
                  (let ((__tmp129070
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126715126716_
                            _lambda-id120367_
                            _L120340_))))
                    (declare (not safe))
                    (cons __tmp129070 _lift1120100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120097_
                                                      __tmp129071
                                                      __tmp129069
                                                      _lift2120101_
                                                      _bind120102_))))
                                               _hd120272120334_
                                               _hd120269120326_
                                               _hd120266120318_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120248120278_
                                                 _g120249120281_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120248120278_ _g120249120281_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120248120278_ _g120249120281_)))
                              (let ()
                                (declare (not safe))
                                (_g120248120278_ _g120249120281_)))))
                      (let ()
                        (declare (not safe))
                        (_g120248120278_ _g120249120281_)))
                  (let ()
                    (declare (not safe))
                    (_g120248120278_ _g120249120281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120248120278_
                                                     _g120249120281_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120248120278_
                                             _g120249120281_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120248120278_ _g120249120281_)))))
                          (let ()
                            (declare (not safe))
                            (_g120248120278_ _g120249120281_)))))
                  (let ()
                    (declare (not safe))
                    (_g120248120278_ _g120249120281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120247120373_ _L120233_))))
                                         (___kont128459128460_
                                          (lambda (_L120184_ _L120185_)
                                            (let ((__tmp129073
                                                   (let ((__tmp129074
                                                          (let ((__tmp129075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129076
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L120184_))))
                           (declare (not safe))
                           (cons __tmp129076 '()))))
                    (declare (not safe))
                    (cons _L120185_ __tmp129075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129074
                                                           _bind120102_))))
                                              (declare (not safe))
                                              (_lp120097_
                                               _rest120122_
                                               _lift1120100_
                                               _lift2120101_
                                               __tmp129073)))))
                                     (let* ((___match128504128505_
                                             (lambda (_e120144120209_
                                                      _hd120143120212_
                                                      _tl120142120214_
                                                      _e120147120217_
                                                      _hd120146120220_
                                                      _tl120145120222_
                                                      _e120150120225_
                                                      _hd120149120228_
                                                      _tl120148120230_)
                                               (let ((_L120233_
                                                      _hd120149120228_)
                                                     (_L120234_
                                                      _hd120146120220_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120234_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120233_)))
                                                     (___kont128457128458_
                                                      _L120233_
                                                      _L120234_)
                                                     (___kont128459128460_
                                                      _hd120149120228_
                                                      _hd120143120212_)))))
                                            (___match128482128483_
                                             (lambda (_e120133120381_
                                                      _hd120132120384_
                                                      _tl120131120386_
                                                      _e120136120389_
                                                      _hd120135120392_
                                                      _tl120134120394_
                                                      _e120139120397_
                                                      _hd120138120400_
                                                      _tl120137120402_)
                                               (let ((_L120405_
                                                      _hd120138120400_)
                                                     (_L120406_
                                                      _hd120135120392_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120406_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120405_)))
                                                     (___kont128455128456_
                                                      _L120405_
                                                      _L120406_)
                                                     (___match128504128505_
                                                      _e120133120381_
                                                      _hd120132120384_
                                                      _tl120131120386_
                                                      _e120136120389_
                                                      _hd120135120392_
                                                      _tl120134120394_
                                                      _e120139120397_
                                                      _hd120138120400_
                                                      _tl120137120402_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128453128454_))
                                           (let ((_e120133120381_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128453128454_))))
                                             (let ((_tl120131120386_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120133120381_)))
                                                   (_hd120132120384_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120133120381_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120132120384_))
                                                   (let ((_e120136120389_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120132120384_))))
                                                     (let ((_tl120134120394_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120136120389_)))
                                                           (_hd120135120392_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120136120389_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120134120394_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120131120386_))
                       (let ((_e120139120397_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120131120386_))))
                         (let ((_tl120137120402_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120139120397_)))
                               (_hd120138120400_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120139120397_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120137120402_))
                               (___match128482128483_
                                _e120133120381_
                                _hd120132120384_
                                _tl120131120386_
                                _e120136120389_
                                _hd120135120392_
                                _tl120134120394_
                                _e120139120397_
                                _hd120138120400_
                                _tl120137120402_)
                               (let ()
                                 (declare (not safe))
                                 (_g120127120163_)))))
                       (let () (declare (not safe)) (_g120127120163_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120131120386_))
                       (let ((_e120158120176_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120131120386_))))
                         (let ((_tl120156120181_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120158120176_)))
                               (_hd120157120179_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120158120176_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120156120181_))
                               (___kont128459128460_
                                _hd120157120179_
                                _hd120132120384_)
                               (let ()
                                 (declare (not safe))
                                 (_g120127120163_)))))
                       (let () (declare (not safe)) (_g120127120163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120131120386_))
                                                       (let ((_e120158120176_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120131120386_))))
                 (let ((_tl120156120181_
                        (let () (declare (not safe)) (##cdr _e120158120176_)))
                       (_hd120157120179_
                        (let () (declare (not safe)) (##car _e120158120176_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120156120181_))
                       (___kont128459128460_ _hd120157120179_ _hd120132120384_)
                       (let () (declare (not safe)) (_g120127120163_)))))
               (let () (declare (not safe)) (_g120127120163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120127120163_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120103120111_))
                             (let ((_hd120108120501_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120103120111_)))
                                   (_tl120109120503_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120103120111_))))
                               (let* ((_hd120506_ _hd120108120501_)
                                      (_rest120508_ _tl120109120503_))
                                 (declare (not safe))
                                 (_K120107120498_ _rest120508_ _hd120506_)))
                             (let ()
                               (declare (not safe))
                               (_else120105120119_)))))))
                  (_lift-kw-lambda?119463_
                   (lambda (_bind120019_)
                     (let* ((___stx128521128522_ _bind120019_)
                            (_g120022120039_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128521128522_)))))
                       (let ((___kont128523128524_
                              (lambda (_L120075_ _L120076_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120076_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120075_))
                                    '#f)))
                             (___kont128525128526_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128521128522_))
                             (let ((_e120028120051_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128521128522_))))
                               (let ((_tl120026120056_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120028120051_)))
                                     (_hd120027120054_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120028120051_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120027120054_))
                                     (let ((_e120031120059_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120027120054_))))
                                       (let ((_tl120029120064_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120031120059_)))
                                             (_hd120030120062_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120031120059_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120029120064_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120026120056_))
                                                 (let ((_e120034120067_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120026120056_))))
                                                   (let ((_tl120032120072_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120034120067_)))
                                                         (_hd120033120070_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120034120067_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120032120072_))
                                                         (___kont128523128524_
                                                          _hd120033120070_
                                                          _hd120030120062_)
                                                         (___kont128525128526_))))
                                                 (___kont128525128526_))
                                             (___kont128525128526_))))
                                     (___kont128525128526_))))
                             (___kont128525128526_))))))
                  (_lift-kw-lambda-bindings119464_
                   (lambda (_bindings119631_)
                     (let _lp119633_ ((_rest119635_ _bindings119631_)
                                      (_lift1119636_ '())
                                      (_lift2119637_ '())
                                      (_bind119638_ '()))
                       (let* ((_rest119639119647_ _rest119635_)
                              (_else119641119655_
                               (lambda ()
                                 (values (reverse _lift1119636_)
                                         (reverse _lift2119637_)
                                         (reverse _bind119638_))))
                              (_K119643120007_
                               (lambda (_rest119658_ _hd119659_)
                                 (let* ((___stx128551128552_ _hd119659_)
                                        (_g119662119687_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128551128552_)))))
                                   (let ((___kont128553128554_
                                          (lambda (_L119757_ _L119758_)
                                            (let* ((_g119772119825_
                                                    (lambda (_g119773119822_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119773119822_))))
                                                   (_g119771120001_
                                                    (lambda (_g119773119828_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119773119828_))
                                                          (let ((_e119781119830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119773119828_))))
                    (let ((_hd119780119833_
                           (let ()
                             (declare (not safe))
                             (##car _e119781119830_)))
                          (_tl119779119835_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119781119830_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119779119835_))
                          (let ((_e119784119838_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119779119835_))))
                            (let ((_hd119783119841_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119784119838_)))
                                  (_tl119782119843_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119784119838_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119783119841_))
                                  (let ((_e119787119846_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119783119841_))))
                                    (let ((_hd119786119849_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119787119846_)))
                                          (_tl119785119851_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119787119846_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119786119849_))
                                          (let ((_e119790119854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119786119849_))))
                                            (let ((_hd119789119857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119790119854_)))
                                                  (_tl119788119859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119790119854_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119789119857_))
                                                  (let ((_e119793119862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119789119857_))))
                                                    (let ((_hd119792119865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119793119862_)))
                                                          (_tl119791119867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119793119862_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119791119867_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119788119859_))
                      (let ((_e119796119870_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119788119859_))))
                        (let ((_hd119795119873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119796119870_)))
                              (_tl119794119875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119796119870_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119795119873_))
                              (let ((_e119799119878_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119795119873_))))
                                (let ((_hd119798119881_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119799119878_)))
                                      (_tl119797119883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119799119878_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119797119883_))
                                      (let ((_e119802119886_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119797119883_))))
                                        (let ((_hd119801119889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119802119886_)))
                                              (_tl119800119891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119802119886_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119801119889_))
                                              (let ((_e119805119894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119801119889_))))
                                                (let ((_hd119804119897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119805119894_)))
                                                      (_tl119803119899_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119805119894_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119804119897_))
                                                      (let ((_e119808119902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119804119897_))))
                (let ((_hd119807119905_
                       (let () (declare (not safe)) (##car _e119808119902_)))
                      (_tl119806119907_
                       (let () (declare (not safe)) (##cdr _e119808119902_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119807119905_))
                      (let ((_e119811119910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119807119905_))))
                        (let ((_hd119810119913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119811119910_)))
                              (_tl119809119915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119811119910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119809119915_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119806119907_))
                                  (let ((_e119814119918_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119806119907_))))
                                    (let ((_hd119813119921_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119814119918_)))
                                          (_tl119812119923_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119814119918_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119812119923_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119803119899_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119800119891_))
                                                  (let ((_e119817119926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119800119891_))))
                                                    (let ((_hd119816119929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119817119926_)))
                                                          (_tl119815119931_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119817119926_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119815119931_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119794119875_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119785119851_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119782119843_))
                              (let ((_e119820119934_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119782119843_))))
                                (let ((_hd119819119937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119820119934_)))
                                      (_tl119818119939_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119820119934_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119818119939_))
                                      ((lambda (_L119942_
                                                _L119943_
                                                _L119944_
                                                _L119945_
                                                _L119946_)
                                         (let* ((_get-kws-id119986_
                                                 (let ((__tmp129078
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119758_)))
                                                       (__tmp129077
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129078
                                                    __tmp129077)))
                                                (_get-kws-id119988_
                                                 (let ((__tmp129079
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119459_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119986_
                                                    __tmp129079)))
                                                (_main-id119990_
                                                 (let ((__tmp129081
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119758_)))
                                                       (__tmp129080
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129081
                                                    __tmp129080)))
                                                (_main-id119992_
                                                 (let ((__tmp129082
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119459_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119990_
                                                    __tmp129082)))
                                                (_g129083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119988_)))
                                                (_g129084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119992_)))
                                                (_new-kw-dispatch119996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119942_
                                                    _L119946_
                                                    _get-kws-id119988_)))
                                                (_new-get-kws119998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119943_
                                                    _L119945_
                                                    _main-id119992_))))
                                           (let ((__tmp129087
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119758_)))
                                                 (__tmp129086
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119988_)))
                                                 (__tmp129085
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119992_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129087
                                              '" => "
                                              __tmp129086
                                              '" => "
                                              __tmp129085))
                                           (let ((__tmp129092
                                                  (let ((__tmp129093
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126713126714_
                                                            _main-id119992_
                                                            _L119944_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129093
                                                          _lift1119636_)))
                                                 (__tmp129090
                                                  (let ((__tmp129091
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126713126714_
                                                            _get-kws-id119988_
                                                            _new-get-kws119998_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129091
                                                          _lift2119637_)))
                                                 (__tmp129088
                                                  (let ((__tmp129089
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126713126714_
                                                            _L119758_
                                                            _new-kw-dispatch119996_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129089
                                                          _bind119638_))))
                                             (declare (not safe))
                                             (_lp119633_
                                              _rest119658_
                                              __tmp129092
                                              __tmp129090
                                              __tmp129088))))
                                       _hd119819119937_
                                       _hd119816119929_
                                       _hd119813119921_
                                       _hd119810119913_
                                       _hd119792119865_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119772119825_ _g119773119828_)))))
                              (let ()
                                (declare (not safe))
                                (_g119772119825_ _g119773119828_)))
                          (let ()
                            (declare (not safe))
                            (_g119772119825_ _g119773119828_)))
                      (let ()
                        (declare (not safe))
                        (_g119772119825_ _g119773119828_)))
                  (let ()
                    (declare (not safe))
                    (_g119772119825_ _g119773119828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119772119825_
                                                     _g119773119828_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119772119825_
                                                 _g119773119828_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119772119825_
                                             _g119773119828_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119772119825_ _g119773119828_)))
                              (let ()
                                (declare (not safe))
                                (_g119772119825_ _g119773119828_)))))
                      (let ()
                        (declare (not safe))
                        (_g119772119825_ _g119773119828_)))))
              (let ()
                (declare (not safe))
                (_g119772119825_ _g119773119828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119772119825_
                                                 _g119773119828_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119772119825_ _g119773119828_)))))
                              (let ()
                                (declare (not safe))
                                (_g119772119825_ _g119773119828_)))))
                      (let ()
                        (declare (not safe))
                        (_g119772119825_ _g119773119828_)))
                  (let ()
                    (declare (not safe))
                    (_g119772119825_ _g119773119828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119772119825_
                                                     _g119773119828_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119772119825_
                                             _g119773119828_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119772119825_ _g119773119828_)))))
                          (let ()
                            (declare (not safe))
                            (_g119772119825_ _g119773119828_)))))
                  (let ()
                    (declare (not safe))
                    (_g119772119825_ _g119773119828_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119771120001_ _L119757_))))
                                         (___kont128555128556_
                                          (lambda (_L119708_ _L119709_)
                                            (let ((__tmp129094
                                                   (let ((__tmp129095
                                                          (let ((__tmp129096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119708_ '()))))
                    (declare (not safe))
                    (cons _L119709_ __tmp129096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129095
                                                           _bind119638_))))
                                              (declare (not safe))
                                              (_lp119633_
                                               _rest119658_
                                               _lift1119636_
                                               _lift2119637_
                                               __tmp129094)))))
                                     (let ((___match128578128579_
                                            (lambda (_e119668119733_
                                                     _hd119667119736_
                                                     _tl119666119738_
                                                     _e119671119741_
                                                     _hd119670119744_
                                                     _tl119669119746_
                                                     _e119674119749_
                                                     _hd119673119752_
                                                     _tl119672119754_)
                                              (let ((_L119757_
                                                     _hd119673119752_)
                                                    (_L119758_
                                                     _hd119670119744_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119758_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119757_)))
                                                    (___kont128553128554_
                                                     _L119757_
                                                     _L119758_)
                                                    (___kont128555128556_
                                                     _hd119673119752_
                                                     _hd119667119736_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128551128552_))
                                           (let ((_e119668119733_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128551128552_))))
                                             (let ((_tl119666119738_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119668119733_)))
                                                   (_hd119667119736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119668119733_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119667119736_))
                                                   (let ((_e119671119741_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119667119736_))))
                                                     (let ((_tl119669119746_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119671119741_)))
                                                           (_hd119670119744_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119671119741_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119669119746_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119666119738_))
                       (let ((_e119674119749_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119666119738_))))
                         (let ((_tl119672119754_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119674119749_)))
                               (_hd119673119752_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119674119749_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119672119754_))
                               (___match128578128579_
                                _e119668119733_
                                _hd119667119736_
                                _tl119666119738_
                                _e119671119741_
                                _hd119670119744_
                                _tl119669119746_
                                _e119674119749_
                                _hd119673119752_
                                _tl119672119754_)
                               (let ()
                                 (declare (not safe))
                                 (_g119662119687_)))))
                       (let () (declare (not safe)) (_g119662119687_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119666119738_))
                       (let ((_e119682119700_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119666119738_))))
                         (let ((_tl119680119705_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119682119700_)))
                               (_hd119681119703_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119682119700_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119680119705_))
                               (___kont128555128556_
                                _hd119681119703_
                                _hd119667119736_)
                               (let ()
                                 (declare (not safe))
                                 (_g119662119687_)))))
                       (let () (declare (not safe)) (_g119662119687_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119666119738_))
                                                       (let ((_e119682119700_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119666119738_))))
                 (let ((_tl119680119705_
                        (let () (declare (not safe)) (##cdr _e119682119700_)))
                       (_hd119681119703_
                        (let () (declare (not safe)) (##car _e119682119700_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119680119705_))
                       (___kont128555128556_ _hd119681119703_ _hd119667119736_)
                       (let () (declare (not safe)) (_g119662119687_)))))
               (let () (declare (not safe)) (_g119662119687_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119662119687_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119639119647_))
                             (let ((_hd119644120010_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119639119647_)))
                                   (_tl119645120012_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119639119647_))))
                               (let* ((_hd120015_ _hd119644120010_)
                                      (_rest120017_ _tl119645120012_))
                                 (declare (not safe))
                                 (_K119643120007_ _rest120017_ _hd120015_)))
                             (let ()
                               (declare (not safe))
                               (_else119641119655_))))))))
          (let* ((___stx128595128596_ _stx119459_)
                 (_g119467119493_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128595128596_)))))
            (let ((___kont128597128598_
                   (lambda (_L119553_ _L119554_)
                     (let ((__tmp129098
                            (lambda ()
                              (if (let ((__tmp129125
                                         (let ((__tmp129126
                                                (lambda (_g119582119585_
                                                         _g119583119587_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119582119585_
                                                          _g119583119587_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129126
                                                   '()
                                                   _L119554_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119463_
                                            __tmp129125))
                                  (let ((_g129112_
                                         (let ((__tmp129114
                                                (let ((__tmp129115
                                                       (lambda (_g119589119592_
                                                                _g119590119594_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119589119592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119590119594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129115
                                                          '()
                                                          _L119554_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119464_
                                            __tmp129114))))
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
                                      (let ((_lift1119597_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129112_ 0)))
                                            (_lift2119598_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129112_ 1)))
                                            (_hd119599_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129112_ 2))))
                                        (let* ((_expr119601_
                                                (let ((__tmp129116
                                                       (let ((__tmp129117
                                                              (let ((__tmp129118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119553_ '()))))
                        (declare (not safe))
                        (cons _hd119599_ __tmp129118))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129116
                                                   _stx119459_)))
                                               (_expr119603_
                                                (let ((__tmp129119
                                                       (let ((__tmp129120
                                                              (let ((__tmp129121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119601_ '()))))
                        (declare (not safe))
                        (cons _lift2119598_ __tmp129121))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129119
                                                   _stx119459_)))
                                               (_expr119605_
                                                (let ((__tmp129122
                                                       (let ((__tmp129123
                                                              (let ((__tmp129124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119603_ '()))))
                        (declare (not safe))
                        (cons _lift1119597_ __tmp129124))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129122
                                                   _stx119459_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119605_))))))
                                  (let ((_g129099_
                                         (let ((__tmp129101
                                                (let ((__tmp129102
                                                       (lambda (_g119607119610_
                                                                _g119608119612_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119607119610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119608119612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129102
                                                          '()
                                                          _L119554_))))
                                           (declare (not safe))
                                           (_compile-bindings119462_
                                            __tmp129101))))
                                    (begin
                                      (let ((_g129100_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129099_)
                                                   (##vector-length _g129099_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129100_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129100_)))
                                      (let ((_lift1119615_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129099_ 0)))
                                            (_lift2119616_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129099_ 1)))
                                            (_hd119617_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129099_ 2))))
                                        (let* ((_body119619_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119553_)))
                                               (_expr119621_
                                                (let ((__tmp129103
                                                       (let ((__tmp129104
                                                              (let ((__tmp129105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119619_ '()))))
                        (declare (not safe))
                        (cons _hd119617_ __tmp129105))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129103
                                                   _stx119459_)))
                                               (_expr119623_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119616_))
                                                    _expr119621_
                                                    (let ((__tmp129106
                                                           (let ((__tmp129107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129108
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119621_ '()))))
                            (declare (not safe))
                            (cons _lift2119616_ __tmp129108))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129107))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129106 _stx119459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119625_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119615_))
                                                    _expr119623_
                                                    (let ((__tmp129109
                                                           (let ((__tmp129110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129111
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119623_ '()))))
                            (declare (not safe))
                            (cons _lift1119615_ __tmp129111))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129110))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129109 _stx119459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119625_)))))))
                           (__tmp129097
                            (let ((__obj128801
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128801)
                              __obj128801)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129098
                        gx#current-expander-context
                        __tmp129097))))
                  (___kont128601128602_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119459_)))))
              (let ((___match128622128623_
                     (lambda (_e119473119505_
                              _hd119472119508_
                              _tl119471119510_
                              _e119476119513_
                              _hd119475119516_
                              _tl119474119518_
                              ___splice128599128600_
                              _target119477119521_
                              _tl119479119523_)
                       (letrec ((_loop119480119526_
                                 (lambda (_hd119478119529_ _bind119484119531_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119478119529_))
                                       (let ((_e119481119534_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119478119529_))))
                                         (let ((_lp-tl119483119539_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119481119534_)))
                                               (_lp-hd119482119537_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119481119534_))))
                                           (let ((__tmp129129
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119482119537_
                                                          _bind119484119531_))))
                                             (declare (not safe))
                                             (_loop119480119526_
                                              _lp-tl119483119539_
                                              __tmp129129))))
                                       (let ((_bind119485119542_
                                              (reverse _bind119484119531_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119474119518_))
                                             (let ((_e119488119545_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119474119518_))))
                                               (let ((_tl119486119550_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119488119545_)))
                                                     (_hd119487119548_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119488119545_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119486119550_))
                                                     (let ((_L119553_
                                                            _hd119487119548_)
                                                           (_L119554_
                                                            _bind119485119542_))
                                                       (if (let ((__tmp129127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129128
                                 (lambda (_g119574119577_ _g119575119579_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119574119577_ _g119575119579_)))))
                            (declare (not safe))
                            (foldr1 __tmp129128 '() _L119554_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129127))
                   (___kont128597128598_ _L119553_ _L119554_)
                   (___kont128601128602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128601128602_))))
                                             (___kont128601128602_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119480119526_ _target119477119521_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128595128596_))
                    (let ((_e119473119505_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128595128596_))))
                      (let ((_tl119471119510_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119473119505_)))
                            (_hd119472119508_
                             (let ()
                               (declare (not safe))
                               (##car _e119473119505_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119471119510_))
                            (let ((_e119476119513_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119471119510_))))
                              (let ((_tl119474119518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119476119513_)))
                                    (_hd119475119516_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119476119513_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119475119516_))
                                    (let ((___splice128599128600_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119475119516_
                                              '0))))
                                      (let ((_tl119479119523_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128599128600_
                                                '1)))
                                            (_target119477119521_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128599128600_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119479119523_))
                                            (___match128622128623_
                                             _e119473119505_
                                             _hd119472119508_
                                             _tl119471119510_
                                             _e119476119513_
                                             _hd119475119516_
                                             _tl119474119518_
                                             ___splice128599128600_
                                             _target119477119521_
                                             _tl119479119523_)
                                            (___kont128601128602_))))
                                    (___kont128601128602_))))
                            (___kont128601128602_))))
                    (___kont128601128602_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118603_)
        (letrec* ((_bind-e__126718126719_
                   (lambda (_id119443_ _expr119444_ _compile?119445_)
                     (let ((__tmp129132
                            (let ()
                              (declare (not safe))
                              (cons _id119443_ '())))
                           (__tmp129130
                            (let ((__tmp129131
                                   (if _compile?119445_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119444_))
                                       _expr119444_)))
                              (declare (not safe))
                              (cons __tmp129131 '()))))
                       (declare (not safe))
                       (cons __tmp129132 __tmp129130))))
                  (_bind-e__0__126720126721_
                   (lambda (_id119450_ _expr119451_)
                     (let ((_compile?119453_ '#t))
                       (declare (not safe))
                       (_bind-e__126718126719_
                        _id119450_
                        _expr119451_
                        _compile?119453_))))
                  (_bind-e118605_
                   (lambda _g129134_
                     (let ((_g129133_
                            (let ()
                              (declare (not safe))
                              (##length _g129134_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129133_ 2))
                              (apply (lambda (_id119450_ _expr119451_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126720126721_
                                          _id119450_
                                          _expr119451_)))
                                     _g129134_))
                             ((let () (declare (not safe)) (##fx= _g129133_ 3))
                              (apply (lambda (_id119455_
                                              _expr119456_
                                              _compile?119457_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126718126719_
                                          _id119455_
                                          _expr119456_
                                          _compile?119457_)))
                                     _g129134_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129134_))))))
                  (_compile-bindings118606_
                   (lambda (_rest118741_)
                     (let _lp118743_ ((_rest118745_ _rest118741_)
                                      (_bind118746_ '()))
                       (let* ((_rest118747118755_ _rest118745_)
                              (_else118749118763_
                               (lambda () (reverse _bind118746_)))
                              (_K118751119430_
                               (lambda (_rest118766_ _hd118767_)
                                 (let* ((___stx128645128646_ _hd118767_)
                                        (_g118772118819_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128645128646_)))))
                                   (let ((___kont128647128648_
                                          (lambda (_L119337_ _L119338_)
                                            (let* ((___stx128625128626_
                                                    _L119337_)
                                                   (_g119353119367_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128625128626_)))))
                                              (let ((___kont128627128628_
                                                     (lambda (_L119415_)
                                                       (let ((__tmp129135
                                                              (let ((__tmp129136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126718126719_
                                _L119338_
                                _L119337_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129136 _bind118746_))))
                 (declare (not safe))
                 (_lp118743_ _rest118766_ __tmp129135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128629128630_
                                                     (lambda (_L119380_)
                                                       (let ((_g129137_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118603_
                         _L119338_
                         _L119380_
                         '#t))))
                 (begin
                   (let ((_g129138_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129137_)
                                (##vector-length _g129137_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129138_ 3)))
                         (error "Context expects 3 values" _g129138_)))
                   (let ((_ids119390_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129137_ 0)))
                         (_impls119391_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129137_ 1)))
                         (_clauses119392_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129137_ 2))))
                     (let* ((_g129139_
                             (for-each gx#core-bind-runtime! _ids119390_))
                            (_xbind119395_
                             (map _bind-e118605_ _ids119390_ _impls119391_))
                            (_expr*119397_
                             (let ((__tmp129141
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119392_)))
                                   (__tmp129140
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129141
                                __tmp129140)))
                            (_bind*119399_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126718126719_
                                _L119338_
                                _expr*119397_
                                '#f))))
                       (let ((__tmp129143
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119338_)))
                             (__tmp129142
                              (map gxc#identifier-symbol _ids119390_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129143
                          '" => "
                          __tmp129142))
                       (let ((__tmp129144
                              (let ((__tmp129145
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118746_
                                               _xbind119395_))))
                                (declare (not safe))
                                (cons _bind*119399_ __tmp129145))))
                         (declare (not safe))
                         (_lp118743_ _rest118766_ __tmp129144)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128636128637_
                                                       (lambda (_e119358119407_
                                                                _hd119357119410_
                                                                _tl119356119412_)
                                                         (let ((_L119415_
                                                                _tl119356119412_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119415_))
                       (___kont128627128628_ _L119415_)
                       (___kont128629128630_ _tl119356119412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128625128626_))
                                                      (let ((_e119358119407_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128625128626_))))
                (let ((_tl119356119412_
                       (let () (declare (not safe)) (##cdr _e119358119407_)))
                      (_hd119357119410_
                       (let () (declare (not safe)) (##car _e119358119407_))))
                  (___match128636128637_
                   _e119358119407_
                   _hd119357119410_
                   _tl119356119412_)))
              (let () (declare (not safe)) (_g119353119367_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128649128650_
                                          (lambda (_L119165_ _L119166_)
                                            (let* ((_g119180119210_
                                                    (lambda (_g119181119207_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119181119207_))))
                                                   (_g119179119305_
                                                    (lambda (_g119181119213_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119181119213_))
                                                          (let ((_e119187119215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119181119213_))))
                    (let ((_hd119186119218_
                           (let ()
                             (declare (not safe))
                             (##car _e119187119215_)))
                          (_tl119185119220_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119187119215_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119185119220_))
                          (let ((_e119190119223_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119185119220_))))
                            (let ((_hd119189119226_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119190119223_)))
                                  (_tl119188119228_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119190119223_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119189119226_))
                                  (let ((_e119193119231_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119189119226_))))
                                    (let ((_hd119192119234_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119193119231_)))
                                          (_tl119191119236_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119193119231_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119192119234_))
                                          (let ((_e119196119239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119192119234_))))
                                            (let ((_hd119195119242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119196119239_)))
                                                  (_tl119194119244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119196119239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119195119242_))
                                                  (let ((_e119199119247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119195119242_))))
                                                    (let ((_hd119198119250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119199119247_)))
                                                          (_tl119197119252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119199119247_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119197119252_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119194119244_))
                      (let ((_e119202119255_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119194119244_))))
                        (let ((_hd119201119258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119202119255_)))
                              (_tl119200119260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119202119255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119200119260_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119191119236_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119188119228_))
                                      (let ((_e119205119263_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119188119228_))))
                                        (let ((_hd119204119266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119205119263_)))
                                              (_tl119203119268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119205119263_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119203119268_))
                                              ((lambda (_L119271_
                                                        _L119272_
                                                        _L119273_)
                                                 (let* ((_lambda-id119297_
                                                         (let ((__tmp129147
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119166_)))
                       (__tmp129146 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129147 __tmp129146)))
                (_lambda-id119299_
                 (let ((__tmp129148
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118603_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119297_ __tmp129148)))
                (_g129149_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119299_)))
                (_new-case-lambda-expr119302_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119271_
                    _L119273_
                    _lambda-id119299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129151
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119166_)))
                                                         (__tmp129150
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119299_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129151
                                                      '" => "
                                                      __tmp129150))
                                                   (let ((__tmp129154
                                                          (let ((__tmp129155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126718126719_
                            _L119166_
                            _new-case-lambda-expr119302_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129155 _rest118766_)))
                 (__tmp129152
                  (let ((__tmp129153
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126720126721_
                            _lambda-id119299_
                            _L119272_))))
                    (declare (not safe))
                    (cons __tmp129153 _bind118746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118743_
                                                      __tmp129154
                                                      __tmp129152))))
                                               _hd119204119266_
                                               _hd119201119258_
                                               _hd119198119250_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119180119210_
                                                 _g119181119213_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119180119210_ _g119181119213_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119180119210_ _g119181119213_)))
                              (let ()
                                (declare (not safe))
                                (_g119180119210_ _g119181119213_)))))
                      (let ()
                        (declare (not safe))
                        (_g119180119210_ _g119181119213_)))
                  (let ()
                    (declare (not safe))
                    (_g119180119210_ _g119181119213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119180119210_
                                                     _g119181119213_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119180119210_
                                             _g119181119213_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119180119210_ _g119181119213_)))))
                          (let ()
                            (declare (not safe))
                            (_g119180119210_ _g119181119213_)))))
                  (let ()
                    (declare (not safe))
                    (_g119180119210_ _g119181119213_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119179119305_ _L119165_))))
                                         (___kont128651128652_
                                          (lambda (_L118889_ _L118890_)
                                            (let* ((_g118904118957_
                                                    (lambda (_g118905118954_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118905118954_))))
                                                   (_g118903119133_
                                                    (lambda (_g118905118960_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118905118960_))
                                                          (let ((_e118913118962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118905118960_))))
                    (let ((_hd118912118965_
                           (let ()
                             (declare (not safe))
                             (##car _e118913118962_)))
                          (_tl118911118967_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118913118962_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118911118967_))
                          (let ((_e118916118970_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118911118967_))))
                            (let ((_hd118915118973_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118916118970_)))
                                  (_tl118914118975_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118916118970_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118915118973_))
                                  (let ((_e118919118978_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118915118973_))))
                                    (let ((_hd118918118981_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118919118978_)))
                                          (_tl118917118983_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118919118978_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118918118981_))
                                          (let ((_e118922118986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118918118981_))))
                                            (let ((_hd118921118989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118922118986_)))
                                                  (_tl118920118991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118922118986_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118921118989_))
                                                  (let ((_e118925118994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118921118989_))))
                                                    (let ((_hd118924118997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118925118994_)))
                                                          (_tl118923118999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118925118994_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118923118999_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118920118991_))
                      (let ((_e118928119002_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118920118991_))))
                        (let ((_hd118927119005_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118928119002_)))
                              (_tl118926119007_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118928119002_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118927119005_))
                              (let ((_e118931119010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118927119005_))))
                                (let ((_hd118930119013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118931119010_)))
                                      (_tl118929119015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118931119010_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118929119015_))
                                      (let ((_e118934119018_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118929119015_))))
                                        (let ((_hd118933119021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118934119018_)))
                                              (_tl118932119023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118934119018_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118933119021_))
                                              (let ((_e118937119026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118933119021_))))
                                                (let ((_hd118936119029_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118937119026_)))
                                                      (_tl118935119031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118937119026_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118936119029_))
                                                      (let ((_e118940119034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118936119029_))))
                (let ((_hd118939119037_
                       (let () (declare (not safe)) (##car _e118940119034_)))
                      (_tl118938119039_
                       (let () (declare (not safe)) (##cdr _e118940119034_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118939119037_))
                      (let ((_e118943119042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118939119037_))))
                        (let ((_hd118942119045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118943119042_)))
                              (_tl118941119047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118943119042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118941119047_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118938119039_))
                                  (let ((_e118946119050_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118938119039_))))
                                    (let ((_hd118945119053_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118946119050_)))
                                          (_tl118944119055_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118946119050_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118944119055_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118935119031_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118932119023_))
                                                  (let ((_e118949119058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118932119023_))))
                                                    (let ((_hd118948119061_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118949119058_)))
                                                          (_tl118947119063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118949119058_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118947119063_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118926119007_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118917118983_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118914118975_))
                              (let ((_e118952119066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118914118975_))))
                                (let ((_hd118951119069_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118952119066_)))
                                      (_tl118950119071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118952119066_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118950119071_))
                                      ((lambda (_L119074_
                                                _L119075_
                                                _L119076_
                                                _L119077_
                                                _L119078_)
                                         (let* ((_get-kws-id119118_
                                                 (let ((__tmp129157
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118890_)))
                                                       (__tmp129156
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129157
                                                    __tmp129156)))
                                                (_get-kws-id119120_
                                                 (let ((__tmp129158
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118603_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119118_
                                                    __tmp129158)))
                                                (_main-id119122_
                                                 (let ((__tmp129160
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118890_)))
                                                       (__tmp129159
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129160
                                                    __tmp129159)))
                                                (_main-id119124_
                                                 (let ((__tmp129161
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118603_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119122_
                                                    __tmp129161)))
                                                (_g129162_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119120_)))
                                                (_g129163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119124_)))
                                                (_new-kw-dispatch119128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119074_
                                                    _L119078_
                                                    _get-kws-id119120_)))
                                                (_new-get-kws119130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119075_
                                                    _L119077_
                                                    _main-id119124_))))
                                           (let ((__tmp129166
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118890_)))
                                                 (__tmp129165
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119120_)))
                                                 (__tmp129164
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119124_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129166
                                              '" => "
                                              __tmp129165
                                              '" => "
                                              __tmp129164))
                                           (let ((__tmp129167
                                                  (let ((__tmp129172
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126718126719_
                                                            _main-id119124_
                                                            _L119076_
                                                            '#f)))
                                                        (__tmp129168
                                                         (let ((__tmp129171
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126718126719_
                           _get-kws-id119120_
                           _new-get-kws119130_
                           '#f)))
                       (__tmp129169
                        (let ((__tmp129170
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126718126719_
                                  _L118890_
                                  _new-kw-dispatch119128_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129170 _rest118766_))))
                   (declare (not safe))
                   (cons __tmp129171 __tmp129169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129172
                                                          __tmp129168))))
                                             (declare (not safe))
                                             (_lp118743_
                                              __tmp129167
                                              _bind118746_))))
                                       _hd118951119069_
                                       _hd118948119061_
                                       _hd118945119053_
                                       _hd118942119045_
                                       _hd118924118997_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118904118957_ _g118905118960_)))))
                              (let ()
                                (declare (not safe))
                                (_g118904118957_ _g118905118960_)))
                          (let ()
                            (declare (not safe))
                            (_g118904118957_ _g118905118960_)))
                      (let ()
                        (declare (not safe))
                        (_g118904118957_ _g118905118960_)))
                  (let ()
                    (declare (not safe))
                    (_g118904118957_ _g118905118960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118904118957_
                                                     _g118905118960_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118904118957_
                                                 _g118905118960_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118904118957_
                                             _g118905118960_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118904118957_ _g118905118960_)))
                              (let ()
                                (declare (not safe))
                                (_g118904118957_ _g118905118960_)))))
                      (let ()
                        (declare (not safe))
                        (_g118904118957_ _g118905118960_)))))
              (let ()
                (declare (not safe))
                (_g118904118957_ _g118905118960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118904118957_
                                                 _g118905118960_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118904118957_ _g118905118960_)))))
                              (let ()
                                (declare (not safe))
                                (_g118904118957_ _g118905118960_)))))
                      (let ()
                        (declare (not safe))
                        (_g118904118957_ _g118905118960_)))
                  (let ()
                    (declare (not safe))
                    (_g118904118957_ _g118905118960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118904118957_
                                                     _g118905118960_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118904118957_
                                             _g118905118960_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118904118957_ _g118905118960_)))))
                          (let ()
                            (declare (not safe))
                            (_g118904118957_ _g118905118960_)))))
                  (let ()
                    (declare (not safe))
                    (_g118904118957_ _g118905118960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118903119133_ _L118889_))))
                                         (___kont128653128654_
                                          (lambda (_L118840_ _L118841_)
                                            (let ((__tmp129173
                                                   (let ((__tmp129174
                                                          (let ((__tmp129175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129176
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118840_))))
                           (declare (not safe))
                           (cons __tmp129176 '()))))
                    (declare (not safe))
                    (cons _L118841_ __tmp129175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129174
                                                           _bind118746_))))
                                              (declare (not safe))
                                              (_lp118743_
                                               _rest118766_
                                               __tmp129173)))))
                                     (let* ((___match128720128721_
                                             (lambda (_e118800118865_
                                                      _hd118799118868_
                                                      _tl118798118870_
                                                      _e118803118873_
                                                      _hd118802118876_
                                                      _tl118801118878_
                                                      _e118806118881_
                                                      _hd118805118884_
                                                      _tl118804118886_)
                                               (let ((_L118889_
                                                      _hd118805118884_)
                                                     (_L118890_
                                                      _hd118802118876_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118890_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118889_)))
                                                     (___kont128651128652_
                                                      _L118889_
                                                      _L118890_)
                                                     (___kont128653128654_
                                                      _hd118805118884_
                                                      _hd118799118868_)))))
                                            (___match128698128699_
                                             (lambda (_e118789119141_
                                                      _hd118788119144_
                                                      _tl118787119146_
                                                      _e118792119149_
                                                      _hd118791119152_
                                                      _tl118790119154_
                                                      _e118795119157_
                                                      _hd118794119160_
                                                      _tl118793119162_)
                                               (let ((_L119165_
                                                      _hd118794119160_)
                                                     (_L119166_
                                                      _hd118791119152_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119166_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119165_)))
                                                     (___kont128649128650_
                                                      _L119165_
                                                      _L119166_)
                                                     (___match128720128721_
                                                      _e118789119141_
                                                      _hd118788119144_
                                                      _tl118787119146_
                                                      _e118792119149_
                                                      _hd118791119152_
                                                      _tl118790119154_
                                                      _e118795119157_
                                                      _hd118794119160_
                                                      _tl118793119162_)))))
                                            (___match128676128677_
                                             (lambda (_e118778119313_
                                                      _hd118777119316_
                                                      _tl118776119318_
                                                      _e118781119321_
                                                      _hd118780119324_
                                                      _tl118779119326_
                                                      _e118784119329_
                                                      _hd118783119332_
                                                      _tl118782119334_)
                                               (let ((_L119337_
                                                      _hd118783119332_)
                                                     (_L119338_
                                                      _hd118780119324_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119338_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119337_)))
                                                     (___kont128647128648_
                                                      _L119337_
                                                      _L119338_)
                                                     (___match128698128699_
                                                      _e118778119313_
                                                      _hd118777119316_
                                                      _tl118776119318_
                                                      _e118781119321_
                                                      _hd118780119324_
                                                      _tl118779119326_
                                                      _e118784119329_
                                                      _hd118783119332_
                                                      _tl118782119334_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128645128646_))
                                           (let ((_e118778119313_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128645128646_))))
                                             (let ((_tl118776119318_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118778119313_)))
                                                   (_hd118777119316_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118778119313_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118777119316_))
                                                   (let ((_e118781119321_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118777119316_))))
                                                     (let ((_tl118779119326_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118781119321_)))
                                                           (_hd118780119324_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118781119321_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118779119326_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118776119318_))
                       (let ((_e118784119329_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118776119318_))))
                         (let ((_tl118782119334_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118784119329_)))
                               (_hd118783119332_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118784119329_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118782119334_))
                               (___match128676128677_
                                _e118778119313_
                                _hd118777119316_
                                _tl118776119318_
                                _e118781119321_
                                _hd118780119324_
                                _tl118779119326_
                                _e118784119329_
                                _hd118783119332_
                                _tl118782119334_)
                               (let ()
                                 (declare (not safe))
                                 (_g118772118819_)))))
                       (let () (declare (not safe)) (_g118772118819_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118776119318_))
                       (let ((_e118814118832_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118776119318_))))
                         (let ((_tl118812118837_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118814118832_)))
                               (_hd118813118835_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118814118832_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118812118837_))
                               (___kont128653128654_
                                _hd118813118835_
                                _hd118777119316_)
                               (let ()
                                 (declare (not safe))
                                 (_g118772118819_)))))
                       (let () (declare (not safe)) (_g118772118819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118776119318_))
                                                       (let ((_e118814118832_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118776119318_))))
                 (let ((_tl118812118837_
                        (let () (declare (not safe)) (##cdr _e118814118832_)))
                       (_hd118813118835_
                        (let () (declare (not safe)) (##car _e118814118832_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118812118837_))
                       (___kont128653128654_ _hd118813118835_ _hd118777119316_)
                       (let () (declare (not safe)) (_g118772118819_)))))
               (let () (declare (not safe)) (_g118772118819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118772118819_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118747118755_))
                             (let ((_hd118752119433_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118747118755_)))
                                   (_tl118753119435_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118747118755_))))
                               (let* ((_hd119438_ _hd118752119433_)
                                      (_rest119440_ _tl118753119435_))
                                 (declare (not safe))
                                 (_K118751119430_ _rest119440_ _hd119438_)))
                             (let ()
                               (declare (not safe))
                               (_else118749118763_))))))))
          (let* ((___stx128737128738_ _stx118603_)
                 (_g118609118636_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128737128738_)))))
            (let ((___kont128739128740_
                   (lambda (_L118696_ _L118697_ _L118698_)
                     (let ((__tmp129178
                            (lambda ()
                              (let ((_hd118735_
                                     (let ((__tmp129179
                                            (let ((__tmp129180
                                                   (lambda (_g118727118730_
                                                            _g118728118732_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118727118730_
                                                             _g118728118732_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129180
                                                      '()
                                                      _L118697_))))
                                       (declare (not safe))
                                       (_compile-bindings118606_ __tmp129179)))
                                    (_body118736_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118696_))))
                                (let ((__tmp129181
                                       (let ((__tmp129182
                                              (let ((__tmp129183
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118736_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118735_
                                                      __tmp129183))))
                                         (declare (not safe))
                                         (cons _L118698_ __tmp129182))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129181
                                   _stx118603_)))))
                           (__tmp129177
                            (let ((__obj128802
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128802)
                              __obj128802)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129178
                        gx#current-expander-context
                        __tmp129177))))
                  (___kont128743128744_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118603_)))))
              (let ((___match128764128765_
                     (lambda (_e118616118648_
                              _hd118615118651_
                              _tl118614118653_
                              _e118619118656_
                              _hd118618118659_
                              _tl118617118661_
                              ___splice128741128742_
                              _target118620118664_
                              _tl118622118666_)
                       (letrec ((_loop118623118669_
                                 (lambda (_hd118621118672_ _bind118627118674_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118621118672_))
                                       (let ((_e118624118677_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118621118672_))))
                                         (let ((_lp-tl118626118682_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118624118677_)))
                                               (_lp-hd118625118680_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118624118677_))))
                                           (let ((__tmp129186
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118625118680_
                                                          _bind118627118674_))))
                                             (declare (not safe))
                                             (_loop118623118669_
                                              _lp-tl118626118682_
                                              __tmp129186))))
                                       (let ((_bind118628118685_
                                              (reverse _bind118627118674_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118617118661_))
                                             (let ((_e118631118688_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118617118661_))))
                                               (let ((_tl118629118693_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118631118688_)))
                                                     (_hd118630118691_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118631118688_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118629118693_))
                                                     (let ((_L118696_
                                                            _hd118630118691_)
                                                           (_L118697_
                                                            _bind118628118685_)
                                                           (_L118698_
                                                            _hd118615118651_))
                                                       (if (let ((__tmp129184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129185
                                 (lambda (_g118719118722_ _g118720118724_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118719118722_ _g118720118724_)))))
                            (declare (not safe))
                            (foldr1 __tmp129185 '() _L118697_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129184))
                   (___kont128739128740_ _L118696_ _L118697_ _L118698_)
                   (___kont128743128744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128743128744_))))
                                             (___kont128743128744_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118623118669_ _target118620118664_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128737128738_))
                    (let ((_e118616118648_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128737128738_))))
                      (let ((_tl118614118653_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118616118648_)))
                            (_hd118615118651_
                             (let ()
                               (declare (not safe))
                               (##car _e118616118648_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118614118653_))
                            (let ((_e118619118656_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118614118653_))))
                              (let ((_tl118617118661_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118619118656_)))
                                    (_hd118618118659_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118619118656_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118618118659_))
                                    (let ((___splice128741128742_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118618118659_
                                              '0))))
                                      (let ((_tl118622118666_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128741128742_
                                                '1)))
                                            (_target118620118664_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128741128742_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118622118666_))
                                            (___match128764128765_
                                             _e118616118648_
                                             _hd118615118651_
                                             _tl118614118653_
                                             _e118619118656_
                                             _hd118618118659_
                                             _tl118617118661_
                                             ___splice128741128742_
                                             _target118620118664_
                                             _tl118622118666_)
                                            (___kont128743128744_))))
                                    (___kont128743128744_))))
                            (___kont128743128744_))))
                    (___kont128743128744_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118521_)
        (let* ((___stx128767128768_ _bind118521_)
               (_g118524118541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128767128768_)))))
          (let ((___kont128769128770_
                 (lambda (_L118577_ _L118578_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118578_))
                       (let ((_$e118594_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118577_))))
                         (if _$e118594_
                             _$e118594_
                             (let ((_$e118597_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118577_))))
                               (if _$e118597_
                                   _$e118597_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118577_))))))
                       '#f)))
                (___kont128771128772_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128767128768_))
                (let ((_e118530118553_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128767128768_))))
                  (let ((_tl118528118558_
                         (let () (declare (not safe)) (##cdr _e118530118553_)))
                        (_hd118529118556_
                         (let ()
                           (declare (not safe))
                           (##car _e118530118553_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118529118556_))
                        (let ((_e118533118561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118529118556_))))
                          (let ((_tl118531118566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118533118561_)))
                                (_hd118532118564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118533118561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118531118566_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118528118558_))
                                    (let ((_e118536118569_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118528118558_))))
                                      (let ((_tl118534118574_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118536118569_)))
                                            (_hd118535118572_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118536118569_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118534118574_))
                                            (___kont128769128770_
                                             _hd118535118572_
                                             _hd118532118564_)
                                            (___kont128771128772_))))
                                    (___kont128771128772_))
                                (___kont128771128772_))))
                        (___kont128771128772_))))
                (___kont128771128772_))))))))
