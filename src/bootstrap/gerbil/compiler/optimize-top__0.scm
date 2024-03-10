(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710067693)
  (begin
    (define gxc#&collect-top-level-type-info
      (let ((__tmp128373
             (lambda ()
               (let ((_tbl126280_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp128374 (force gxc#&void)))
                   (declare (not safe))
                   (hash-merge! _tbl126280_ __tmp128374))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126280_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126280_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126280_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126280_
                    '%#define-values
                    gxc#collect-top-level-type-define-values%))
                 _tbl126280_))))
        (declare (not safe))
        (make-promise __tmp128373)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126263_ . _args126265_)
        (let ((__tmp128376
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126265_)
                     (gxc#compile-e__0 _stx126263_)
                     (let ((_arg1126270_ (car _args126265_))
                           (_rest126272_ (cdr _args126265_)))
                       (if (null? _rest126272_)
                           (gxc#compile-e__1 _stx126263_ _arg1126270_)
                           (let ((_arg2126275_ (car _rest126272_))
                                 (_rest126277_ (cdr _rest126272_)))
                             (if (null? _rest126277_)
                                 (gxc#compile-e__2
                                  _stx126263_
                                  _arg1126270_
                                  _arg2126275_)
                                 (apply gxc#compile-e
                                        _stx126263_
                                        _arg1126270_
                                        _arg2126275_
                                        _rest126277_))))))))
              (__tmp128375 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128376
           gxc#current-compile-methods
           __tmp128375))))
    (define gxc#&basic-expression-top-level-type
      (let ((__tmp128377
             (lambda ()
               (let ((_tbl126260_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp128378 (force gxc#&false)))
                   (declare (not safe))
                   (hash-merge! _tbl126260_ __tmp128378))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126260_
                    '%#begin-annotation
                    gxc#basic-expression-type-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126260_
                    '%#call
                    gxc#basic-expression-type-call%))
                 _tbl126260_))))
        (declare (not safe))
        (make-promise __tmp128377)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126243_ . _args126245_)
        (let ((__tmp128380
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126245_)
                     (gxc#compile-e__0 _stx126243_)
                     (let ((_arg1126250_ (car _args126245_))
                           (_rest126252_ (cdr _args126245_)))
                       (if (null? _rest126252_)
                           (gxc#compile-e__1 _stx126243_ _arg1126250_)
                           (let ((_arg2126255_ (car _rest126252_))
                                 (_rest126257_ (cdr _rest126252_)))
                             (if (null? _rest126257_)
                                 (gxc#compile-e__2
                                  _stx126243_
                                  _arg1126250_
                                  _arg2126255_)
                                 (apply gxc#compile-e
                                        _stx126243_
                                        _arg1126250_
                                        _arg2126255_
                                        _rest126257_))))))))
              (__tmp128379 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128380
           gxc#current-compile-methods
           __tmp128379))))
    (define gxc#&collect-type-info
      (let ((__tmp128381
             (lambda ()
               (let ((_tbl126240_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp128382 (force gxc#&void)))
                   (declare (not safe))
                   (hash-merge! _tbl126240_ __tmp128382))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126240_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126240_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#define-values
                    gxc#collect-type-define-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#begin-annotation
                    gxc#collect-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126240_ '%#lambda gxc#collect-body-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#case-lambda
                    gxc#collect-body-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#let-values
                    gxc#collect-type-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#letrec-values
                    gxc#collect-type-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126240_
                    '%#letrec*-values
                    gxc#collect-type-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126240_ '%#call gxc#collect-type-call%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126240_ '%#if gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl126240_ '%#set! gxc#collect-body-setq%))
                 _tbl126240_))))
        (declare (not safe))
        (make-promise __tmp128381)))
    (define gxc#apply-collect-type-info
      (lambda (_stx126223_ . _args126225_)
        (let ((__tmp128384
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126225_)
                     (gxc#compile-e__0 _stx126223_)
                     (let ((_arg1126230_ (car _args126225_))
                           (_rest126232_ (cdr _args126225_)))
                       (if (null? _rest126232_)
                           (gxc#compile-e__1 _stx126223_ _arg1126230_)
                           (let ((_arg2126235_ (car _rest126232_))
                                 (_rest126237_ (cdr _rest126232_)))
                             (if (null? _rest126237_)
                                 (gxc#compile-e__2
                                  _stx126223_
                                  _arg1126230_
                                  _arg2126235_)
                                 (apply gxc#compile-e
                                        _stx126223_
                                        _arg1126230_
                                        _arg2126235_
                                        _rest126237_))))))))
              (__tmp128383 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128384
           gxc#current-compile-methods
           __tmp128383))))
    (define gxc#&basic-expression-type
      (let ((__tmp128385
             (lambda ()
               (let ((_tbl126220_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp128386 (force gxc#&false)))
                   (declare (not safe))
                   (hash-merge! _tbl126220_ __tmp128386))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#begin
                    gxc#basic-expression-type-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#begin-annotation
                    gxc#basic-expression-type-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#lambda
                    gxc#basic-expression-type-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#case-lambda
                    gxc#basic-expression-type-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#let-values
                    gxc#basic-expression-type-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#letrec-values
                    gxc#basic-expression-type-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#letrec*-values
                    gxc#basic-expression-type-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#call
                    gxc#basic-expression-type-call%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126220_
                    '%#ref
                    gxc#basic-expression-type-ref%))
                 _tbl126220_))))
        (declare (not safe))
        (make-promise __tmp128385)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126203_ . _args126205_)
        (let ((__tmp128388
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126205_)
                     (gxc#compile-e__0 _stx126203_)
                     (let ((_arg1126210_ (car _args126205_))
                           (_rest126212_ (cdr _args126205_)))
                       (if (null? _rest126212_)
                           (gxc#compile-e__1 _stx126203_ _arg1126210_)
                           (let ((_arg2126215_ (car _rest126212_))
                                 (_rest126217_ (cdr _rest126212_)))
                             (if (null? _rest126217_)
                                 (gxc#compile-e__2
                                  _stx126203_
                                  _arg1126210_
                                  _arg2126215_)
                                 (apply gxc#compile-e
                                        _stx126203_
                                        _arg1126210_
                                        _arg2126215_
                                        _rest126217_))))))))
              (__tmp128387 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128388
           gxc#current-compile-methods
           __tmp128387))))
    (define gxc#&lift-top-lambdas
      (let ((__tmp128389
             (lambda ()
               (let ((_tbl126200_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp128390 (force gxc#&basic-xform)))
                   (declare (not safe))
                   (hash-merge! _tbl126200_ __tmp128390))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126200_
                    '%#define-values
                    gxc#lift-top-lambda-define-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126200_
                    '%#let-values
                    gxc#lift-top-lambda-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126200_
                    '%#letrec-values
                    gxc#lift-top-lambda-letrec-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl126200_
                    '%#letrec*-values
                    gxc#lift-top-lambda-letrec-values%))
                 _tbl126200_))))
        (declare (not safe))
        (make-promise __tmp128389)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126183_ . _args126185_)
        (let ((__tmp128392
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126185_)
                     (gxc#compile-e__0 _stx126183_)
                     (let ((_arg1126190_ (car _args126185_))
                           (_rest126192_ (cdr _args126185_)))
                       (if (null? _rest126192_)
                           (gxc#compile-e__1 _stx126183_ _arg1126190_)
                           (let ((_arg2126195_ (car _rest126192_))
                                 (_rest126197_ (cdr _rest126192_)))
                             (if (null? _rest126197_)
                                 (gxc#compile-e__2
                                  _stx126183_
                                  _arg1126190_
                                  _arg2126195_)
                                 (apply gxc#compile-e
                                        _stx126183_
                                        _arg1126190_
                                        _arg2126195_
                                        _rest126197_))))))))
              (__tmp128391 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128392
           gxc#current-compile-methods
           __tmp128391))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126086_)
        (let* ((___stx126293126294_ _stx126086_)
               (_g126089126109_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126293126294_)))))
          (let ((___kont126295126296_
                 (lambda (_L126153_ _L126154_)
                   (let ((_sym126172_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126154_))))
                     (if (let ((__tmp128393 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128393 _sym126172_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126172_))
                         (let ((_type126173126175_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126153_))))
                           (if _type126173126175_
                               (let ((_type126178_ _type126173126175_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126172_
                                  _type126178_))
                               '#f))))))
                (___kont126297126298_ (lambda () '#!void)))
            (let ((___match126326126327_
                   (lambda (_e126095126121_
                            _hd126094126124_
                            _tl126093126126_
                            _e126098126129_
                            _hd126097126132_
                            _tl126096126134_
                            _e126101126137_
                            _hd126100126140_
                            _tl126099126142_
                            _e126104126145_
                            _hd126103126148_
                            _tl126102126150_)
                     (let ((_L126153_ _hd126103126148_)
                           (_L126154_ _hd126100126140_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126154_))
                           (___kont126295126296_ _L126153_ _L126154_)
                           (___kont126297126298_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126293126294_))
                  (let ((_e126095126121_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126293126294_))))
                    (let ((_tl126093126126_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126095126121_)))
                          (_hd126094126124_
                           (let ()
                             (declare (not safe))
                             (##car _e126095126121_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126093126126_))
                          (let ((_e126098126129_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126093126126_))))
                            (let ((_tl126096126134_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126098126129_)))
                                  (_hd126097126132_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126098126129_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126097126132_))
                                  (let ((_e126101126137_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126097126132_))))
                                    (let ((_tl126099126142_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126101126137_)))
                                          (_hd126100126140_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126101126137_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126099126142_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126096126134_))
                                              (let ((_e126104126145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126096126134_))))
                                                (let ((_tl126102126150_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126104126145_)))
                                                      (_hd126103126148_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126104126145_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126102126150_))
                                                      (___match126326126327_
                                                       _e126095126121_
                                                       _hd126094126124_
                                                       _tl126093126126_
                                                       _e126098126129_
                                                       _hd126097126132_
                                                       _tl126096126134_
                                                       _e126101126137_
                                                       _hd126100126140_
                                                       _tl126099126142_
                                                       _e126104126145_
                                                       _hd126103126148_
                                                       _tl126102126150_)
                                                      (___kont126297126298_))))
                                              (___kont126297126298_))
                                          (___kont126297126298_))))
                                  (___kont126297126298_))))
                          (___kont126297126298_))))
                  (___kont126297126298_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125942_)
        (let* ((___stx126329126330_ _stx125942_)
               (_g125945125976_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126329126330_)))))
          (let ((___kont126331126332_
                 (lambda (_L126058_ _L126059_)
                   (let ((_sym126075_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126059_))))
                     (if (let ((__tmp128394 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128394 _sym126075_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126075_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126075_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126075_))
                             (let ((_type126076126078_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126058_))))
                               (if _type126076126078_
                                   (let ((_type126081_ _type126076126078_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126075_
                                      _type126081_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126058_)))))
                (___kont126333126334_
                 (lambda (_L126005_ _L126006_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126005_)))))
            (let ((___match126362126363_
                   (lambda (_e125951126026_
                            _hd125950126029_
                            _tl125949126031_
                            _e125954126034_
                            _hd125953126037_
                            _tl125952126039_
                            _e125957126042_
                            _hd125956126045_
                            _tl125955126047_
                            _e125960126050_
                            _hd125959126053_
                            _tl125958126055_)
                     (let ((_L126058_ _hd125959126053_)
                           (_L126059_ _hd125956126045_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126059_))
                           (___kont126331126332_ _L126058_ _L126059_)
                           (___kont126333126334_
                            _hd125959126053_
                            _hd125953126037_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126329126330_))
                  (let ((_e125951126026_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126329126330_))))
                    (let ((_tl125949126031_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125951126026_)))
                          (_hd125950126029_
                           (let ()
                             (declare (not safe))
                             (##car _e125951126026_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125949126031_))
                          (let ((_e125954126034_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125949126031_))))
                            (let ((_tl125952126039_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125954126034_)))
                                  (_hd125953126037_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125954126034_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125953126037_))
                                  (let ((_e125957126042_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125953126037_))))
                                    (let ((_tl125955126047_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125957126042_)))
                                          (_hd125956126045_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125957126042_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125955126047_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125952126039_))
                                              (let ((_e125960126050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125952126039_))))
                                                (let ((_tl125958126055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125960126050_)))
                                                      (_hd125959126053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125960126050_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125958126055_))
                                                      (___match126362126363_
                                                       _e125951126026_
                                                       _hd125950126029_
                                                       _tl125949126031_
                                                       _e125954126034_
                                                       _hd125953126037_
                                                       _tl125952126039_
                                                       _e125957126042_
                                                       _hd125956126045_
                                                       _tl125955126047_
                                                       _e125960126050_
                                                       _hd125959126053_
                                                       _tl125958126055_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125945125976_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125945125976_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125952126039_))
                                              (let ((_e125971125997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125952126039_))))
                                                (let ((_tl125969126002_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125971125997_)))
                                                      (_hd125970126000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125971125997_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125969126002_))
                                                      (___kont126333126334_
                                                       _hd125970126000_
                                                       _hd125953126037_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125945125976_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125945125976_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125952126039_))
                                      (let ((_e125971125997_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125952126039_))))
                                        (let ((_tl125969126002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125971125997_)))
                                              (_hd125970126000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125971125997_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125969126002_))
                                              (___kont126333126334_
                                               _hd125970126000_
                                               _hd125953126037_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125945125976_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125945125976_))))))
                          (let () (declare (not safe)) (_g125945125976_)))))
                  (let () (declare (not safe)) (_g125945125976_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125727_)
        (letrec ((_collect-e125729_
                  (lambda (_hd125886_ _expr125887_)
                    (let* ((___stx126385126386_ _hd125886_)
                           (_g125890125900_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126385126386_)))))
                      (let ((___kont126387126388_
                             (lambda (_L125920_)
                               (let ((_sym125931_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125920_))))
                                 (if (let ((__tmp128395
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128395 _sym125931_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125931_))
                                     (let ((_type125932125934_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125887_))))
                                       (if _type125932125934_
                                           (let ((_type125937_
                                                  _type125932125934_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125931_
                                              _type125937_
                                              '#t))
                                           '#f))))))
                            (___kont126389126390_ (lambda () '#!void)))
                        (let ((___match126398126399_
                               (lambda (_e125895125912_
                                        _hd125894125915_
                                        _tl125893125917_)
                                 (let ((_L125920_ _hd125894125915_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125920_))
                                       (___kont126387126388_ _L125920_)
                                       (___kont126389126390_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126385126386_))
                              (let ((_e125895125912_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126385126386_))))
                                (let ((_tl125893125917_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125895125912_)))
                                      (_hd125894125915_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125895125912_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125893125917_))
                                      (___match126398126399_
                                       _e125895125912_
                                       _hd125894125915_
                                       _tl125893125917_)
                                      (___kont126389126390_))))
                              (___kont126389126390_))))))))
          (let* ((_g125731125766_
                  (lambda (_g125732125763_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125732125763_))))
                 (_g125730125883_
                  (lambda (_g125732125769_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125732125769_))
                        (let ((_e125738125771_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125732125769_))))
                          (let ((_hd125737125774_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125738125771_)))
                                (_tl125736125776_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125738125771_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125736125776_))
                                (let ((_e125741125779_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125736125776_))))
                                  (let ((_hd125740125782_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125741125779_)))
                                        (_tl125739125784_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125741125779_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125740125782_))
                                        (let ((_g128396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125740125782_
                                                  '0))))
                                          (begin
                                            (let ((_g128397_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128396_)
                                                         (##vector-length
                                                          _g128396_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128397_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128397_)))
                                            (let ((_target125742125787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128396_
                                                      0)))
                                                  (_tl125744125789_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128396_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125744125789_))
                                                  (letrec ((_loop125745125792_
                                                            (lambda (_hd125743125795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125749125797_
                             _hd125750125799_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125743125795_))
                          (let ((_e125746125802_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125743125795_))))
                            (let ((_lp-hd125747125805_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125746125802_)))
                                  (_lp-tl125748125807_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125746125802_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125747125805_))
                                  (let ((_e125755125810_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125747125805_))))
                                    (let ((_hd125754125813_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125755125810_)))
                                          (_tl125753125815_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125755125810_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125753125815_))
                                          (let ((_e125758125818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125753125815_))))
                                            (let ((_hd125757125821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125758125818_)))
                                                  (_tl125756125823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125758125818_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125756125823_))
                                                  (let ((__tmp128402
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125757125821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125749125797_)))
                (__tmp128401
                 (let ()
                   (declare (not safe))
                   (cons _hd125754125813_ _hd125750125799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125745125792_
                                                     _lp-tl125748125807_
                                                     __tmp128402
                                                     __tmp128401))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125731125766_
                                                     _g125732125769_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125731125766_
                                             _g125732125769_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125731125766_ _g125732125769_)))))
                          (let ((_expr125751125826_
                                 (reverse _expr125749125797_))
                                (_hd125752125828_ (reverse _hd125750125799_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125739125784_))
                                (let ((_e125761125831_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125739125784_))))
                                  (let ((_hd125760125834_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125761125831_)))
                                        (_tl125759125836_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125761125831_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125759125836_))
                                        ((lambda (_L125839_
                                                  _L125840_
                                                  _L125841_)
                                           (for-each
                                            _collect-e125729_
                                            (let ((__tmp128398
                                                   (lambda (_g125861125864_
                                                            _g125862125866_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125861125864_
                                                             _g125862125866_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128398
                                                      '()
                                                      _L125841_))
                                            (let ((__tmp128399
                                                   (lambda (_g125868125871_
                                                            _g125869125873_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125868125871_
                                                             _g125869125873_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128399
                                                      '()
                                                      _L125840_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128400
                                                   (lambda (_g125875125878_
                                                            _g125876125880_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125875125878_
                                                             _g125876125880_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128400
                                                      '()
                                                      _L125840_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125839_)))
                                         _hd125760125834_
                                         _expr125751125826_
                                         _hd125752125828_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125731125766_ _g125732125769_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125731125766_ _g125732125769_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125745125792_
                                                       _target125742125787_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125731125766_
                                                     _g125732125769_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125731125766_ _g125732125769_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125731125766_ _g125732125769_)))))
                        (let ()
                          (declare (not safe))
                          (_g125731125766_ _g125732125769_))))))
            (declare (not safe))
            (_g125730125883_ _stx125727_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125219_)
        (let* ((___stx126401126402_ _stx125219_)
               (_g125223125338_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126401126402_)))))
          (let ((___kont126403126404_
                 (lambda (_L125677_ _L125678_ _L125679_ _L125680_ _L125681_)
                   (let ((__tmp128406
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125680_)))
                         (__tmp128405
                          (let () (declare (not safe)) (gx#stx-e _L125679_)))
                         (__tmp128404
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125678_)))
                         (__tmp128403
                          (let () (declare (not safe)) (gx#stx-e _L125677_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128406
                      __tmp128405
                      __tmp128404
                      __tmp128403))))
                (___kont126405126406_
                 (lambda (_L125505_ _L125506_ _L125507_ _L125508_)
                   (let ((__tmp128409
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125507_)))
                         (__tmp128408
                          (let () (declare (not safe)) (gx#stx-e _L125506_)))
                         (__tmp128407
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125505_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128409
                      __tmp128408
                      __tmp128407
                      '#f))))
                (___kont126407126408_
                 (lambda (_L125375_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128410
                           (lambda (_g125388125391_ _g125389125393_)
                             (let ()
                               (declare (not safe))
                               (cons _g125388125391_ _g125389125393_)))))
                      (declare (not safe))
                      (foldr1 __tmp128410 '() _L125375_))))))
            (let* ((___match126658126659_
                    (lambda (_e125324125343_
                             _hd125323125346_
                             _tl125322125348_
                             ___splice126409126410_
                             _target125325125351_
                             _tl125327125353_)
                      (letrec ((_loop125328125356_
                                (lambda (_hd125326125359_ _expr125332125361_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125326125359_))
                                      (let ((_e125329125364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125326125359_))))
                                        (let ((_lp-tl125331125369_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125329125364_)))
                                              (_lp-hd125330125367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125329125364_))))
                                          (let ((__tmp128411
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125330125367_
                                                         _expr125332125361_))))
                                            (declare (not safe))
                                            (_loop125328125356_
                                             _lp-tl125331125369_
                                             __tmp128411))))
                                      (let ((_expr125333125372_
                                             (reverse _expr125332125361_)))
                                        (___kont126407126408_
                                         _expr125333125372_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125328125356_ _target125325125351_ '())))))
                   (___match126538126539_
                    (lambda (_e125232125549_
                             _hd125231125552_
                             _tl125230125554_
                             _e125235125557_
                             _hd125234125560_
                             _tl125233125562_
                             _e125238125565_
                             _hd125237125568_
                             _tl125236125570_
                             _e125241125573_
                             _hd125240125576_
                             _tl125239125578_
                             _e125244125581_
                             _hd125243125584_
                             _tl125242125586_
                             _e125247125589_
                             _hd125246125592_
                             _tl125245125594_
                             _e125250125597_
                             _hd125249125600_
                             _tl125248125602_
                             _e125253125605_
                             _hd125252125608_
                             _tl125251125610_
                             _e125256125613_
                             _hd125255125616_
                             _tl125254125618_
                             _e125259125621_
                             _hd125258125624_
                             _tl125257125626_
                             _e125262125629_
                             _hd125261125632_
                             _tl125260125634_
                             _e125265125637_
                             _hd125264125640_
                             _tl125263125642_
                             _e125268125645_
                             _hd125267125648_
                             _tl125266125650_
                             _e125271125653_
                             _hd125270125656_
                             _tl125269125658_
                             _e125274125661_
                             _hd125273125664_
                             _tl125272125666_
                             _e125277125669_
                             _hd125276125672_
                             _tl125275125674_)
                      (let ((_L125677_ _hd125276125672_)
                            (_L125678_ _hd125267125648_)
                            (_L125679_ _hd125258125624_)
                            (_L125680_ _hd125249125600_)
                            (_L125681_ _hd125240125576_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125681_
                               'bind-method!))
                            (___kont126403126404_
                             _L125677_
                             _L125678_
                             _L125679_
                             _L125680_
                             _L125681_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125230125554_))
                                (let ((___splice126409126410_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125230125554_
                                          '0))))
                                  (let ((_tl125327125353_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126409126410_
                                            '1)))
                                        (_target125325125351_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126409126410_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125327125353_))
                                        (___match126658126659_
                                         _e125232125549_
                                         _hd125231125552_
                                         _tl125230125554_
                                         ___splice126409126410_
                                         _target125325125351_
                                         _tl125327125353_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125223125338_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125223125338_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126401126402_))
                  (let ((_e125232125549_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126401126402_))))
                    (let ((_tl125230125554_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125232125549_)))
                          (_hd125231125552_
                           (let ()
                             (declare (not safe))
                             (##car _e125232125549_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125230125554_))
                          (let ((_e125235125557_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125230125554_))))
                            (let ((_tl125233125562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125235125557_)))
                                  (_hd125234125560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125235125557_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125234125560_))
                                  (let ((_e125238125565_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125234125560_))))
                                    (let ((_tl125236125570_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125238125565_)))
                                          (_hd125237125568_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125238125565_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125237125568_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125237125568_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125236125570_))
                                                  (let ((_e125241125573_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125236125570_))))
                                                    (let ((_tl125239125578_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125241125573_)))
                                                          (_hd125240125576_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125241125573_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125239125578_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125233125562_))
                      (let ((_e125244125581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125233125562_))))
                        (let ((_tl125242125586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125244125581_)))
                              (_hd125243125584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125244125581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125243125584_))
                              (let ((_e125247125589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125243125584_))))
                                (let ((_tl125245125594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125247125589_)))
                                      (_hd125246125592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125247125589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125246125592_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125246125592_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125245125594_))
                                              (let ((_e125250125597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125245125594_))))
                                                (let ((_tl125248125602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125250125597_)))
                                                      (_hd125249125600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125250125597_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125248125602_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125242125586_))
                                                          (let ((_e125253125605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125242125586_))))
                    (let ((_tl125251125610_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125253125605_)))
                          (_hd125252125608_
                           (let ()
                             (declare (not safe))
                             (##car _e125253125605_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125252125608_))
                          (let ((_e125256125613_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125252125608_))))
                            (let ((_tl125254125618_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125256125613_)))
                                  (_hd125255125616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125256125613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125255125616_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125255125616_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125254125618_))
                                          (let ((_e125259125621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125254125618_))))
                                            (let ((_tl125257125626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125259125621_)))
                                                  (_hd125258125624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125259125621_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125257125626_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125251125610_))
                                                      (let ((_e125262125629_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125251125610_))))
                (let ((_tl125260125634_
                       (let () (declare (not safe)) (##cdr _e125262125629_)))
                      (_hd125261125632_
                       (let () (declare (not safe)) (##car _e125262125629_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125261125632_))
                      (let ((_e125265125637_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125261125632_))))
                        (let ((_tl125263125642_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125265125637_)))
                              (_hd125264125640_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125265125637_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125264125640_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125264125640_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125263125642_))
                                      (let ((_e125268125645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125263125642_))))
                                        (let ((_tl125266125650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125268125645_)))
                                              (_hd125267125648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125268125645_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125266125650_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125260125634_))
                                                  (let ((_e125271125653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125260125634_))))
                                                    (let ((_tl125269125658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125271125653_)))
                                                          (_hd125270125656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125271125653_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125270125656_))
                                                          (let ((_e125274125661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125270125656_))))
                    (let ((_tl125272125666_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125274125661_)))
                          (_hd125273125664_
                           (let ()
                             (declare (not safe))
                             (##car _e125274125661_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125273125664_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125273125664_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125272125666_))
                                  (let ((_e125277125669_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125272125666_))))
                                    (let ((_tl125275125674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125277125669_)))
                                          (_hd125276125672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125277125669_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125275125674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125269125658_))
                                              (___match126538126539_
                                               _e125232125549_
                                               _hd125231125552_
                                               _tl125230125554_
                                               _e125235125557_
                                               _hd125234125560_
                                               _tl125233125562_
                                               _e125238125565_
                                               _hd125237125568_
                                               _tl125236125570_
                                               _e125241125573_
                                               _hd125240125576_
                                               _tl125239125578_
                                               _e125244125581_
                                               _hd125243125584_
                                               _tl125242125586_
                                               _e125247125589_
                                               _hd125246125592_
                                               _tl125245125594_
                                               _e125250125597_
                                               _hd125249125600_
                                               _tl125248125602_
                                               _e125253125605_
                                               _hd125252125608_
                                               _tl125251125610_
                                               _e125256125613_
                                               _hd125255125616_
                                               _tl125254125618_
                                               _e125259125621_
                                               _hd125258125624_
                                               _tl125257125626_
                                               _e125262125629_
                                               _hd125261125632_
                                               _tl125260125634_
                                               _e125265125637_
                                               _hd125264125640_
                                               _tl125263125642_
                                               _e125268125645_
                                               _hd125267125648_
                                               _tl125266125650_
                                               _e125271125653_
                                               _hd125270125656_
                                               _tl125269125658_
                                               _e125274125661_
                                               _hd125273125664_
                                               _tl125272125666_
                                               _e125277125669_
                                               _hd125276125672_
                                               _tl125275125674_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125230125554_))
                                                  (let ((___splice126409126410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125230125554_
                                                            '0))))
                                                    (let ((_tl125327125353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '1)))
                                                          (_target125325125351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125327125353_))
                                                          (___match126658126659_
                                                           _e125232125549_
                                                           _hd125231125552_
                                                           _tl125230125554_
                                                           ___splice126409126410_
                                                           _target125325125351_
                                                           _tl125327125353_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125223125338_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125230125554_))
                                              (let ((___splice126409126410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125230125554_
                                                        '0))))
                                                (let ((_tl125327125353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '1)))
                                                      (_target125325125351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125327125353_))
                                                      (___match126658126659_
                                                       _e125232125549_
                                                       _hd125231125552_
                                                       _tl125230125554_
                                                       ___splice126409126410_
                                                       _target125325125351_
                                                       _tl125327125353_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125223125338_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125230125554_))
                                      (let ((___splice126409126410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125230125554_
                                                '0))))
                                        (let ((_tl125327125353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '1)))
                                              (_target125325125351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125327125353_))
                                              (___match126658126659_
                                               _e125232125549_
                                               _hd125231125552_
                                               _tl125230125554_
                                               ___splice126409126410_
                                               _target125325125351_
                                               _tl125327125353_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125230125554_))
                                  (let ((___splice126409126410_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125230125554_
                                            '0))))
                                    (let ((_tl125327125353_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126409126410_
                                              '1)))
                                          (_target125325125351_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126409126410_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125327125353_))
                                          (___match126658126659_
                                           _e125232125549_
                                           _hd125231125552_
                                           _tl125230125554_
                                           ___splice126409126410_
                                           _target125325125351_
                                           _tl125327125353_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125223125338_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125223125338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125230125554_))
                              (let ((___splice126409126410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125230125554_
                                        '0))))
                                (let ((_tl125327125353_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126409126410_
                                          '1)))
                                      (_target125325125351_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126409126410_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125327125353_))
                                      (___match126658126659_
                                       _e125232125549_
                                       _hd125231125552_
                                       _tl125230125554_
                                       ___splice126409126410_
                                       _target125325125351_
                                       _tl125327125353_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_)))))
                              (let ()
                                (declare (not safe))
                                (_g125223125338_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125230125554_))
                      (let ((___splice126409126410_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125230125554_ '0))))
                        (let ((_tl125327125353_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '1)))
                              (_target125325125351_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125327125353_))
                              (___match126658126659_
                               _e125232125549_
                               _hd125231125552_
                               _tl125230125554_
                               ___splice126409126410_
                               _target125325125351_
                               _tl125327125353_)
                              (let ()
                                (declare (not safe))
                                (_g125223125338_)))))
                      (let () (declare (not safe)) (_g125223125338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125260125634_))
                                                      (if (let ((__tmp128412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128412 'bind-method!))
                  (let ((_L125505_ _hd125267125648_)
                        (_L125506_ _hd125258125624_)
                        (_L125507_ _hd125249125600_)
                        (_L125508_ _hd125240125576_))
                    (___kont126405126406_
                     _L125505_
                     _L125506_
                     _L125507_
                     _L125508_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125230125554_))
                      (let ((___splice126409126410_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125230125554_ '0))))
                        (let ((_tl125327125353_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '1)))
                              (_target125325125351_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125327125353_))
                              (___match126658126659_
                               _e125232125549_
                               _hd125231125552_
                               _tl125230125554_
                               ___splice126409126410_
                               _target125325125351_
                               _tl125327125353_)
                              (let ()
                                (declare (not safe))
                                (_g125223125338_)))))
                      (let () (declare (not safe)) (_g125223125338_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125230125554_))
                  (let ((___splice126409126410_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125230125554_ '0))))
                    (let ((_tl125327125353_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126409126410_ '1)))
                          (_target125325125351_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126409126410_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125327125353_))
                          (___match126658126659_
                           _e125232125549_
                           _hd125231125552_
                           _tl125230125554_
                           ___splice126409126410_
                           _target125325125351_
                           _tl125327125353_)
                          (let () (declare (not safe)) (_g125223125338_)))))
                  (let () (declare (not safe)) (_g125223125338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125230125554_))
                                                  (let ((___splice126409126410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125230125554_
                                                            '0))))
                                                    (let ((_tl125327125353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '1)))
                                                          (_target125325125351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125327125353_))
                                                          (___match126658126659_
                                                           _e125232125549_
                                                           _hd125231125552_
                                                           _tl125230125554_
                                                           ___splice126409126410_
                                                           _target125325125351_
                                                           _tl125327125353_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125223125338_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125230125554_))
                                          (let ((___splice126409126410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125230125554_
                                                    '0))))
                                            (let ((_tl125327125353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126409126410_
                                                      '1)))
                                                  (_target125325125351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126409126410_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125327125353_))
                                                  (___match126658126659_
                                                   _e125232125549_
                                                   _hd125231125552_
                                                   _tl125230125554_
                                                   ___splice126409126410_
                                                   _target125325125351_
                                                   _tl125327125353_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125223125338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125230125554_))
                                      (let ((___splice126409126410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125230125554_
                                                '0))))
                                        (let ((_tl125327125353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '1)))
                                              (_target125325125351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125327125353_))
                                              (___match126658126659_
                                               _e125232125549_
                                               _hd125231125552_
                                               _tl125230125554_
                                               ___splice126409126410_
                                               _target125325125351_
                                               _tl125327125353_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125230125554_))
                                  (let ((___splice126409126410_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125230125554_
                                            '0))))
                                    (let ((_tl125327125353_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126409126410_
                                              '1)))
                                          (_target125325125351_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126409126410_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125327125353_))
                                          (___match126658126659_
                                           _e125232125549_
                                           _hd125231125552_
                                           _tl125230125554_
                                           ___splice126409126410_
                                           _target125325125351_
                                           _tl125327125353_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125223125338_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125223125338_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125230125554_))
                          (let ((___splice126409126410_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125230125554_
                                    '0))))
                            (let ((_tl125327125353_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126409126410_ '1)))
                                  (_target125325125351_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126409126410_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125327125353_))
                                  (___match126658126659_
                                   _e125232125549_
                                   _hd125231125552_
                                   _tl125230125554_
                                   ___splice126409126410_
                                   _target125325125351_
                                   _tl125327125353_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125223125338_)))))
                          (let () (declare (not safe)) (_g125223125338_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125230125554_))
                  (let ((___splice126409126410_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125230125554_ '0))))
                    (let ((_tl125327125353_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126409126410_ '1)))
                          (_target125325125351_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126409126410_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125327125353_))
                          (___match126658126659_
                           _e125232125549_
                           _hd125231125552_
                           _tl125230125554_
                           ___splice126409126410_
                           _target125325125351_
                           _tl125327125353_)
                          (let () (declare (not safe)) (_g125223125338_)))))
                  (let () (declare (not safe)) (_g125223125338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125230125554_))
                                                      (let ((___splice126409126410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125230125554_ '0))))
                (let ((_tl125327125353_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126409126410_ '1)))
                      (_target125325125351_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126409126410_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125327125353_))
                      (___match126658126659_
                       _e125232125549_
                       _hd125231125552_
                       _tl125230125554_
                       ___splice126409126410_
                       _target125325125351_
                       _tl125327125353_)
                      (let () (declare (not safe)) (_g125223125338_)))))
              (let () (declare (not safe)) (_g125223125338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125230125554_))
                                              (let ((___splice126409126410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125230125554_
                                                        '0))))
                                                (let ((_tl125327125353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '1)))
                                                      (_target125325125351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125327125353_))
                                                      (___match126658126659_
                                                       _e125232125549_
                                                       _hd125231125552_
                                                       _tl125230125554_
                                                       ___splice126409126410_
                                                       _target125325125351_
                                                       _tl125327125353_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125223125338_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125230125554_))
                                          (let ((___splice126409126410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125230125554_
                                                    '0))))
                                            (let ((_tl125327125353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126409126410_
                                                      '1)))
                                                  (_target125325125351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126409126410_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125327125353_))
                                                  (___match126658126659_
                                                   _e125232125549_
                                                   _hd125231125552_
                                                   _tl125230125554_
                                                   ___splice126409126410_
                                                   _target125325125351_
                                                   _tl125327125353_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125223125338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125230125554_))
                                      (let ((___splice126409126410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125230125554_
                                                '0))))
                                        (let ((_tl125327125353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '1)))
                                              (_target125325125351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125327125353_))
                                              (___match126658126659_
                                               _e125232125549_
                                               _hd125231125552_
                                               _tl125230125554_
                                               ___splice126409126410_
                                               _target125325125351_
                                               _tl125327125353_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125230125554_))
                              (let ((___splice126409126410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125230125554_
                                        '0))))
                                (let ((_tl125327125353_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126409126410_
                                          '1)))
                                      (_target125325125351_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126409126410_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125327125353_))
                                      (___match126658126659_
                                       _e125232125549_
                                       _hd125231125552_
                                       _tl125230125554_
                                       ___splice126409126410_
                                       _target125325125351_
                                       _tl125327125353_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_)))))
                              (let ()
                                (declare (not safe))
                                (_g125223125338_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125230125554_))
                      (let ((___splice126409126410_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125230125554_ '0))))
                        (let ((_tl125327125353_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '1)))
                              (_target125325125351_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125327125353_))
                              (___match126658126659_
                               _e125232125549_
                               _hd125231125552_
                               _tl125230125554_
                               ___splice126409126410_
                               _target125325125351_
                               _tl125327125353_)
                              (let ()
                                (declare (not safe))
                                (_g125223125338_)))))
                      (let () (declare (not safe)) (_g125223125338_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125230125554_))
                  (let ((___splice126409126410_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125230125554_ '0))))
                    (let ((_tl125327125353_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126409126410_ '1)))
                          (_target125325125351_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126409126410_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125327125353_))
                          (___match126658126659_
                           _e125232125549_
                           _hd125231125552_
                           _tl125230125554_
                           ___splice126409126410_
                           _target125325125351_
                           _tl125327125353_)
                          (let () (declare (not safe)) (_g125223125338_)))))
                  (let () (declare (not safe)) (_g125223125338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125230125554_))
                                                  (let ((___splice126409126410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125230125554_
                                                            '0))))
                                                    (let ((_tl125327125353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '1)))
                                                          (_target125325125351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125327125353_))
                                                          (___match126658126659_
                                                           _e125232125549_
                                                           _hd125231125552_
                                                           _tl125230125554_
                                                           ___splice126409126410_
                                                           _target125325125351_
                                                           _tl125327125353_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125223125338_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125230125554_))
                                              (let ((___splice126409126410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125230125554_
                                                        '0))))
                                                (let ((_tl125327125353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '1)))
                                                      (_target125325125351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125327125353_))
                                                      (___match126658126659_
                                                       _e125232125549_
                                                       _hd125231125552_
                                                       _tl125230125554_
                                                       ___splice126409126410_
                                                       _target125325125351_
                                                       _tl125327125353_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125223125338_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125230125554_))
                                          (let ((___splice126409126410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125230125554_
                                                    '0))))
                                            (let ((_tl125327125353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126409126410_
                                                      '1)))
                                                  (_target125325125351_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126409126410_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125327125353_))
                                                  (___match126658126659_
                                                   _e125232125549_
                                                   _hd125231125552_
                                                   _tl125230125554_
                                                   ___splice126409126410_
                                                   _target125325125351_
                                                   _tl125327125353_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125223125338_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125230125554_))
                                  (let ((___splice126409126410_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125230125554_
                                            '0))))
                                    (let ((_tl125327125353_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126409126410_
                                              '1)))
                                          (_target125325125351_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126409126410_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125327125353_))
                                          (___match126658126659_
                                           _e125232125549_
                                           _hd125231125552_
                                           _tl125230125554_
                                           ___splice126409126410_
                                           _target125325125351_
                                           _tl125327125353_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125223125338_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125223125338_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125230125554_))
                          (let ((___splice126409126410_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125230125554_
                                    '0))))
                            (let ((_tl125327125353_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126409126410_ '1)))
                                  (_target125325125351_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126409126410_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125327125353_))
                                  (___match126658126659_
                                   _e125232125549_
                                   _hd125231125552_
                                   _tl125230125554_
                                   ___splice126409126410_
                                   _target125325125351_
                                   _tl125327125353_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125223125338_)))))
                          (let () (declare (not safe)) (_g125223125338_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125230125554_))
                      (let ((___splice126409126410_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125230125554_ '0))))
                        (let ((_tl125327125353_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '1)))
                              (_target125325125351_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126409126410_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125327125353_))
                              (___match126658126659_
                               _e125232125549_
                               _hd125231125552_
                               _tl125230125554_
                               ___splice126409126410_
                               _target125325125351_
                               _tl125327125353_)
                              (let ()
                                (declare (not safe))
                                (_g125223125338_)))))
                      (let () (declare (not safe)) (_g125223125338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125230125554_))
                                                      (let ((___splice126409126410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125230125554_ '0))))
                (let ((_tl125327125353_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126409126410_ '1)))
                      (_target125325125351_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126409126410_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125327125353_))
                      (___match126658126659_
                       _e125232125549_
                       _hd125231125552_
                       _tl125230125554_
                       ___splice126409126410_
                       _target125325125351_
                       _tl125327125353_)
                      (let () (declare (not safe)) (_g125223125338_)))))
              (let () (declare (not safe)) (_g125223125338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125230125554_))
                                                  (let ((___splice126409126410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125230125554_
                                                            '0))))
                                                    (let ((_tl125327125353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '1)))
                                                          (_target125325125351_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126409126410_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125327125353_))
                                                          (___match126658126659_
                                                           _e125232125549_
                                                           _hd125231125552_
                                                           _tl125230125554_
                                                           ___splice126409126410_
                                                           _target125325125351_
                                                           _tl125327125353_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125223125338_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125223125338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125230125554_))
                                              (let ((___splice126409126410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125230125554_
                                                        '0))))
                                                (let ((_tl125327125353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '1)))
                                                      (_target125325125351_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126409126410_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125327125353_))
                                                      (___match126658126659_
                                                       _e125232125549_
                                                       _hd125231125552_
                                                       _tl125230125554_
                                                       ___splice126409126410_
                                                       _target125325125351_
                                                       _tl125327125353_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125223125338_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125230125554_))
                                      (let ((___splice126409126410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125230125554_
                                                '0))))
                                        (let ((_tl125327125353_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '1)))
                                              (_target125325125351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126409126410_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125327125353_))
                                              (___match126658126659_
                                               _e125232125549_
                                               _hd125231125552_
                                               _tl125230125554_
                                               ___splice126409126410_
                                               _target125325125351_
                                               _tl125327125353_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125223125338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125230125554_))
                              (let ((___splice126409126410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125230125554_
                                        '0))))
                                (let ((_tl125327125353_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126409126410_
                                          '1)))
                                      (_target125325125351_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126409126410_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125327125353_))
                                      (___match126658126659_
                                       _e125232125549_
                                       _hd125231125552_
                                       _tl125230125554_
                                       ___splice126409126410_
                                       _target125325125351_
                                       _tl125327125353_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125223125338_)))))
                              (let ()
                                (declare (not safe))
                                (_g125223125338_))))))
                  (let () (declare (not safe)) (_g125223125338_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125159_)
        (let* ((___stx126661126662_ _stx125159_)
               (_g125162125175_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126661126662_)))))
          (let ((___kont126663126664_
                 (lambda (_L125203_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125203_))))
                (___kont126665126666_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126661126662_))
                (let ((_e125167125187_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126661126662_))))
                  (let ((_tl125165125192_
                         (let () (declare (not safe)) (##cdr _e125167125187_)))
                        (_hd125166125190_
                         (let ()
                           (declare (not safe))
                           (##car _e125167125187_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125165125192_))
                        (let ((_e125170125195_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125165125192_))))
                          (let ((_tl125168125200_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125170125195_)))
                                (_hd125169125198_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125170125195_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125168125200_))
                                (___kont126663126664_ _hd125169125198_)
                                (___kont126665126666_))))
                        (___kont126665126666_))))
                (___kont126665126666_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125039_)
        (let* ((_g125041125058_
                (lambda (_g125042125055_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125042125055_))))
               (_g125040125156_
                (lambda (_g125042125061_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125042125061_))
                      (let ((_e125047125063_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125042125061_))))
                        (let ((_hd125046125066_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125047125063_)))
                              (_tl125045125068_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125047125063_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125045125068_))
                              (let ((_e125050125071_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125045125068_))))
                                (let ((_hd125049125074_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125050125071_)))
                                      (_tl125048125076_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125050125071_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125048125076_))
                                      (let ((_e125053125079_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125048125076_))))
                                        (let ((_hd125052125082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125053125079_)))
                                              (_tl125051125084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125053125079_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125051125084_))
                                              ((lambda (_L125087_ _L125088_)
                                                 (let* ((___stx126683126684_
                                                         _L125088_)
                                                        (_g125104125115_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126683126684_)))))
                                                   (let ((___kont126685126686_
                                                          (lambda (_L125135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125136_)
                    (let ((_$e125148_
                           (let ((__tmp128413
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125136_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128413))))
                      (if _$e125148_
                          ((lambda (_type-e125151_)
                             (_type-e125151_ _stx125039_ _L125088_))
                           _$e125148_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125087_))))))
                 (___kont126687126688_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126694126695_
                                                            (lambda (_e125110125127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125109125130_
                             _tl125108125132_)
                      (let ((_L125135_ _tl125108125132_)
                            (_L125136_ _hd125109125130_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125136_))
                            (___kont126685126686_ _L125135_ _L125136_)
                            (___kont126687126688_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126683126684_))
                   (let ((_e125110125127_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126683126684_))))
                     (let ((_tl125108125132_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125110125127_)))
                           (_hd125109125130_
                            (let ()
                              (declare (not safe))
                              (##car _e125110125127_))))
                       (___match126694126695_
                        _e125110125127_
                        _hd125109125130_
                        _tl125108125132_)))
                   (___kont126687126688_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125052125082_
                                               _hd125049125074_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125041125058_
                                                 _g125042125061_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125041125058_ _g125042125061_)))))
                              (let ()
                                (declare (not safe))
                                (_g125041125058_ _g125042125061_)))))
                      (let ()
                        (declare (not safe))
                        (_g125041125058_ _g125042125061_))))))
          (declare (not safe))
          (_g125040125156_ _stx125039_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124883_ _ann124884_)
        (let* ((_g124886124923_
                (lambda (_g124887124920_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124887124920_))))
               (_g124885125036_
                (lambda (_g124887124926_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124887124926_))
                      (let ((_e124897124928_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124887124926_))))
                        (let ((_hd124896124931_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124897124928_)))
                              (_tl124895124933_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124897124928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124895124933_))
                              (let ((_e124900124936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124895124933_))))
                                (let ((_hd124899124939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124900124936_)))
                                      (_tl124898124941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124900124936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124898124941_))
                                      (let ((_e124903124944_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124898124941_))))
                                        (let ((_hd124902124947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124903124944_)))
                                              (_tl124901124949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124903124944_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124901124949_))
                                              (let ((_e124906124952_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124901124949_))))
                                                (let ((_hd124905124955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124906124952_)))
                                                      (_tl124904124957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124906124952_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124904124957_))
                                                      (let ((_e124909124960_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124904124957_))))
                (let ((_hd124908124963_
                       (let () (declare (not safe)) (##car _e124909124960_)))
                      (_tl124907124965_
                       (let () (declare (not safe)) (##cdr _e124909124960_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124907124965_))
                      (let ((_e124912124968_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124907124965_))))
                        (let ((_hd124911124971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124912124968_)))
                              (_tl124910124973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124912124968_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124910124973_))
                              (let ((_e124915124976_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124910124973_))))
                                (let ((_hd124914124979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124915124976_)))
                                      (_tl124913124981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124915124976_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124913124981_))
                                      (let ((_e124918124984_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124913124981_))))
                                        (let ((_hd124917124987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124918124984_)))
                                              (_tl124916124989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124918124984_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124916124989_))
                                              ((lambda (_L124992_
                                                        _L124993_
                                                        _L124994_
                                                        _L124995_
                                                        _L124996_
                                                        _L124997_
                                                        _L124998_)
                                                 (let ((_type-id125028_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124998_)))
                                                       (_super125029_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124997_)))
                                                       (_slots125030_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124996_)))
                                                       (_ctor-method125031_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124995_)))
                                                       (_struct?125032_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124994_)))
                                                       (_final?125033_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124993_)))
                                                       (_metaclass125034_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124992_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124992_))
                                                            '#f)))
                                                   (let ((__obj128366
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
                                                      __obj128366
                                                      _type-id125028_
                                                      _super125029_
                                                      _slots125030_
                                                      _ctor-method125031_
                                                      _struct?125032_
                                                      _final?125033_
                                                      _metaclass125034_)
                                                     __obj128366)))
                                               _hd124917124987_
                                               _hd124914124979_
                                               _hd124911124971_
                                               _hd124908124963_
                                               _hd124905124955_
                                               _hd124902124947_
                                               _hd124899124939_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124886124923_
                                                 _g124887124926_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124886124923_ _g124887124926_)))))
                              (let ()
                                (declare (not safe))
                                (_g124886124923_ _g124887124926_)))))
                      (let ()
                        (declare (not safe))
                        (_g124886124923_ _g124887124926_)))))
              (let ()
                (declare (not safe))
                (_g124886124923_ _g124887124926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124886124923_
                                                 _g124887124926_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124886124923_ _g124887124926_)))))
                              (let ()
                                (declare (not safe))
                                (_g124886124923_ _g124887124926_)))))
                      (let ()
                        (declare (not safe))
                        (_g124886124923_ _g124887124926_))))))
          (declare (not safe))
          (_g124885125036_ _ann124884_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124831_ _ann124832_)
        (let* ((_g124834124847_
                (lambda (_g124835124844_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124835124844_))))
               (_g124833124880_
                (lambda (_g124835124850_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124835124850_))
                      (let ((_e124839124852_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124835124850_))))
                        (let ((_hd124838124855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124839124852_)))
                              (_tl124837124857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124839124852_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124837124857_))
                              (let ((_e124842124860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124837124857_))))
                                (let ((_hd124841124863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124842124860_)))
                                      (_tl124840124865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124842124860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124840124865_))
                                      ((lambda (_L124868_)
                                         (let ((__tmp128414
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124868_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128414)))
                                       _hd124841124863_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124834124847_ _g124835124850_)))))
                              (let ()
                                (declare (not safe))
                                (_g124834124847_ _g124835124850_)))))
                      (let ()
                        (declare (not safe))
                        (_g124834124847_ _g124835124850_))))))
          (declare (not safe))
          (_g124833124880_ _ann124832_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124779_ _ann124780_)
        (let* ((_g124782124795_
                (lambda (_g124783124792_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124783124792_))))
               (_g124781124828_
                (lambda (_g124783124798_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124783124798_))
                      (let ((_e124787124800_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124783124798_))))
                        (let ((_hd124786124803_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124787124800_)))
                              (_tl124785124805_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124787124800_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124785124805_))
                              (let ((_e124790124808_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124785124805_))))
                                (let ((_hd124789124811_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124790124808_)))
                                      (_tl124788124813_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124790124808_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124788124813_))
                                      ((lambda (_L124816_)
                                         (let ((__tmp128415
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124816_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128415)))
                                       _hd124789124811_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124782124795_ _g124783124798_)))))
                              (let ()
                                (declare (not safe))
                                (_g124782124795_ _g124783124798_)))))
                      (let ()
                        (declare (not safe))
                        (_g124782124795_ _g124783124798_))))))
          (declare (not safe))
          (_g124781124828_ _ann124780_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124695_ _ann124696_)
        (let* ((_g124698124719_
                (lambda (_g124699124716_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124699124716_))))
               (_g124697124776_
                (lambda (_g124699124722_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124699124722_))
                      (let ((_e124705124724_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124699124722_))))
                        (let ((_hd124704124727_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124705124724_)))
                              (_tl124703124729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124705124724_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124703124729_))
                              (let ((_e124708124732_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124703124729_))))
                                (let ((_hd124707124735_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124708124732_)))
                                      (_tl124706124737_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124708124732_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124706124737_))
                                      (let ((_e124711124740_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124706124737_))))
                                        (let ((_hd124710124743_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124711124740_)))
                                              (_tl124709124745_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124711124740_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124709124745_))
                                              (let ((_e124714124748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124709124745_))))
                                                (let ((_hd124713124751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124714124748_)))
                                                      (_tl124712124753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124714124748_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124712124753_))
                                                      ((lambda (_L124756_
                                                                _L124757_
                                                                _L124758_)
                                                         (let ((__tmp128418
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124758_)))
                       (__tmp128417
                        (let () (declare (not safe)) (gx#stx-e _L124757_)))
                       (__tmp128416
                        (let () (declare (not safe)) (gx#stx-e _L124756_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128418
                    __tmp128417
                    __tmp128416)))
               _hd124713124751_
               _hd124710124743_
               _hd124707124735_)
              (let ()
                (declare (not safe))
                (_g124698124719_ _g124699124722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124698124719_
                                                 _g124699124722_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124698124719_ _g124699124722_)))))
                              (let ()
                                (declare (not safe))
                                (_g124698124719_ _g124699124722_)))))
                      (let ()
                        (declare (not safe))
                        (_g124698124719_ _g124699124722_))))))
          (declare (not safe))
          (_g124697124776_ _ann124696_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx124611_ _ann124612_)
        (let* ((_g124614124635_
                (lambda (_g124615124632_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124615124632_))))
               (_g124613124692_
                (lambda (_g124615124638_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124615124638_))
                      (let ((_e124621124640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124615124638_))))
                        (let ((_hd124620124643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124621124640_)))
                              (_tl124619124645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124621124640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124619124645_))
                              (let ((_e124624124648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124619124645_))))
                                (let ((_hd124623124651_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124624124648_)))
                                      (_tl124622124653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124624124648_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124622124653_))
                                      (let ((_e124627124656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124622124653_))))
                                        (let ((_hd124626124659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124627124656_)))
                                              (_tl124625124661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124627124656_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124625124661_))
                                              (let ((_e124630124664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124625124661_))))
                                                (let ((_hd124629124667_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124630124664_)))
                                                      (_tl124628124669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124630124664_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124628124669_))
                                                      ((lambda (_L124672_
                                                                _L124673_
                                                                _L124674_)
                                                         (let ((__tmp128421
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124674_)))
                       (__tmp128420
                        (let () (declare (not safe)) (gx#stx-e _L124673_)))
                       (__tmp128419
                        (let () (declare (not safe)) (gx#stx-e _L124672_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128421
                    __tmp128420
                    __tmp128419)))
               _hd124629124667_
               _hd124626124659_
               _hd124623124651_)
              (let ()
                (declare (not safe))
                (_g124614124635_ _g124615124638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124614124635_
                                                 _g124615124638_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124614124635_ _g124615124638_)))))
                              (let ()
                                (declare (not safe))
                                (_g124614124635_ _g124615124638_)))))
                      (let ()
                        (declare (not safe))
                        (_g124614124635_ _g124615124638_))))))
          (declare (not safe))
          (_g124613124692_ _ann124612_))))
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
      (lambda (_stx123731_)
        (let* ((___stx126697126698_ _stx123731_)
               (_g123737123933_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126697126698_)))))
          (let ((___kont126699126700_
                 (lambda (_L124599_)
                   (let ((__obj128367
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128367
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124599_))
                      '#f)
                     __obj128367)))
                (___kont126701126702_
                 (lambda (_L124526_
                          _L124527_
                          _L124528_
                          _L124529_
                          _L124530_
                          _L124531_)
                   (let* ((_tab124581_
                           (let () (declare (not safe)) (gx#stx-e _L124528_)))
                          (_keys124583_
                           (if _tab124581_
                               (filter values (vector->list _tab124581_))
                               '#f)))
                     (let ((__tmp128422
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124527_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys124583_
                        __tmp128422)))))
                (___kont126703126704_
                 (lambda (_L124259_
                          _L124260_
                          _L124261_
                          _L124262_
                          _L124263_
                          _L124264_
                          _L124265_
                          _L124266_
                          _L124267_
                          _L124268_)
                   (let ((__tmp128424
                          (map gx#stx-e
                               (let ((__tmp128425
                                      (lambda (_g124361124364_ _g124362124366_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124361124364_
                                                _g124362124366_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128425 '() _L124261_))))
                         (__tmp128423
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124265_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128424
                      __tmp128423))))
                (___kont126707126708_
                 (lambda (_L123969_)
                   (let ((__obj128368
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128368
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123969_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123969_)))
                     __obj128368)))
                (___kont126709126710_
                 (lambda (_L123946_)
                   (let ((__obj128369
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128369
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123946_))
                      '#f)
                     __obj128369))))
            (let* ((___match127016127017_
                    (lambda (_e123924123961_ _hd123923123964_ _tl123922123966_)
                      (let ((_L123969_ _tl123922123966_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123969_))
                            (___kont126707126708_ _L123969_)
                            (___kont126709126710_ _tl123922123966_)))))
                   (___match127010127011_
                    (lambda (_e123818123983_
                             _hd123817123986_
                             _tl123816123988_
                             _e123821123991_
                             _hd123820123994_
                             _tl123819123996_
                             _e123824123999_
                             _hd123823124002_
                             _tl123822124004_
                             _e123827124007_
                             _hd123826124010_
                             _tl123825124012_
                             _e123830124015_
                             _hd123829124018_
                             _tl123828124020_
                             _e123833124023_
                             _hd123832124026_
                             _tl123831124028_
                             _e123836124031_
                             _hd123835124034_
                             _tl123834124036_
                             _e123839124039_
                             _hd123838124042_
                             _tl123837124044_
                             _e123842124047_
                             _hd123841124050_
                             _tl123840124052_
                             _e123845124055_
                             _hd123844124058_
                             _tl123843124060_
                             _e123848124063_
                             _hd123847124066_
                             _tl123846124068_
                             _e123851124071_
                             _hd123850124074_
                             _tl123849124076_
                             _e123854124079_
                             _hd123853124082_
                             _tl123852124084_
                             _e123857124087_
                             _hd123856124090_
                             _tl123855124092_
                             ___splice126705126706_
                             _target123858124095_
                             _tl123860124097_
                             _e123875124100_
                             _hd123874124103_
                             _tl123873124105_
                             _e123878124108_
                             _hd123877124111_
                             _tl123876124113_
                             _e123881124116_
                             _hd123880124119_
                             _tl123879124121_)
                      (letrec ((_loop123861124124_
                                (lambda (_hd123859124127_
                                         _-absent-value123865124129_
                                         _key123866124131_
                                         _-xkwvar123867124133_
                                         _-hash-ref123868124135_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123859124127_))
                                      (let ((_e123862124138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123859124127_))))
                                        (let ((_lp-tl123864124143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123862124138_)))
                                              (_lp-hd123863124141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123862124138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123863124141_))
                                              (let ((_e123884124146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123863124141_))))
                                                (let ((_tl123882124151_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123884124146_)))
                                                      (_hd123883124149_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123884124146_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123883124149_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123883124149_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123882124151_))
                      (let ((_e123887124154_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123882124151_))))
                        (let ((_tl123885124159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123887124154_)))
                              (_hd123886124157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123887124154_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123886124157_))
                              (let ((_e123890124162_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123886124157_))))
                                (let ((_tl123888124167_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123890124162_)))
                                      (_hd123889124165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123890124162_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123889124165_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123889124165_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123888124167_))
                                              (let ((_e123893124170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123888124167_))))
                                                (let ((_tl123891124175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123893124170_)))
                                                      (_hd123892124173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123893124170_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123891124175_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123885124159_))
                                                          (let ((_e123896124178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123885124159_))))
                    (let ((_tl123894124183_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123896124178_)))
                          (_hd123895124181_
                           (let ()
                             (declare (not safe))
                             (##car _e123896124178_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123895124181_))
                          (let ((_e123899124186_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123895124181_))))
                            (let ((_tl123897124191_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123899124186_)))
                                  (_hd123898124189_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123899124186_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123898124189_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123898124189_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123897124191_))
                                          (let ((_e123902124194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123897124191_))))
                                            (let ((_tl123900124199_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123902124194_)))
                                                  (_hd123901124197_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123902124194_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123900124199_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123894124183_))
                                                      (let ((_e123905124202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123894124183_))))
                (let ((_tl123903124207_
                       (let () (declare (not safe)) (##cdr _e123905124202_)))
                      (_hd123904124205_
                       (let () (declare (not safe)) (##car _e123905124202_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123904124205_))
                      (let ((_e123908124210_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123904124205_))))
                        (let ((_tl123906124215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123908124210_)))
                              (_hd123907124213_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123908124210_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123907124213_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123907124213_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123906124215_))
                                      (let ((_e123911124218_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123906124215_))))
                                        (let ((_tl123909124223_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123911124218_)))
                                              (_hd123910124221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123911124218_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123909124223_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123903124207_))
                                                  (let ((_e123914124226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123903124207_))))
                                                    (let ((_tl123912124231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123914124226_)))
                                                          (_hd123913124229_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123914124226_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123913124229_))
                                                          (let ((_e123917124234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123913124229_))))
                    (let ((_tl123915124239_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123917124234_)))
                          (_hd123916124237_
                           (let ()
                             (declare (not safe))
                             (##car _e123917124234_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123916124237_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123916124237_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123915124239_))
                                  (let ((_e123920124242_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123915124239_))))
                                    (let ((_tl123918124247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123920124242_)))
                                          (_hd123919124245_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123920124242_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123918124247_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123912124231_))
                                              (let ((__tmp128440
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123919124245_
                                                             _-absent-value123865124129_)))
                                                    (__tmp128439
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123910124221_
                                                             _key123866124131_)))
                                                    (__tmp128438
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123901124197_
                                                             _-xkwvar123867124133_)))
                                                    (__tmp128437
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123892124173_
                                                             _-hash-ref123868124135_))))
                                                (declare (not safe))
                                                (_loop123861124124_
                                                 _lp-tl123864124143_
                                                 __tmp128440
                                                 __tmp128439
                                                 __tmp128438
                                                 __tmp128437))
                                              (___match127016127017_
                                               _e123818123983_
                                               _hd123817123986_
                                               _tl123816123988_))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))
                              (___match127016127017_
                               _e123818123983_
                               _hd123817123986_
                               _tl123816123988_))
                          (___match127016127017_
                           _e123818123983_
                           _hd123817123986_
                           _tl123816123988_))))
                  (___match127016127017_
                   _e123818123983_
                   _hd123817123986_
                   _tl123816123988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))
                                              (___match127016127017_
                                               _e123818123983_
                                               _hd123817123986_
                                               _tl123816123988_))))
                                      (___match127016127017_
                                       _e123818123983_
                                       _hd123817123986_
                                       _tl123816123988_))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))
                              (___match127016127017_
                               _e123818123983_
                               _hd123817123986_
                               _tl123816123988_))))
                      (___match127016127017_
                       _e123818123983_
                       _hd123817123986_
                       _tl123816123988_))))
              (___match127016127017_
               _e123818123983_
               _hd123817123986_
               _tl123816123988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))
                                      (___match127016127017_
                                       _e123818123983_
                                       _hd123817123986_
                                       _tl123816123988_))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))))
                          (___match127016127017_
                           _e123818123983_
                           _hd123817123986_
                           _tl123816123988_))))
                  (___match127016127017_
                   _e123818123983_
                   _hd123817123986_
                   _tl123816123988_))
              (___match127016127017_
               _e123818123983_
               _hd123817123986_
               _tl123816123988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127016127017_
                                               _e123818123983_
                                               _hd123817123986_
                                               _tl123816123988_))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))
                                      (___match127016127017_
                                       _e123818123983_
                                       _hd123817123986_
                                       _tl123816123988_))))
                              (___match127016127017_
                               _e123818123983_
                               _hd123817123986_
                               _tl123816123988_))))
                      (___match127016127017_
                       _e123818123983_
                       _hd123817123986_
                       _tl123816123988_))
                  (___match127016127017_
                   _e123818123983_
                   _hd123817123986_
                   _tl123816123988_))
              (___match127016127017_
               _e123818123983_
               _hd123817123986_
               _tl123816123988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127016127017_
                                               _e123818123983_
                                               _hd123817123986_
                                               _tl123816123988_))))
                                      (let ((_-hash-ref123872124256_
                                             (reverse _-hash-ref123868124135_))
                                            (_-xkwvar123871124254_
                                             (reverse _-xkwvar123867124133_))
                                            (_key123870124252_
                                             (reverse _key123866124131_))
                                            (_-absent-value123869124250_
                                             (reverse _-absent-value123865124129_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123825124012_))
                                            (let ((_L124259_ _hd123880124119_)
                                                  (_L124260_
                                                   _-absent-value123869124250_)
                                                  (_L124261_ _key123870124252_)
                                                  (_L124262_
                                                   _-xkwvar123871124254_)
                                                  (_L124263_
                                                   _-hash-ref123872124256_)
                                                  (_L124264_ _hd123856124090_)
                                                  (_L124265_ _hd123847124066_)
                                                  (_L124266_ _hd123838124042_)
                                                  (_L124267_ _tl123822124004_)
                                                  (_L124268_ _hd123823124002_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124268_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124267_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124266_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124268_
                                                          _L124264_))
                                                       (let ((__tmp128435
                                                              (let ((__tmp128436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124321124324_ _g124322124326_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124321124324_ _g124322124326_)))))
                        (declare (not safe))
                        (foldr1 __tmp128436 '() _L124261_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128435))
               (let ((__tmp128434
                      (lambda (_g124328124330_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124328124330_
                           'hash-ref))))
                     (__tmp128432
                      (let ((__tmp128433
                             (lambda (_g124332124335_ _g124333124337_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124332124335_ _g124333124337_)))))
                        (declare (not safe))
                        (foldr1 __tmp128433 '() _L124263_))))
                 (declare (not safe))
                 (andmap1 __tmp128434 __tmp128432))
               (let ((__tmp128431
                      (lambda (_g124339124341_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124339124341_
                           'absent-value))))
                     (__tmp128429
                      (let ((__tmp128430
                             (lambda (_g124343124346_ _g124344124348_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124343124346_ _g124344124348_)))))
                        (declare (not safe))
                        (foldr1 __tmp128430 '() _L124260_))))
                 (declare (not safe))
                 (andmap1 __tmp128431 __tmp128429))
               (let ((__tmp128428
                      (lambda (_g124350124352_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124350124352_ _L124268_))))
                     (__tmp128426
                      (let ((__tmp128427
                             (lambda (_g124354124357_ _g124355124359_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124354124357_ _g124355124359_)))))
                        (declare (not safe))
                        (foldr1 __tmp128427 '() _L124262_))))
                 (declare (not safe))
                 (andmap1 __tmp128428 __tmp128426)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126703126704_
                                                   _L124259_
                                                   _L124260_
                                                   _L124261_
                                                   _L124262_
                                                   _L124263_
                                                   _L124264_
                                                   _L124265_
                                                   _L124266_
                                                   _L124267_
                                                   _L124268_)
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_)))
                                            (___match127016127017_
                                             _e123818123983_
                                             _hd123817123986_
                                             _tl123816123988_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123861124124_
                           _target123858124095_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126882126883_
                    (lambda (_e123818123983_
                             _hd123817123986_
                             _tl123816123988_
                             _e123821123991_
                             _hd123820123994_
                             _tl123819123996_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123820123994_))
                          (let ((_e123824123999_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123820123994_))))
                            (let ((_tl123822124004_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123824123999_)))
                                  (_hd123823124002_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123824123999_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123819123996_))
                                  (let ((_e123827124007_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123819123996_))))
                                    (let ((_tl123825124012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123827124007_)))
                                          (_hd123826124010_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123827124007_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123826124010_))
                                          (let ((_e123830124015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123826124010_))))
                                            (let ((_tl123828124020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123830124015_)))
                                                  (_hd123829124018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123830124015_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123829124018_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123829124018_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123828124020_))
                                                          (let ((_e123833124023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123828124020_))))
                    (let ((_tl123831124028_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123833124023_)))
                          (_hd123832124026_
                           (let ()
                             (declare (not safe))
                             (##car _e123833124023_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123832124026_))
                          (let ((_e123836124031_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123832124026_))))
                            (let ((_tl123834124036_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123836124031_)))
                                  (_hd123835124034_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123836124031_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123835124034_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123835124034_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123834124036_))
                                          (let ((_e123839124039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123834124036_))))
                                            (let ((_tl123837124044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123839124039_)))
                                                  (_hd123838124042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123839124039_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123837124044_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123831124028_))
                                                      (let ((_e123842124047_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123831124028_))))
                (let ((_tl123840124052_
                       (let () (declare (not safe)) (##cdr _e123842124047_)))
                      (_hd123841124050_
                       (let () (declare (not safe)) (##car _e123842124047_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123841124050_))
                      (let ((_e123845124055_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123841124050_))))
                        (let ((_tl123843124060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123845124055_)))
                              (_hd123844124058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123845124055_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123844124058_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123844124058_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123843124060_))
                                      (let ((_e123848124063_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123843124060_))))
                                        (let ((_tl123846124068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123848124063_)))
                                              (_hd123847124066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123848124063_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123846124068_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123840124052_))
                                                  (let ((_e123851124071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123840124052_))))
                                                    (let ((_tl123849124076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123851124071_)))
                                                          (_hd123850124074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123851124071_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123850124074_))
                                                          (let ((_e123854124079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123850124074_))))
                    (let ((_tl123852124084_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123854124079_)))
                          (_hd123853124082_
                           (let ()
                             (declare (not safe))
                             (##car _e123854124079_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123853124082_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123853124082_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123852124084_))
                                  (let ((_e123857124087_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123852124084_))))
                                    (let ((_tl123855124092_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123857124087_)))
                                          (_hd123856124090_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123857124087_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123855124092_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123849124076_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123849124076_))
                                                        '1)
                                                  (let ((___splice126705126706_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123849124076_
                                                            '1))))
                                                    (let ((_tl123860124097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126705126706_
                                                              '1)))
                                                          (_target123858124095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126705126706_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123860124097_))
                                                          (let ((_e123875124100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123860124097_))))
                    (let ((_tl123873124105_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123875124100_)))
                          (_hd123874124103_
                           (let ()
                             (declare (not safe))
                             (##car _e123875124100_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123874124103_))
                          (let ((_e123878124108_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123874124103_))))
                            (let ((_tl123876124113_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123878124108_)))
                                  (_hd123877124111_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123878124108_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123877124111_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123877124111_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123876124113_))
                                          (let ((_e123881124116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123876124113_))))
                                            (let ((_tl123879124121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123881124116_)))
                                                  (_hd123880124119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123881124116_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123879124121_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123873124105_))
                                                      (___match127010127011_
                                                       _e123818123983_
                                                       _hd123817123986_
                                                       _tl123816123988_
                                                       _e123821123991_
                                                       _hd123820123994_
                                                       _tl123819123996_
                                                       _e123824123999_
                                                       _hd123823124002_
                                                       _tl123822124004_
                                                       _e123827124007_
                                                       _hd123826124010_
                                                       _tl123825124012_
                                                       _e123830124015_
                                                       _hd123829124018_
                                                       _tl123828124020_
                                                       _e123833124023_
                                                       _hd123832124026_
                                                       _tl123831124028_
                                                       _e123836124031_
                                                       _hd123835124034_
                                                       _tl123834124036_
                                                       _e123839124039_
                                                       _hd123838124042_
                                                       _tl123837124044_
                                                       _e123842124047_
                                                       _hd123841124050_
                                                       _tl123840124052_
                                                       _e123845124055_
                                                       _hd123844124058_
                                                       _tl123843124060_
                                                       _e123848124063_
                                                       _hd123847124066_
                                                       _tl123846124068_
                                                       _e123851124071_
                                                       _hd123850124074_
                                                       _tl123849124076_
                                                       _e123854124079_
                                                       _hd123853124082_
                                                       _tl123852124084_
                                                       _e123857124087_
                                                       _hd123856124090_
                                                       _tl123855124092_
                                                       ___splice126705126706_
                                                       _target123858124095_
                                                       _tl123860124097_
                                                       _e123875124100_
                                                       _hd123874124103_
                                                       _tl123873124105_
                                                       _e123878124108_
                                                       _hd123877124111_
                                                       _tl123876124113_
                                                       _e123881124116_
                                                       _hd123880124119_
                                                       _tl123879124121_)
                                                      (___match127016127017_
                                                       _e123818123983_
                                                       _hd123817123986_
                                                       _tl123816123988_))
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))
                                      (___match127016127017_
                                       _e123818123983_
                                       _hd123817123986_
                                       _tl123816123988_))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))))
                          (___match127016127017_
                           _e123818123983_
                           _hd123817123986_
                           _tl123816123988_))))
                  (___match127016127017_
                   _e123818123983_
                   _hd123817123986_
                   _tl123816123988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))
                                              (___match127016127017_
                                               _e123818123983_
                                               _hd123817123986_
                                               _tl123816123988_))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))
                              (___match127016127017_
                               _e123818123983_
                               _hd123817123986_
                               _tl123816123988_))
                          (___match127016127017_
                           _e123818123983_
                           _hd123817123986_
                           _tl123816123988_))))
                  (___match127016127017_
                   _e123818123983_
                   _hd123817123986_
                   _tl123816123988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))
                                              (___match127016127017_
                                               _e123818123983_
                                               _hd123817123986_
                                               _tl123816123988_))))
                                      (___match127016127017_
                                       _e123818123983_
                                       _hd123817123986_
                                       _tl123816123988_))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))
                              (___match127016127017_
                               _e123818123983_
                               _hd123817123986_
                               _tl123816123988_))))
                      (___match127016127017_
                       _e123818123983_
                       _hd123817123986_
                       _tl123816123988_))))
              (___match127016127017_
               _e123818123983_
               _hd123817123986_
               _tl123816123988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))
                                      (___match127016127017_
                                       _e123818123983_
                                       _hd123817123986_
                                       _tl123816123988_))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))))
                          (___match127016127017_
                           _e123818123983_
                           _hd123817123986_
                           _tl123816123988_))))
                  (___match127016127017_
                   _e123818123983_
                   _hd123817123986_
                   _tl123816123988_))
              (___match127016127017_
               _e123818123983_
               _hd123817123986_
               _tl123816123988_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127016127017_
                                                   _e123818123983_
                                                   _hd123817123986_
                                                   _tl123816123988_))))
                                          (___match127016127017_
                                           _e123818123983_
                                           _hd123817123986_
                                           _tl123816123988_))))
                                  (___match127016127017_
                                   _e123818123983_
                                   _hd123817123986_
                                   _tl123816123988_))))
                          (___match127016127017_
                           _e123818123983_
                           _hd123817123986_
                           _tl123816123988_))))
                   (___match126870126871_
                    (lambda (_e123751124374_
                             _hd123750124377_
                             _tl123749124379_
                             _e123754124382_
                             _hd123753124385_
                             _tl123752124387_
                             _e123757124390_
                             _hd123756124393_
                             _tl123755124395_
                             _e123760124398_
                             _hd123759124401_
                             _tl123758124403_
                             _e123763124406_
                             _hd123762124409_
                             _tl123761124411_
                             _e123766124414_
                             _hd123765124417_
                             _tl123764124419_
                             _e123769124422_
                             _hd123768124425_
                             _tl123767124427_
                             _e123772124430_
                             _hd123771124433_
                             _tl123770124435_
                             _e123775124438_
                             _hd123774124441_
                             _tl123773124443_
                             _e123778124446_
                             _hd123777124449_
                             _tl123776124451_
                             _e123781124454_
                             _hd123780124457_
                             _tl123779124459_
                             _e123784124462_
                             _hd123783124465_
                             _tl123782124467_
                             _e123787124470_
                             _hd123786124473_
                             _tl123785124475_
                             _e123790124478_
                             _hd123789124481_
                             _tl123788124483_
                             _e123793124486_
                             _hd123792124489_
                             _tl123791124491_
                             _e123796124494_
                             _hd123795124497_
                             _tl123794124499_
                             _e123799124502_
                             _hd123798124505_
                             _tl123797124507_
                             _e123802124510_
                             _hd123801124513_
                             _tl123800124515_
                             _e123805124518_
                             _hd123804124521_
                             _tl123803124523_)
                      (let ((_L124526_ _hd123804124521_)
                            (_L124527_ _hd123795124497_)
                            (_L124528_ _hd123786124473_)
                            (_L124529_ _hd123777124449_)
                            (_L124530_ _hd123768124425_)
                            (_L124531_ _hd123753124385_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124531_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124530_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124529_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124531_ _L124526_)))
                            (___kont126701126702_
                             _L124526_
                             _L124527_
                             _L124528_
                             _L124529_
                             _L124530_
                             _L124531_)
                            (___match126882126883_
                             _e123751124374_
                             _hd123750124377_
                             _tl123749124379_
                             _e123754124382_
                             _hd123753124385_
                             _tl123752124387_)))))
                   (___match126724126725_
                    (lambda (_e123751124374_ _hd123750124377_ _tl123749124379_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123749124379_))
                          (let ((_e123754124382_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123749124379_))))
                            (let ((_tl123752124387_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123754124382_)))
                                  (_hd123753124385_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123754124382_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123752124387_))
                                  (let ((_e123757124390_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123752124387_))))
                                    (let ((_tl123755124395_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123757124390_)))
                                          (_hd123756124393_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123757124390_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123756124393_))
                                          (let ((_e123760124398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123756124393_))))
                                            (let ((_tl123758124403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123760124398_)))
                                                  (_hd123759124401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123760124398_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123759124401_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123759124401_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123758124403_))
                                                          (let ((_e123763124406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123758124403_))))
                    (let ((_tl123761124411_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123763124406_)))
                          (_hd123762124409_
                           (let ()
                             (declare (not safe))
                             (##car _e123763124406_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123762124409_))
                          (let ((_e123766124414_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123762124409_))))
                            (let ((_tl123764124419_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123766124414_)))
                                  (_hd123765124417_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123766124414_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123765124417_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123765124417_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123764124419_))
                                          (let ((_e123769124422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123764124419_))))
                                            (let ((_tl123767124427_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123769124422_)))
                                                  (_hd123768124425_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123769124422_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123767124427_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123761124411_))
                                                      (let ((_e123772124430_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123761124411_))))
                (let ((_tl123770124435_
                       (let () (declare (not safe)) (##cdr _e123772124430_)))
                      (_hd123771124433_
                       (let () (declare (not safe)) (##car _e123772124430_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123771124433_))
                      (let ((_e123775124438_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123771124433_))))
                        (let ((_tl123773124443_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123775124438_)))
                              (_hd123774124441_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123775124438_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123774124441_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123774124441_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123773124443_))
                                      (let ((_e123778124446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123773124443_))))
                                        (let ((_tl123776124451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123778124446_)))
                                              (_hd123777124449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123778124446_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123776124451_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123770124435_))
                                                  (let ((_e123781124454_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123770124435_))))
                                                    (let ((_tl123779124459_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123781124454_)))
                                                          (_hd123780124457_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123781124454_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123780124457_))
                                                          (let ((_e123784124462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123780124457_))))
                    (let ((_tl123782124467_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123784124462_)))
                          (_hd123783124465_
                           (let ()
                             (declare (not safe))
                             (##car _e123784124462_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123783124465_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123783124465_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123782124467_))
                                  (let ((_e123787124470_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123782124467_))))
                                    (let ((_tl123785124475_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123787124470_)))
                                          (_hd123786124473_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123787124470_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123785124475_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123779124459_))
                                              (let ((_e123790124478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123779124459_))))
                                                (let ((_tl123788124483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123790124478_)))
                                                      (_hd123789124481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123790124478_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123789124481_))
                                                      (let ((_e123793124486_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123789124481_))))
                (let ((_tl123791124491_
                       (let () (declare (not safe)) (##cdr _e123793124486_)))
                      (_hd123792124489_
                       (let () (declare (not safe)) (##car _e123793124486_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123792124489_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123792124489_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123791124491_))
                              (let ((_e123796124494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123791124491_))))
                                (let ((_tl123794124499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123796124494_)))
                                      (_hd123795124497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123796124494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123794124499_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123788124483_))
                                          (let ((_e123799124502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123788124483_))))
                                            (let ((_tl123797124507_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123799124502_)))
                                                  (_hd123798124505_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123799124502_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123798124505_))
                                                  (let ((_e123802124510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123798124505_))))
                                                    (let ((_tl123800124515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123802124510_)))
                                                          (_hd123801124513_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123802124510_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123801124513_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123801124513_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123800124515_))
                          (let ((_e123805124518_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123800124515_))))
                            (let ((_tl123803124523_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123805124518_)))
                                  (_hd123804124521_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123805124518_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123803124523_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123797124507_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123755124395_))
                                          (___match126870126871_
                                           _e123751124374_
                                           _hd123750124377_
                                           _tl123749124379_
                                           _e123754124382_
                                           _hd123753124385_
                                           _tl123752124387_
                                           _e123757124390_
                                           _hd123756124393_
                                           _tl123755124395_
                                           _e123760124398_
                                           _hd123759124401_
                                           _tl123758124403_
                                           _e123763124406_
                                           _hd123762124409_
                                           _tl123761124411_
                                           _e123766124414_
                                           _hd123765124417_
                                           _tl123764124419_
                                           _e123769124422_
                                           _hd123768124425_
                                           _tl123767124427_
                                           _e123772124430_
                                           _hd123771124433_
                                           _tl123770124435_
                                           _e123775124438_
                                           _hd123774124441_
                                           _tl123773124443_
                                           _e123778124446_
                                           _hd123777124449_
                                           _tl123776124451_
                                           _e123781124454_
                                           _hd123780124457_
                                           _tl123779124459_
                                           _e123784124462_
                                           _hd123783124465_
                                           _tl123782124467_
                                           _e123787124470_
                                           _hd123786124473_
                                           _tl123785124475_
                                           _e123790124478_
                                           _hd123789124481_
                                           _tl123788124483_
                                           _e123793124486_
                                           _hd123792124489_
                                           _tl123791124491_
                                           _e123796124494_
                                           _hd123795124497_
                                           _tl123794124499_
                                           _e123799124502_
                                           _hd123798124505_
                                           _tl123797124507_
                                           _e123802124510_
                                           _hd123801124513_
                                           _tl123800124515_
                                           _e123805124518_
                                           _hd123804124521_
                                           _tl123803124523_)
                                          (___match126882126883_
                                           _e123751124374_
                                           _hd123750124377_
                                           _tl123749124379_
                                           _e123754124382_
                                           _hd123753124385_
                                           _tl123752124387_))
                                      (___match126882126883_
                                       _e123751124374_
                                       _hd123750124377_
                                       _tl123749124379_
                                       _e123754124382_
                                       _hd123753124385_
                                       _tl123752124387_))
                                  (___match126882126883_
                                   _e123751124374_
                                   _hd123750124377_
                                   _tl123749124379_
                                   _e123754124382_
                                   _hd123753124385_
                                   _tl123752124387_))))
                          (___match126882126883_
                           _e123751124374_
                           _hd123750124377_
                           _tl123749124379_
                           _e123754124382_
                           _hd123753124385_
                           _tl123752124387_))
                      (___match126882126883_
                       _e123751124374_
                       _hd123750124377_
                       _tl123749124379_
                       _e123754124382_
                       _hd123753124385_
                       _tl123752124387_))
                  (___match126882126883_
                   _e123751124374_
                   _hd123750124377_
                   _tl123749124379_
                   _e123754124382_
                   _hd123753124385_
                   _tl123752124387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126882126883_
                                                   _e123751124374_
                                                   _hd123750124377_
                                                   _tl123749124379_
                                                   _e123754124382_
                                                   _hd123753124385_
                                                   _tl123752124387_))))
                                          (___match126882126883_
                                           _e123751124374_
                                           _hd123750124377_
                                           _tl123749124379_
                                           _e123754124382_
                                           _hd123753124385_
                                           _tl123752124387_))
                                      (___match126882126883_
                                       _e123751124374_
                                       _hd123750124377_
                                       _tl123749124379_
                                       _e123754124382_
                                       _hd123753124385_
                                       _tl123752124387_))))
                              (___match126882126883_
                               _e123751124374_
                               _hd123750124377_
                               _tl123749124379_
                               _e123754124382_
                               _hd123753124385_
                               _tl123752124387_))
                          (___match126882126883_
                           _e123751124374_
                           _hd123750124377_
                           _tl123749124379_
                           _e123754124382_
                           _hd123753124385_
                           _tl123752124387_))
                      (___match126882126883_
                       _e123751124374_
                       _hd123750124377_
                       _tl123749124379_
                       _e123754124382_
                       _hd123753124385_
                       _tl123752124387_))))
              (___match126882126883_
               _e123751124374_
               _hd123750124377_
               _tl123749124379_
               _e123754124382_
               _hd123753124385_
               _tl123752124387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126882126883_
                                               _e123751124374_
                                               _hd123750124377_
                                               _tl123749124379_
                                               _e123754124382_
                                               _hd123753124385_
                                               _tl123752124387_))
                                          (___match126882126883_
                                           _e123751124374_
                                           _hd123750124377_
                                           _tl123749124379_
                                           _e123754124382_
                                           _hd123753124385_
                                           _tl123752124387_))))
                                  (___match126882126883_
                                   _e123751124374_
                                   _hd123750124377_
                                   _tl123749124379_
                                   _e123754124382_
                                   _hd123753124385_
                                   _tl123752124387_))
                              (___match126882126883_
                               _e123751124374_
                               _hd123750124377_
                               _tl123749124379_
                               _e123754124382_
                               _hd123753124385_
                               _tl123752124387_))
                          (___match126882126883_
                           _e123751124374_
                           _hd123750124377_
                           _tl123749124379_
                           _e123754124382_
                           _hd123753124385_
                           _tl123752124387_))))
                  (___match126882126883_
                   _e123751124374_
                   _hd123750124377_
                   _tl123749124379_
                   _e123754124382_
                   _hd123753124385_
                   _tl123752124387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126882126883_
                                                   _e123751124374_
                                                   _hd123750124377_
                                                   _tl123749124379_
                                                   _e123754124382_
                                                   _hd123753124385_
                                                   _tl123752124387_))
                                              (___match126882126883_
                                               _e123751124374_
                                               _hd123750124377_
                                               _tl123749124379_
                                               _e123754124382_
                                               _hd123753124385_
                                               _tl123752124387_))))
                                      (___match126882126883_
                                       _e123751124374_
                                       _hd123750124377_
                                       _tl123749124379_
                                       _e123754124382_
                                       _hd123753124385_
                                       _tl123752124387_))
                                  (___match126882126883_
                                   _e123751124374_
                                   _hd123750124377_
                                   _tl123749124379_
                                   _e123754124382_
                                   _hd123753124385_
                                   _tl123752124387_))
                              (___match126882126883_
                               _e123751124374_
                               _hd123750124377_
                               _tl123749124379_
                               _e123754124382_
                               _hd123753124385_
                               _tl123752124387_))))
                      (___match126882126883_
                       _e123751124374_
                       _hd123750124377_
                       _tl123749124379_
                       _e123754124382_
                       _hd123753124385_
                       _tl123752124387_))))
              (___match126882126883_
               _e123751124374_
               _hd123750124377_
               _tl123749124379_
               _e123754124382_
               _hd123753124385_
               _tl123752124387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126882126883_
                                                   _e123751124374_
                                                   _hd123750124377_
                                                   _tl123749124379_
                                                   _e123754124382_
                                                   _hd123753124385_
                                                   _tl123752124387_))))
                                          (___match126882126883_
                                           _e123751124374_
                                           _hd123750124377_
                                           _tl123749124379_
                                           _e123754124382_
                                           _hd123753124385_
                                           _tl123752124387_))
                                      (___match126882126883_
                                       _e123751124374_
                                       _hd123750124377_
                                       _tl123749124379_
                                       _e123754124382_
                                       _hd123753124385_
                                       _tl123752124387_))
                                  (___match126882126883_
                                   _e123751124374_
                                   _hd123750124377_
                                   _tl123749124379_
                                   _e123754124382_
                                   _hd123753124385_
                                   _tl123752124387_))))
                          (___match126882126883_
                           _e123751124374_
                           _hd123750124377_
                           _tl123749124379_
                           _e123754124382_
                           _hd123753124385_
                           _tl123752124387_))))
                  (___match126882126883_
                   _e123751124374_
                   _hd123750124377_
                   _tl123749124379_
                   _e123754124382_
                   _hd123753124385_
                   _tl123752124387_))
              (___match126882126883_
               _e123751124374_
               _hd123750124377_
               _tl123749124379_
               _e123754124382_
               _hd123753124385_
               _tl123752124387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126882126883_
                                                   _e123751124374_
                                                   _hd123750124377_
                                                   _tl123749124379_
                                                   _e123754124382_
                                                   _hd123753124385_
                                                   _tl123752124387_))))
                                          (___match126882126883_
                                           _e123751124374_
                                           _hd123750124377_
                                           _tl123749124379_
                                           _e123754124382_
                                           _hd123753124385_
                                           _tl123752124387_))))
                                  (___match126882126883_
                                   _e123751124374_
                                   _hd123750124377_
                                   _tl123749124379_
                                   _e123754124382_
                                   _hd123753124385_
                                   _tl123752124387_))))
                          (___match127016127017_
                           _e123751124374_
                           _hd123750124377_
                           _tl123749124379_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126697126698_))
                  (let ((_e123742124591_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126697126698_))))
                    (let ((_tl123740124596_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123742124591_)))
                          (_hd123741124594_
                           (let ()
                             (declare (not safe))
                             (##car _e123742124591_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L124599_ _tl123740124596_))
                            (___kont126699126700_ _L124599_))
                          (___match126724126725_
                           _e123742124591_
                           _hd123741124594_
                           _tl123740124596_))))
                  (let () (declare (not safe)) (_g123737123933_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123686_)
        (letrec ((_clause-e123688_
                  (lambda (_form123729_)
                    (let ((__obj128370
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
                       __obj128370
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123729_))
                       (if (let ((__tmp128441
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128441))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123729_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123729_))
                               '#f)
                           '#f))
                      __obj128370))))
          (let* ((_g123690123700_
                  (lambda (_g123691123697_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123691123697_))))
                 (_g123689123726_
                  (lambda (_g123691123703_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123691123703_))
                        (let ((_e123695123705_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123691123703_))))
                          (let ((_hd123694123708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123695123705_)))
                                (_tl123693123710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123695123705_))))
                            ((lambda (_L123713_)
                               (let ((_clauses123724_
                                      (map _clause-e123688_ _L123713_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123724_)))
                             _tl123693123710_)))
                        (let ()
                          (declare (not safe))
                          (_g123690123700_ _g123691123703_))))))
            (declare (not safe))
            (_g123689123726_ _stx123686_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx123618_)
        (let* ((_g123620123637_
                (lambda (_g123621123634_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123621123634_))))
               (_g123619123683_
                (lambda (_g123621123640_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123621123640_))
                      (let ((_e123626123642_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123621123640_))))
                        (let ((_hd123625123645_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123626123642_)))
                              (_tl123624123647_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123626123642_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123624123647_))
                              (let ((_e123629123650_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123624123647_))))
                                (let ((_hd123628123653_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123629123650_)))
                                      (_tl123627123655_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123629123650_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123627123655_))
                                      (let ((_e123632123658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123627123655_))))
                                        (let ((_hd123631123661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123632123658_)))
                                              (_tl123630123663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123632123658_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123630123663_))
                                              ((lambda (_L123666_ _L123667_)
                                                 (let ((__tmp128442
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123666_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128442
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd123631123661_
                                               _hd123628123653_)
                                              (let ()
                                                (declare (not safe))
                                                (_g123620123637_
                                                 _g123621123640_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123620123637_ _g123621123640_)))))
                              (let ()
                                (declare (not safe))
                                (_g123620123637_ _g123621123640_)))))
                      (let ()
                        (declare (not safe))
                        (_g123620123637_ _g123621123640_))))))
          (declare (not safe))
          (_g123619123683_ _stx123618_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123523_)
        (let* ((___stx127025127026_ _stx123523_)
               (_g123526123546_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127025127026_)))))
          (let ((___kont127027127028_
                 (lambda (_L123590_ _L123591_)
                   (let ((_type-e123608123610_
                          (let ((__tmp128443
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L123591_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128443))))
                     (if _type-e123608123610_
                         (let ((_type-e123613_ _type-e123608123610_))
                           (_type-e123613_ _stx123523_ _L123590_))
                         '#f))))
                (___kont127029127030_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127025127026_))
                (let ((_e123532123558_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127025127026_))))
                  (let ((_tl123530123563_
                         (let () (declare (not safe)) (##cdr _e123532123558_)))
                        (_hd123531123561_
                         (let ()
                           (declare (not safe))
                           (##car _e123532123558_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123530123563_))
                        (let ((_e123535123566_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123530123563_))))
                          (let ((_tl123533123571_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123535123566_)))
                                (_hd123534123569_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123535123566_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123534123569_))
                                (let ((_e123538123574_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123534123569_))))
                                  (let ((_tl123536123579_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123538123574_)))
                                        (_hd123537123577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123538123574_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123537123577_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123537123577_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123536123579_))
                                                (let ((_e123541123582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123536123579_))))
                                                  (let ((_tl123539123587_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123541123582_)))
                                                        (_hd123540123585_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123541123582_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123539123587_))
                                                        (___kont127027127028_
                                                         _tl123533123571_
                                                         _hd123540123585_)
                                                        (___kont127029127030_))))
                                                (___kont127029127030_))
                                            (___kont127029127030_))
                                        (___kont127029127030_))))
                                (___kont127029127030_))))
                        (___kont127029127030_))))
                (___kont127029127030_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123472_)
        (let* ((_g123474123487_
                (lambda (_g123475123484_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123475123484_))))
               (_g123473123520_
                (lambda (_g123475123490_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123475123490_))
                      (let ((_e123479123492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123475123490_))))
                        (let ((_hd123478123495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123479123492_)))
                              (_tl123477123497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123479123492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123477123497_))
                              (let ((_e123482123500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123477123497_))))
                                (let ((_hd123481123503_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123482123500_)))
                                      (_tl123480123505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123482123500_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123480123505_))
                                      ((lambda (_L123508_)
                                         (let ((__tmp128444
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123508_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128444)))
                                       _hd123481123503_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123474123487_ _g123475123490_)))))
                              (let ()
                                (declare (not safe))
                                (_g123474123487_ _g123475123490_)))))
                      (let ()
                        (declare (not safe))
                        (_g123474123487_ _g123475123490_))))))
          (declare (not safe))
          (_g123473123520_ _stx123472_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122706_)
        (let* ((___stx127063127064_ _form122706_)
               (_g122711122868_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127063127064_)))))
          (let ((___kont127065127066_
                 (lambda (_L123392_ _L123393_ _L123394_) '#t))
                (___kont127071127072_
                 (lambda (_L123180_
                          _L123181_
                          _L123182_
                          _L123183_
                          _L123184_
                          _L123185_)
                   '#t))
                (___kont127077127078_
                 (lambda (_L122976_ _L122977_ _L122978_ _L122979_) '#t))
                (___kont127079127080_ (lambda () '#f)))
            (let* ((___match127204127205_
                    (lambda (_e122830122880_
                             _hd122829122883_
                             _tl122828122885_
                             _e122833122888_
                             _hd122832122891_
                             _tl122831122893_
                             _e122836122896_
                             _hd122835122899_
                             _tl122834122901_
                             _e122839122904_
                             _hd122838122907_
                             _tl122837122909_
                             _e122842122912_
                             _hd122841122915_
                             _tl122840122917_
                             _e122845122920_
                             _hd122844122923_
                             _tl122843122925_
                             _e122848122928_
                             _hd122847122931_
                             _tl122846122933_
                             _e122851122936_
                             _hd122850122939_
                             _tl122849122941_
                             _e122854122944_
                             _hd122853122947_
                             _tl122852122949_
                             _e122857122952_
                             _hd122856122955_
                             _tl122855122957_
                             _e122860122960_
                             _hd122859122963_
                             _tl122858122965_
                             _e122863122968_
                             _hd122862122971_
                             _tl122861122973_)
                      (let ((_L122976_ _hd122862122971_)
                            (_L122977_ _hd122853122947_)
                            (_L122978_ _hd122844122923_)
                            (_L122979_ _hd122829122883_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122979_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122978_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122979_ _L122976_))
                                 (let ((__tmp128445
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122977_
                                           _L122979_))))
                                   (declare (not safe))
                                   (not __tmp128445)))
                            (___kont127077127078_
                             _L122976_
                             _L122977_
                             _L122978_
                             _L122979_)
                            (___kont127079127080_)))))
                   (___match127176127177_
                    (lambda (_e122830122880_
                             _hd122829122883_
                             _tl122828122885_
                             _e122833122888_
                             _hd122832122891_
                             _tl122831122893_
                             _e122836122896_
                             _hd122835122899_
                             _tl122834122901_
                             _e122839122904_
                             _hd122838122907_
                             _tl122837122909_
                             _e122842122912_
                             _hd122841122915_
                             _tl122840122917_
                             _e122845122920_
                             _hd122844122923_
                             _tl122843122925_
                             _e122848122928_
                             _hd122847122931_
                             _tl122846122933_
                             _e122851122936_
                             _hd122850122939_
                             _tl122849122941_
                             _e122854122944_
                             _hd122853122947_
                             _tl122852122949_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122846122933_))
                          (let ((_e122857122952_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122846122933_))))
                            (let ((_tl122855122957_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122857122952_)))
                                  (_hd122856122955_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122857122952_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122856122955_))
                                  (let ((_e122860122960_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122856122955_))))
                                    (let ((_tl122858122965_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122860122960_)))
                                          (_hd122859122963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122860122960_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122859122963_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122859122963_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122858122965_))
                                                  (let ((_e122863122968_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122858122965_))))
                                                    (let ((_tl122861122973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122863122968_)))
                                                          (_hd122862122971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122863122968_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122861122973_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122855122957_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122831122893_))
                          (___match127204127205_
                           _e122830122880_
                           _hd122829122883_
                           _tl122828122885_
                           _e122833122888_
                           _hd122832122891_
                           _tl122831122893_
                           _e122836122896_
                           _hd122835122899_
                           _tl122834122901_
                           _e122839122904_
                           _hd122838122907_
                           _tl122837122909_
                           _e122842122912_
                           _hd122841122915_
                           _tl122840122917_
                           _e122845122920_
                           _hd122844122923_
                           _tl122843122925_
                           _e122848122928_
                           _hd122847122931_
                           _tl122846122933_
                           _e122851122936_
                           _hd122850122939_
                           _tl122849122941_
                           _e122854122944_
                           _hd122853122947_
                           _tl122852122949_
                           _e122857122952_
                           _hd122856122955_
                           _tl122855122957_
                           _e122860122960_
                           _hd122859122963_
                           _tl122858122965_
                           _e122863122968_
                           _hd122862122971_
                           _tl122861122973_)
                          (___kont127079127080_))
                      (___kont127079127080_))
                  (___kont127079127080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127079127080_))
                                              (___kont127079127080_))
                                          (___kont127079127080_))))
                                  (___kont127079127080_))))
                          (___kont127079127080_))))
                   (___match127106127107_
                    (lambda (_e122766123020_
                             _hd122765123023_
                             _tl122764123025_
                             ___splice127073127074_
                             _target122767123028_
                             _tl122769123030_)
                      (letrec ((_loop122770123033_
                                (lambda (_hd122768123036_ _arg122774123038_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122768123036_))
                                      (let ((_e122771123041_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122768123036_))))
                                        (let ((_lp-tl122773123046_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122771123041_)))
                                              (_lp-hd122772123044_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122771123041_))))
                                          (let ((__tmp128460
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122772123044_
                                                         _arg122774123038_))))
                                            (declare (not safe))
                                            (_loop122770123033_
                                             _lp-tl122773123046_
                                             __tmp128460))))
                                      (let ((_arg122775123049_
                                             (reverse _arg122774123038_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122764123025_))
                                            (let ((_e122778123052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122764123025_))))
                                              (let ((_tl122776123057_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122778123052_)))
                                                    (_hd122777123055_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122778123052_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122777123055_))
                                                    (let ((_e122781123060_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122777123055_))))
                                                      (let ((_tl122779123065_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122781123060_)))
                    (_hd122780123063_
                     (let () (declare (not safe)) (##car _e122781123060_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122780123063_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122780123063_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122779123065_))
                            (let ((_e122784123068_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122779123065_))))
                              (let ((_tl122782123073_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122784123068_)))
                                    (_hd122783123071_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122784123068_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122783123071_))
                                    (let ((_e122787123076_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122783123071_))))
                                      (let ((_tl122785123081_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122787123076_)))
                                            (_hd122786123079_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122787123076_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122786123079_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122786123079_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122785123081_))
                                                    (let ((_e122790123084_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122785123081_))))
                                                      (let ((_tl122788123089_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122790123084_)))
                    (_hd122789123087_
                     (let () (declare (not safe)) (##car _e122790123084_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122788123089_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122782123073_))
                        (let ((_e122793123092_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122782123073_))))
                          (let ((_tl122791123097_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122793123092_)))
                                (_hd122792123095_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122793123092_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122792123095_))
                                (let ((_e122796123100_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122792123095_))))
                                  (let ((_tl122794123105_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122796123100_)))
                                        (_hd122795123103_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122796123100_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122795123103_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122795123103_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122794123105_))
                                                (let ((_e122799123108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122794123105_))))
                                                  (let ((_tl122797123113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122799123108_)))
                                                        (_hd122798123111_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122799123108_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122797123113_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122791123097_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122791123097_))
                              '1)
                        (let ((___splice127075127076_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122791123097_
                                  '1))))
                          (let ((_tl122802123118_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127075127076_ '1)))
                                (_target122800123116_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127075127076_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122802123118_))
                                (let ((_e122811123121_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122802123118_))))
                                  (let ((_tl122809123126_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122811123121_)))
                                        (_hd122810123124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122811123121_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122810123124_))
                                        (let ((_e122814123129_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122810123124_))))
                                          (let ((_tl122812123134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122814123129_)))
                                                (_hd122813123132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122814123129_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122813123132_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122813123132_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122812123134_))
                                                        (let ((_e122817123137_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122812123134_))))
                  (let ((_tl122815123142_
                         (let () (declare (not safe)) (##cdr _e122817123137_)))
                        (_hd122816123140_
                         (let ()
                           (declare (not safe))
                           (##car _e122817123137_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122815123142_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122809123126_))
                            (letrec ((_loop122803123145_
                                      (lambda (_hd122801123148_
                                               _xarg122807123150_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122801123148_))
                                            (let ((_e122804123153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122801123148_))))
                                              (let ((_lp-tl122806123158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122804123153_)))
                                                    (_lp-hd122805123156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122804123153_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122805123156_))
                                                    (let ((_e122820123161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122805123156_))))
                                                      (let ((_tl122818123166_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122820123161_)))
                    (_hd122819123164_
                     (let () (declare (not safe)) (##car _e122820123161_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122819123164_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122819123164_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122818123166_))
                            (let ((_e122823123169_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122818123166_))))
                              (let ((_tl122821123174_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122823123169_)))
                                    (_hd122822123172_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122823123169_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122821123174_))
                                    (let ((__tmp128459
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122822123172_
                                                   _xarg122807123150_))))
                                      (declare (not safe))
                                      (_loop122803123145_
                                       _lp-tl122806123158_
                                       __tmp128459))
                                    (___match127176127177_
                                     _e122766123020_
                                     _hd122765123023_
                                     _tl122764123025_
                                     _e122778123052_
                                     _hd122777123055_
                                     _tl122776123057_
                                     _e122781123060_
                                     _hd122780123063_
                                     _tl122779123065_
                                     _e122784123068_
                                     _hd122783123071_
                                     _tl122782123073_
                                     _e122787123076_
                                     _hd122786123079_
                                     _tl122785123081_
                                     _e122790123084_
                                     _hd122789123087_
                                     _tl122788123089_
                                     _e122793123092_
                                     _hd122792123095_
                                     _tl122791123097_
                                     _e122796123100_
                                     _hd122795123103_
                                     _tl122794123105_
                                     _e122799123108_
                                     _hd122798123111_
                                     _tl122797123113_))))
                            (___match127176127177_
                             _e122766123020_
                             _hd122765123023_
                             _tl122764123025_
                             _e122778123052_
                             _hd122777123055_
                             _tl122776123057_
                             _e122781123060_
                             _hd122780123063_
                             _tl122779123065_
                             _e122784123068_
                             _hd122783123071_
                             _tl122782123073_
                             _e122787123076_
                             _hd122786123079_
                             _tl122785123081_
                             _e122790123084_
                             _hd122789123087_
                             _tl122788123089_
                             _e122793123092_
                             _hd122792123095_
                             _tl122791123097_
                             _e122796123100_
                             _hd122795123103_
                             _tl122794123105_
                             _e122799123108_
                             _hd122798123111_
                             _tl122797123113_))
                        (___match127176127177_
                         _e122766123020_
                         _hd122765123023_
                         _tl122764123025_
                         _e122778123052_
                         _hd122777123055_
                         _tl122776123057_
                         _e122781123060_
                         _hd122780123063_
                         _tl122779123065_
                         _e122784123068_
                         _hd122783123071_
                         _tl122782123073_
                         _e122787123076_
                         _hd122786123079_
                         _tl122785123081_
                         _e122790123084_
                         _hd122789123087_
                         _tl122788123089_
                         _e122793123092_
                         _hd122792123095_
                         _tl122791123097_
                         _e122796123100_
                         _hd122795123103_
                         _tl122794123105_
                         _e122799123108_
                         _hd122798123111_
                         _tl122797123113_))
                    (___match127176127177_
                     _e122766123020_
                     _hd122765123023_
                     _tl122764123025_
                     _e122778123052_
                     _hd122777123055_
                     _tl122776123057_
                     _e122781123060_
                     _hd122780123063_
                     _tl122779123065_
                     _e122784123068_
                     _hd122783123071_
                     _tl122782123073_
                     _e122787123076_
                     _hd122786123079_
                     _tl122785123081_
                     _e122790123084_
                     _hd122789123087_
                     _tl122788123089_
                     _e122793123092_
                     _hd122792123095_
                     _tl122791123097_
                     _e122796123100_
                     _hd122795123103_
                     _tl122794123105_
                     _e122799123108_
                     _hd122798123111_
                     _tl122797123113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127176127177_
                                                     _e122766123020_
                                                     _hd122765123023_
                                                     _tl122764123025_
                                                     _e122778123052_
                                                     _hd122777123055_
                                                     _tl122776123057_
                                                     _e122781123060_
                                                     _hd122780123063_
                                                     _tl122779123065_
                                                     _e122784123068_
                                                     _hd122783123071_
                                                     _tl122782123073_
                                                     _e122787123076_
                                                     _hd122786123079_
                                                     _tl122785123081_
                                                     _e122790123084_
                                                     _hd122789123087_
                                                     _tl122788123089_
                                                     _e122793123092_
                                                     _hd122792123095_
                                                     _tl122791123097_
                                                     _e122796123100_
                                                     _hd122795123103_
                                                     _tl122794123105_
                                                     _e122799123108_
                                                     _hd122798123111_
                                                     _tl122797123113_))))
                                            (let ((_xarg122808123177_
                                                   (reverse _xarg122807123150_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122776123057_))
                                                  (let ((_L123180_
                                                         _hd122816123140_)
                                                        (_L123181_
                                                         _xarg122808123177_)
                                                        (_L123182_
                                                         _hd122798123111_)
                                                        (_L123183_
                                                         _hd122789123087_)
                                                        (_L123184_
                                                         _tl122769123030_)
                                                        (_L123185_
                                                         _arg122775123049_))
                                                    (if (and (let ((__tmp128457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128458
                                   (lambda (_g123228123231_ _g123229123233_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123228123231_
                                             _g123229123233_)))))
                              (declare (not safe))
                              (foldr1 __tmp128458 '() _L123185_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128457))
                     (let () (declare (not safe)) (gx#identifier? _L123184_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123183_ 'apply))
                     (fx= (length (let ((__tmp128455
                                         (lambda (_g123235123238_
                                                  _g123236123240_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123235123238_
                                                   _g123236123240_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128455 '() _L123185_)))
                          (length (let ((__tmp128456
                                         (lambda (_g123242123245_
                                                  _g123243123247_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123242123245_
                                                   _g123243123247_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128456 '() _L123181_))))
                     (let ((__tmp128453
                            (let ((__tmp128454
                                   (lambda (_g123249123252_ _g123250123254_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123249123252_
                                             _g123250123254_)))))
                              (declare (not safe))
                              (foldr1 __tmp128454 '() _L123185_)))
                           (__tmp128451
                            (let ((__tmp128452
                                   (lambda (_g123256123259_ _g123257123261_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123256123259_
                                             _g123257123261_)))))
                              (declare (not safe))
                              (foldr1 __tmp128452 '() _L123181_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128453 __tmp128451))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123184_ _L123180_))
                     (let ((__tmp128446
                            (let ((__tmp128450
                                   (lambda (_g123263123265_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123263123265_
                                        _L123182_))))
                                  (__tmp128447
                                   (let ((__tmp128449
                                          (lambda (_g123267123270_
                                                   _g123268123272_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123267123270_
                                                    _g123268123272_))))
                                         (__tmp128448
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123184_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128449
                                             __tmp128448
                                             _L123185_))))
                              (declare (not safe))
                              (find __tmp128450 __tmp128447))))
                       (declare (not safe))
                       (not __tmp128446)))
                (___kont127071127072_
                 _L123180_
                 _L123181_
                 _L123182_
                 _L123183_
                 _L123184_
                 _L123185_)
                (___match127176127177_
                 _e122766123020_
                 _hd122765123023_
                 _tl122764123025_
                 _e122778123052_
                 _hd122777123055_
                 _tl122776123057_
                 _e122781123060_
                 _hd122780123063_
                 _tl122779123065_
                 _e122784123068_
                 _hd122783123071_
                 _tl122782123073_
                 _e122787123076_
                 _hd122786123079_
                 _tl122785123081_
                 _e122790123084_
                 _hd122789123087_
                 _tl122788123089_
                 _e122793123092_
                 _hd122792123095_
                 _tl122791123097_
                 _e122796123100_
                 _hd122795123103_
                 _tl122794123105_
                 _e122799123108_
                 _hd122798123111_
                 _tl122797123113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127176127177_
                                                   _e122766123020_
                                                   _hd122765123023_
                                                   _tl122764123025_
                                                   _e122778123052_
                                                   _hd122777123055_
                                                   _tl122776123057_
                                                   _e122781123060_
                                                   _hd122780123063_
                                                   _tl122779123065_
                                                   _e122784123068_
                                                   _hd122783123071_
                                                   _tl122782123073_
                                                   _e122787123076_
                                                   _hd122786123079_
                                                   _tl122785123081_
                                                   _e122790123084_
                                                   _hd122789123087_
                                                   _tl122788123089_
                                                   _e122793123092_
                                                   _hd122792123095_
                                                   _tl122791123097_
                                                   _e122796123100_
                                                   _hd122795123103_
                                                   _tl122794123105_
                                                   _e122799123108_
                                                   _hd122798123111_
                                                   _tl122797123113_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122803123145_ _target122800123116_ '())))
                            (___match127176127177_
                             _e122766123020_
                             _hd122765123023_
                             _tl122764123025_
                             _e122778123052_
                             _hd122777123055_
                             _tl122776123057_
                             _e122781123060_
                             _hd122780123063_
                             _tl122779123065_
                             _e122784123068_
                             _hd122783123071_
                             _tl122782123073_
                             _e122787123076_
                             _hd122786123079_
                             _tl122785123081_
                             _e122790123084_
                             _hd122789123087_
                             _tl122788123089_
                             _e122793123092_
                             _hd122792123095_
                             _tl122791123097_
                             _e122796123100_
                             _hd122795123103_
                             _tl122794123105_
                             _e122799123108_
                             _hd122798123111_
                             _tl122797123113_))
                        (___match127176127177_
                         _e122766123020_
                         _hd122765123023_
                         _tl122764123025_
                         _e122778123052_
                         _hd122777123055_
                         _tl122776123057_
                         _e122781123060_
                         _hd122780123063_
                         _tl122779123065_
                         _e122784123068_
                         _hd122783123071_
                         _tl122782123073_
                         _e122787123076_
                         _hd122786123079_
                         _tl122785123081_
                         _e122790123084_
                         _hd122789123087_
                         _tl122788123089_
                         _e122793123092_
                         _hd122792123095_
                         _tl122791123097_
                         _e122796123100_
                         _hd122795123103_
                         _tl122794123105_
                         _e122799123108_
                         _hd122798123111_
                         _tl122797123113_))))
                (___match127176127177_
                 _e122766123020_
                 _hd122765123023_
                 _tl122764123025_
                 _e122778123052_
                 _hd122777123055_
                 _tl122776123057_
                 _e122781123060_
                 _hd122780123063_
                 _tl122779123065_
                 _e122784123068_
                 _hd122783123071_
                 _tl122782123073_
                 _e122787123076_
                 _hd122786123079_
                 _tl122785123081_
                 _e122790123084_
                 _hd122789123087_
                 _tl122788123089_
                 _e122793123092_
                 _hd122792123095_
                 _tl122791123097_
                 _e122796123100_
                 _hd122795123103_
                 _tl122794123105_
                 _e122799123108_
                 _hd122798123111_
                 _tl122797123113_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127176127177_
                                                     _e122766123020_
                                                     _hd122765123023_
                                                     _tl122764123025_
                                                     _e122778123052_
                                                     _hd122777123055_
                                                     _tl122776123057_
                                                     _e122781123060_
                                                     _hd122780123063_
                                                     _tl122779123065_
                                                     _e122784123068_
                                                     _hd122783123071_
                                                     _tl122782123073_
                                                     _e122787123076_
                                                     _hd122786123079_
                                                     _tl122785123081_
                                                     _e122790123084_
                                                     _hd122789123087_
                                                     _tl122788123089_
                                                     _e122793123092_
                                                     _hd122792123095_
                                                     _tl122791123097_
                                                     _e122796123100_
                                                     _hd122795123103_
                                                     _tl122794123105_
                                                     _e122799123108_
                                                     _hd122798123111_
                                                     _tl122797123113_))
                                                (___match127176127177_
                                                 _e122766123020_
                                                 _hd122765123023_
                                                 _tl122764123025_
                                                 _e122778123052_
                                                 _hd122777123055_
                                                 _tl122776123057_
                                                 _e122781123060_
                                                 _hd122780123063_
                                                 _tl122779123065_
                                                 _e122784123068_
                                                 _hd122783123071_
                                                 _tl122782123073_
                                                 _e122787123076_
                                                 _hd122786123079_
                                                 _tl122785123081_
                                                 _e122790123084_
                                                 _hd122789123087_
                                                 _tl122788123089_
                                                 _e122793123092_
                                                 _hd122792123095_
                                                 _tl122791123097_
                                                 _e122796123100_
                                                 _hd122795123103_
                                                 _tl122794123105_
                                                 _e122799123108_
                                                 _hd122798123111_
                                                 _tl122797123113_))))
                                        (___match127176127177_
                                         _e122766123020_
                                         _hd122765123023_
                                         _tl122764123025_
                                         _e122778123052_
                                         _hd122777123055_
                                         _tl122776123057_
                                         _e122781123060_
                                         _hd122780123063_
                                         _tl122779123065_
                                         _e122784123068_
                                         _hd122783123071_
                                         _tl122782123073_
                                         _e122787123076_
                                         _hd122786123079_
                                         _tl122785123081_
                                         _e122790123084_
                                         _hd122789123087_
                                         _tl122788123089_
                                         _e122793123092_
                                         _hd122792123095_
                                         _tl122791123097_
                                         _e122796123100_
                                         _hd122795123103_
                                         _tl122794123105_
                                         _e122799123108_
                                         _hd122798123111_
                                         _tl122797123113_))))
                                (___match127176127177_
                                 _e122766123020_
                                 _hd122765123023_
                                 _tl122764123025_
                                 _e122778123052_
                                 _hd122777123055_
                                 _tl122776123057_
                                 _e122781123060_
                                 _hd122780123063_
                                 _tl122779123065_
                                 _e122784123068_
                                 _hd122783123071_
                                 _tl122782123073_
                                 _e122787123076_
                                 _hd122786123079_
                                 _tl122785123081_
                                 _e122790123084_
                                 _hd122789123087_
                                 _tl122788123089_
                                 _e122793123092_
                                 _hd122792123095_
                                 _tl122791123097_
                                 _e122796123100_
                                 _hd122795123103_
                                 _tl122794123105_
                                 _e122799123108_
                                 _hd122798123111_
                                 _tl122797123113_))))
                        (___match127176127177_
                         _e122766123020_
                         _hd122765123023_
                         _tl122764123025_
                         _e122778123052_
                         _hd122777123055_
                         _tl122776123057_
                         _e122781123060_
                         _hd122780123063_
                         _tl122779123065_
                         _e122784123068_
                         _hd122783123071_
                         _tl122782123073_
                         _e122787123076_
                         _hd122786123079_
                         _tl122785123081_
                         _e122790123084_
                         _hd122789123087_
                         _tl122788123089_
                         _e122793123092_
                         _hd122792123095_
                         _tl122791123097_
                         _e122796123100_
                         _hd122795123103_
                         _tl122794123105_
                         _e122799123108_
                         _hd122798123111_
                         _tl122797123113_))
                    (___match127176127177_
                     _e122766123020_
                     _hd122765123023_
                     _tl122764123025_
                     _e122778123052_
                     _hd122777123055_
                     _tl122776123057_
                     _e122781123060_
                     _hd122780123063_
                     _tl122779123065_
                     _e122784123068_
                     _hd122783123071_
                     _tl122782123073_
                     _e122787123076_
                     _hd122786123079_
                     _tl122785123081_
                     _e122790123084_
                     _hd122789123087_
                     _tl122788123089_
                     _e122793123092_
                     _hd122792123095_
                     _tl122791123097_
                     _e122796123100_
                     _hd122795123103_
                     _tl122794123105_
                     _e122799123108_
                     _hd122798123111_
                     _tl122797123113_))
                (___kont127079127080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127079127080_))
                                            (___kont127079127080_))
                                        (___kont127079127080_))))
                                (___kont127079127080_))))
                        (___kont127079127080_))
                    (___kont127079127080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127079127080_))
                                                (___kont127079127080_))
                                            (___kont127079127080_))))
                                    (___kont127079127080_))))
                            (___kont127079127080_))
                        (___kont127079127080_))
                    (___kont127079127080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127079127080_))))
                                            (___kont127079127080_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122770123033_ _target122767123028_ '())))))
                   (___match127094127095_
                    (lambda (_e122718123280_
                             _hd122717123283_
                             _tl122716123285_
                             ___splice127067127068_
                             _target122719123288_
                             _tl122721123290_)
                      (letrec ((_loop122722123293_
                                (lambda (_hd122720123296_ _arg122726123298_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122720123296_))
                                      (let ((_e122723123301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122720123296_))))
                                        (let ((_lp-tl122725123306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122723123301_)))
                                              (_lp-hd122724123304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122723123301_))))
                                          (let ((__tmp128474
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122724123304_
                                                         _arg122726123298_))))
                                            (declare (not safe))
                                            (_loop122722123293_
                                             _lp-tl122725123306_
                                             __tmp128474))))
                                      (let ((_arg122727123309_
                                             (reverse _arg122726123298_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122716123285_))
                                            (let ((_e122730123312_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122716123285_))))
                                              (let ((_tl122728123317_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122730123312_)))
                                                    (_hd122729123315_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122730123312_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122729123315_))
                                                    (let ((_e122733123320_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122729123315_))))
                                                      (let ((_tl122731123325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122733123320_)))
                    (_hd122732123323_
                     (let () (declare (not safe)) (##car _e122733123320_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122732123323_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122732123323_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122731123325_))
                            (let ((_e122736123328_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122731123325_))))
                              (let ((_tl122734123333_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122736123328_)))
                                    (_hd122735123331_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122736123328_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122735123331_))
                                    (let ((_e122739123336_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122735123331_))))
                                      (let ((_tl122737123341_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122739123336_)))
                                            (_hd122738123339_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122739123336_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122738123339_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122738123339_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122737123341_))
                                                    (let ((_e122742123344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122737123341_))))
                                                      (let ((_tl122740123349_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122742123344_)))
                    (_hd122741123347_
                     (let () (declare (not safe)) (##car _e122742123344_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122740123349_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122734123333_))
                        (let ((___splice127069127070_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122734123333_
                                  '0))))
                          (let ((_tl122745123354_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127069127070_ '1)))
                                (_target122743123352_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127069127070_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122745123354_))
                                (letrec ((_loop122746123357_
                                          (lambda (_hd122744123360_
                                                   _xarg122750123362_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122744123360_))
                                                (let ((_e122747123365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122744123360_))))
                                                  (let ((_lp-tl122749123370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122747123365_)))
                                                        (_lp-hd122748123368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122747123365_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122748123368_))
                                                        (let ((_e122754123373_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122748123368_))))
                  (let ((_tl122752123378_
                         (let () (declare (not safe)) (##cdr _e122754123373_)))
                        (_hd122753123376_
                         (let ()
                           (declare (not safe))
                           (##car _e122754123373_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122753123376_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122753123376_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122752123378_))
                                (let ((_e122757123381_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122752123378_))))
                                  (let ((_tl122755123386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122757123381_)))
                                        (_hd122756123384_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122757123381_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122755123386_))
                                        (let ((__tmp128473
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122756123384_
                                                       _xarg122750123362_))))
                                          (declare (not safe))
                                          (_loop122746123357_
                                           _lp-tl122749123370_
                                           __tmp128473))
                                        (___match127106127107_
                                         _e122718123280_
                                         _hd122717123283_
                                         _tl122716123285_
                                         ___splice127067127068_
                                         _target122719123288_
                                         _tl122721123290_))))
                                (___match127106127107_
                                 _e122718123280_
                                 _hd122717123283_
                                 _tl122716123285_
                                 ___splice127067127068_
                                 _target122719123288_
                                 _tl122721123290_))
                            (___match127106127107_
                             _e122718123280_
                             _hd122717123283_
                             _tl122716123285_
                             ___splice127067127068_
                             _target122719123288_
                             _tl122721123290_))
                        (___match127106127107_
                         _e122718123280_
                         _hd122717123283_
                         _tl122716123285_
                         ___splice127067127068_
                         _target122719123288_
                         _tl122721123290_))))
                (___match127106127107_
                 _e122718123280_
                 _hd122717123283_
                 _tl122716123285_
                 ___splice127067127068_
                 _target122719123288_
                 _tl122721123290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122751123389_
                                                       (reverse _xarg122750123362_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122728123317_))
                                                      (let ((_L123392_
                                                             _xarg122751123389_)
                                                            (_L123393_
                                                             _hd122741123347_)
                                                            (_L123394_
                                                             _arg122727123309_))
                                                        (if (and (let ((__tmp128471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128472
                                       (lambda (_g123422123425_
                                                _g123423123427_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123422123425_
                                                 _g123423123427_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128472 '() _L123394_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128471))
                         (fx= (length (let ((__tmp128469
                                             (lambda (_g123429123432_
                                                      _g123430123434_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123429123432_
                                                       _g123430123434_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128469 '() _L123394_)))
                              (length (let ((__tmp128470
                                             (lambda (_g123436123439_
                                                      _g123437123441_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123436123439_
                                                       _g123437123441_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128470 '() _L123392_))))
                         (let ((__tmp128467
                                (let ((__tmp128468
                                       (lambda (_g123443123446_
                                                _g123444123448_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123443123446_
                                                 _g123444123448_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128468 '() _L123394_)))
                               (__tmp128465
                                (let ((__tmp128466
                                       (lambda (_g123450123453_
                                                _g123451123455_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123450123453_
                                                 _g123451123455_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128466 '() _L123392_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128467
                                    __tmp128465))
                         (let ((__tmp128461
                                (let ((__tmp128464
                                       (lambda (_g123457123459_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123457123459_
                                            _L123393_))))
                                      (__tmp128462
                                       (let ((__tmp128463
                                              (lambda (_g123461123464_
                                                       _g123462123466_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123461123464_
                                                        _g123462123466_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128463 '() _L123394_))))
                                  (declare (not safe))
                                  (find __tmp128464 __tmp128462))))
                           (declare (not safe))
                           (not __tmp128461)))
                    (___kont127065127066_ _L123392_ _L123393_ _L123394_)
                    (___match127106127107_
                     _e122718123280_
                     _hd122717123283_
                     _tl122716123285_
                     ___splice127067127068_
                     _target122719123288_
                     _tl122721123290_)))
              (___match127106127107_
               _e122718123280_
               _hd122717123283_
               _tl122716123285_
               ___splice127067127068_
               _target122719123288_
               _tl122721123290_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122746123357_
                                     _target122743123352_
                                     '())))
                                (___match127106127107_
                                 _e122718123280_
                                 _hd122717123283_
                                 _tl122716123285_
                                 ___splice127067127068_
                                 _target122719123288_
                                 _tl122721123290_))))
                        (___match127106127107_
                         _e122718123280_
                         _hd122717123283_
                         _tl122716123285_
                         ___splice127067127068_
                         _target122719123288_
                         _tl122721123290_))
                    (___match127106127107_
                     _e122718123280_
                     _hd122717123283_
                     _tl122716123285_
                     ___splice127067127068_
                     _target122719123288_
                     _tl122721123290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127106127107_
                                                     _e122718123280_
                                                     _hd122717123283_
                                                     _tl122716123285_
                                                     ___splice127067127068_
                                                     _target122719123288_
                                                     _tl122721123290_))
                                                (___match127106127107_
                                                 _e122718123280_
                                                 _hd122717123283_
                                                 _tl122716123285_
                                                 ___splice127067127068_
                                                 _target122719123288_
                                                 _tl122721123290_))
                                            (___match127106127107_
                                             _e122718123280_
                                             _hd122717123283_
                                             _tl122716123285_
                                             ___splice127067127068_
                                             _target122719123288_
                                             _tl122721123290_))))
                                    (___match127106127107_
                                     _e122718123280_
                                     _hd122717123283_
                                     _tl122716123285_
                                     ___splice127067127068_
                                     _target122719123288_
                                     _tl122721123290_))))
                            (___match127106127107_
                             _e122718123280_
                             _hd122717123283_
                             _tl122716123285_
                             ___splice127067127068_
                             _target122719123288_
                             _tl122721123290_))
                        (___match127106127107_
                         _e122718123280_
                         _hd122717123283_
                         _tl122716123285_
                         ___splice127067127068_
                         _target122719123288_
                         _tl122721123290_))
                    (___match127106127107_
                     _e122718123280_
                     _hd122717123283_
                     _tl122716123285_
                     ___splice127067127068_
                     _target122719123288_
                     _tl122721123290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127106127107_
                                                     _e122718123280_
                                                     _hd122717123283_
                                                     _tl122716123285_
                                                     ___splice127067127068_
                                                     _target122719123288_
                                                     _tl122721123290_))))
                                            (___match127106127107_
                                             _e122718123280_
                                             _hd122717123283_
                                             _tl122716123285_
                                             ___splice127067127068_
                                             _target122719123288_
                                             _tl122721123290_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122722123293_ _target122719123288_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127063127064_))
                  (let ((_e122718123280_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127063127064_))))
                    (let ((_tl122716123285_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122718123280_)))
                          (_hd122717123283_
                           (let ()
                             (declare (not safe))
                             (##car _e122718123280_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122717123283_))
                          (let ((___splice127067127068_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122717123283_
                                    '0))))
                            (let ((_tl122721123290_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127067127068_ '1)))
                                  (_target122719123288_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127067127068_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122721123290_))
                                  (___match127094127095_
                                   _e122718123280_
                                   _hd122717123283_
                                   _tl122716123285_
                                   ___splice127067127068_
                                   _target122719123288_
                                   _tl122721123290_)
                                  (___match127106127107_
                                   _e122718123280_
                                   _hd122717123283_
                                   _tl122716123285_
                                   ___splice127067127068_
                                   _target122719123288_
                                   _tl122721123290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122716123285_))
                              (let ((_e122833122888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122716123285_))))
                                (let ((_tl122831122893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122833122888_)))
                                      (_hd122832122891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122833122888_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122832122891_))
                                      (let ((_e122836122896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122832122891_))))
                                        (let ((_tl122834122901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122836122896_)))
                                              (_hd122835122899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122836122896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122835122899_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122835122899_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122834122901_))
                                                      (let ((_e122839122904_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122834122901_))))
                (let ((_tl122837122909_
                       (let () (declare (not safe)) (##cdr _e122839122904_)))
                      (_hd122838122907_
                       (let () (declare (not safe)) (##car _e122839122904_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122838122907_))
                      (let ((_e122842122912_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122838122907_))))
                        (let ((_tl122840122917_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122842122912_)))
                              (_hd122841122915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122842122912_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122841122915_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122841122915_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122840122917_))
                                      (let ((_e122845122920_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122840122917_))))
                                        (let ((_tl122843122925_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122845122920_)))
                                              (_hd122844122923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122845122920_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122843122925_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122837122909_))
                                                  (let ((_e122848122928_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122837122909_))))
                                                    (let ((_tl122846122933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122848122928_)))
                                                          (_hd122847122931_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122848122928_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122847122931_))
                                                          (let ((_e122851122936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122847122931_))))
                    (let ((_tl122849122941_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122851122936_)))
                          (_hd122850122939_
                           (let ()
                             (declare (not safe))
                             (##car _e122851122936_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122850122939_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122850122939_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122849122941_))
                                  (let ((_e122854122944_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122849122941_))))
                                    (let ((_tl122852122949_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122854122944_)))
                                          (_hd122853122947_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122854122944_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122852122949_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122846122933_))
                                              (let ((_e122857122952_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122846122933_))))
                                                (let ((_tl122855122957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122857122952_)))
                                                      (_hd122856122955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122857122952_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122856122955_))
                                                      (let ((_e122860122960_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122856122955_))))
                (let ((_tl122858122965_
                       (let () (declare (not safe)) (##cdr _e122860122960_)))
                      (_hd122859122963_
                       (let () (declare (not safe)) (##car _e122860122960_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122859122963_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122859122963_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122858122965_))
                              (let ((_e122863122968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122858122965_))))
                                (let ((_tl122861122973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122863122968_)))
                                      (_hd122862122971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122863122968_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122861122973_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122855122957_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122831122893_))
                                              (___match127204127205_
                                               _e122718123280_
                                               _hd122717123283_
                                               _tl122716123285_
                                               _e122833122888_
                                               _hd122832122891_
                                               _tl122831122893_
                                               _e122836122896_
                                               _hd122835122899_
                                               _tl122834122901_
                                               _e122839122904_
                                               _hd122838122907_
                                               _tl122837122909_
                                               _e122842122912_
                                               _hd122841122915_
                                               _tl122840122917_
                                               _e122845122920_
                                               _hd122844122923_
                                               _tl122843122925_
                                               _e122848122928_
                                               _hd122847122931_
                                               _tl122846122933_
                                               _e122851122936_
                                               _hd122850122939_
                                               _tl122849122941_
                                               _e122854122944_
                                               _hd122853122947_
                                               _tl122852122949_
                                               _e122857122952_
                                               _hd122856122955_
                                               _tl122855122957_
                                               _e122860122960_
                                               _hd122859122963_
                                               _tl122858122965_
                                               _e122863122968_
                                               _hd122862122971_
                                               _tl122861122973_)
                                              (___kont127079127080_))
                                          (___kont127079127080_))
                                      (___kont127079127080_))))
                              (___kont127079127080_))
                          (___kont127079127080_))
                      (___kont127079127080_))))
              (___kont127079127080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127079127080_))
                                          (___kont127079127080_))))
                                  (___kont127079127080_))
                              (___kont127079127080_))
                          (___kont127079127080_))))
                  (___kont127079127080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127079127080_))
                                              (___kont127079127080_))))
                                      (___kont127079127080_))
                                  (___kont127079127080_))
                              (___kont127079127080_))))
                      (___kont127079127080_))))
              (___kont127079127080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127079127080_))
                                              (___kont127079127080_))))
                                      (___kont127079127080_))))
                              (___kont127079127080_)))))
                  (___kont127079127080_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122174_)
        (let* ((___stx127207127208_ _form122174_)
               (_g122178122302_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127207127208_)))))
          (let ((___kont127209127210_
                 (lambda (_L122672_ _L122673_ _L122674_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122673_))))
                (___kont127215127216_
                 (lambda (_L122520_ _L122521_ _L122522_ _L122523_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122520_))))
                (___kont127219127220_
                 (lambda (_L122387_ _L122388_ _L122389_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122387_)))))
            (let* ((___match127316127317_
                    (lambda (_e122270122307_
                             _hd122269122310_
                             _tl122268122312_
                             _e122273122315_
                             _hd122272122318_
                             _tl122271122320_
                             _e122276122323_
                             _hd122275122326_
                             _tl122274122328_
                             _e122279122331_
                             _hd122278122334_
                             _tl122277122336_
                             _e122282122339_
                             _hd122281122342_
                             _tl122280122344_
                             _e122285122347_
                             _hd122284122350_
                             _tl122283122352_
                             _e122288122355_
                             _hd122287122358_
                             _tl122286122360_
                             _e122291122363_
                             _hd122290122366_
                             _tl122289122368_
                             _e122294122371_
                             _hd122293122374_
                             _tl122292122376_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122286122360_))
                          (let ((_e122297122379_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122286122360_))))
                            (let ((_tl122295122384_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122297122379_)))
                                  (_hd122296122382_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122297122379_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122295122384_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122271122320_))
                                      (___kont127219127220_
                                       _hd122293122374_
                                       _hd122284122350_
                                       _hd122269122310_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122178122302_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122178122302_)))))
                          (let () (declare (not safe)) (_g122178122302_)))))
                   (___match127246127247_
                    (lambda (_e122231122424_
                             _hd122230122427_
                             _tl122229122429_
                             ___splice127217127218_
                             _target122232122432_
                             _tl122234122434_)
                      (letrec ((_loop122235122437_
                                (lambda (_hd122233122440_ _arg122239122442_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122233122440_))
                                      (let ((_e122236122445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122233122440_))))
                                        (let ((_lp-tl122238122450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122236122445_)))
                                              (_lp-hd122237122448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122236122445_))))
                                          (let ((__tmp128475
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122237122448_
                                                         _arg122239122442_))))
                                            (declare (not safe))
                                            (_loop122235122437_
                                             _lp-tl122238122450_
                                             __tmp128475))))
                                      (let ((_arg122240122453_
                                             (reverse _arg122239122442_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122229122429_))
                                            (let ((_e122243122456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122229122429_))))
                                              (let ((_tl122241122461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122243122456_)))
                                                    (_hd122242122459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122243122456_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122242122459_))
                                                    (let ((_e122246122464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122242122459_))))
                                                      (let ((_tl122244122469_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122246122464_)))
                    (_hd122245122467_
                     (let () (declare (not safe)) (##car _e122246122464_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122245122467_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122245122467_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122244122469_))
                            (let ((_e122249122472_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122244122469_))))
                              (let ((_tl122247122477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122249122472_)))
                                    (_hd122248122475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122249122472_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122248122475_))
                                    (let ((_e122252122480_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122248122475_))))
                                      (let ((_tl122250122485_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122252122480_)))
                                            (_hd122251122483_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122252122480_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122251122483_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122251122483_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122250122485_))
                                                    (let ((_e122255122488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122250122485_))))
                                                      (let ((_tl122253122493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122255122488_)))
                    (_hd122254122491_
                     (let () (declare (not safe)) (##car _e122255122488_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122253122493_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122247122477_))
                        (let ((_e122258122496_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122247122477_))))
                          (let ((_tl122256122501_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122258122496_)))
                                (_hd122257122499_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122258122496_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122257122499_))
                                (let ((_e122261122504_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122257122499_))))
                                  (let ((_tl122259122509_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122261122504_)))
                                        (_hd122260122507_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122261122504_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122260122507_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122260122507_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122259122509_))
                                                (let ((_e122264122512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122259122509_))))
                                                  (let ((_tl122262122517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122264122512_)))
                                                        (_hd122263122515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122264122512_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122262122517_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122241122461_))
                                                            (___kont127215127216_
                                                             _hd122263122515_
                                                             _hd122254122491_
                                                             _tl122234122434_
                                                             _arg122240122453_)
                                                            (___match127316127317_
                                                             _e122231122424_
                                                             _hd122230122427_
                                                             _tl122229122429_
                                                             _e122243122456_
                                                             _hd122242122459_
                                                             _tl122241122461_
                                                             _e122246122464_
                                                             _hd122245122467_
                                                             _tl122244122469_
                                                             _e122249122472_
                                                             _hd122248122475_
                                                             _tl122247122477_
                                                             _e122252122480_
                                                             _hd122251122483_
                                                             _tl122250122485_
                                                             _e122255122488_
                                                             _hd122254122491_
                                                             _tl122253122493_
                                                             _e122258122496_
                                                             _hd122257122499_
                                                             _tl122256122501_
                                                             _e122261122504_
                                                             _hd122260122507_
                                                             _tl122259122509_
                                                             _e122264122512_
                                                             _hd122263122515_
                                                             _tl122262122517_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122178122302_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122178122302_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122178122302_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122178122302_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122178122302_)))))
                        (let () (declare (not safe)) (_g122178122302_)))
                    (let () (declare (not safe)) (_g122178122302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122178122302_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122178122302_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122178122302_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122178122302_)))))
                            (let () (declare (not safe)) (_g122178122302_)))
                        (let () (declare (not safe)) (_g122178122302_)))
                    (let () (declare (not safe)) (_g122178122302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122178122302_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122178122302_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122235122437_ _target122232122432_ '())))))
                   (___match127234127235_
                    (lambda (_e122185122560_
                             _hd122184122563_
                             _tl122183122565_
                             ___splice127211127212_
                             _target122186122568_
                             _tl122188122570_)
                      (letrec ((_loop122189122573_
                                (lambda (_hd122187122576_ _arg122193122578_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122187122576_))
                                      (let ((_e122190122581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122187122576_))))
                                        (let ((_lp-tl122192122586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122190122581_)))
                                              (_lp-hd122191122584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122190122581_))))
                                          (let ((__tmp128477
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122191122584_
                                                         _arg122193122578_))))
                                            (declare (not safe))
                                            (_loop122189122573_
                                             _lp-tl122192122586_
                                             __tmp128477))))
                                      (let ((_arg122194122589_
                                             (reverse _arg122193122578_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122183122565_))
                                            (let ((_e122197122592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122183122565_))))
                                              (let ((_tl122195122597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122197122592_)))
                                                    (_hd122196122595_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122197122592_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122196122595_))
                                                    (let ((_e122200122600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122196122595_))))
                                                      (let ((_tl122198122605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122200122600_)))
                    (_hd122199122603_
                     (let () (declare (not safe)) (##car _e122200122600_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122199122603_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122199122603_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122198122605_))
                            (let ((_e122203122608_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122198122605_))))
                              (let ((_tl122201122613_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122203122608_)))
                                    (_hd122202122611_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122203122608_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122202122611_))
                                    (let ((_e122206122616_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122202122611_))))
                                      (let ((_tl122204122621_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122206122616_)))
                                            (_hd122205122619_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122206122616_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122205122619_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122205122619_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122204122621_))
                                                    (let ((_e122209122624_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122204122621_))))
                                                      (let ((_tl122207122629_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122209122624_)))
                    (_hd122208122627_
                     (let () (declare (not safe)) (##car _e122209122624_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122207122629_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122201122613_))
                        (let ((___splice127213127214_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122201122613_
                                  '0))))
                          (let ((_tl122212122634_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127213127214_ '1)))
                                (_target122210122632_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127213127214_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122212122634_))
                                (letrec ((_loop122213122637_
                                          (lambda (_hd122211122640_
                                                   _xarg122217122642_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122211122640_))
                                                (let ((_e122214122645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122211122640_))))
                                                  (let ((_lp-tl122216122650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122214122645_)))
                                                        (_lp-hd122215122648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122214122645_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122215122648_))
                                                        (let ((_e122221122653_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122215122648_))))
                  (let ((_tl122219122658_
                         (let () (declare (not safe)) (##cdr _e122221122653_)))
                        (_hd122220122656_
                         (let ()
                           (declare (not safe))
                           (##car _e122221122653_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122220122656_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122220122656_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122219122658_))
                                (let ((_e122224122661_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122219122658_))))
                                  (let ((_tl122222122666_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122224122661_)))
                                        (_hd122223122664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122224122661_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122222122666_))
                                        (let ((__tmp128476
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122223122664_
                                                       _xarg122217122642_))))
                                          (declare (not safe))
                                          (_loop122213122637_
                                           _lp-tl122216122650_
                                           __tmp128476))
                                        (___match127246127247_
                                         _e122185122560_
                                         _hd122184122563_
                                         _tl122183122565_
                                         ___splice127211127212_
                                         _target122186122568_
                                         _tl122188122570_))))
                                (___match127246127247_
                                 _e122185122560_
                                 _hd122184122563_
                                 _tl122183122565_
                                 ___splice127211127212_
                                 _target122186122568_
                                 _tl122188122570_))
                            (___match127246127247_
                             _e122185122560_
                             _hd122184122563_
                             _tl122183122565_
                             ___splice127211127212_
                             _target122186122568_
                             _tl122188122570_))
                        (___match127246127247_
                         _e122185122560_
                         _hd122184122563_
                         _tl122183122565_
                         ___splice127211127212_
                         _target122186122568_
                         _tl122188122570_))))
                (___match127246127247_
                 _e122185122560_
                 _hd122184122563_
                 _tl122183122565_
                 ___splice127211127212_
                 _target122186122568_
                 _tl122188122570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122218122669_
                                                       (reverse _xarg122217122642_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122195122597_))
                                                      (___kont127209127210_
                                                       _xarg122218122669_
                                                       _hd122208122627_
                                                       _arg122194122589_)
                                                      (___match127246127247_
                                                       _e122185122560_
                                                       _hd122184122563_
                                                       _tl122183122565_
                                                       ___splice127211127212_
                                                       _target122186122568_
                                                       _tl122188122570_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122213122637_
                                     _target122210122632_
                                     '())))
                                (___match127246127247_
                                 _e122185122560_
                                 _hd122184122563_
                                 _tl122183122565_
                                 ___splice127211127212_
                                 _target122186122568_
                                 _tl122188122570_))))
                        (___match127246127247_
                         _e122185122560_
                         _hd122184122563_
                         _tl122183122565_
                         ___splice127211127212_
                         _target122186122568_
                         _tl122188122570_))
                    (___match127246127247_
                     _e122185122560_
                     _hd122184122563_
                     _tl122183122565_
                     ___splice127211127212_
                     _target122186122568_
                     _tl122188122570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127246127247_
                                                     _e122185122560_
                                                     _hd122184122563_
                                                     _tl122183122565_
                                                     ___splice127211127212_
                                                     _target122186122568_
                                                     _tl122188122570_))
                                                (___match127246127247_
                                                 _e122185122560_
                                                 _hd122184122563_
                                                 _tl122183122565_
                                                 ___splice127211127212_
                                                 _target122186122568_
                                                 _tl122188122570_))
                                            (___match127246127247_
                                             _e122185122560_
                                             _hd122184122563_
                                             _tl122183122565_
                                             ___splice127211127212_
                                             _target122186122568_
                                             _tl122188122570_))))
                                    (___match127246127247_
                                     _e122185122560_
                                     _hd122184122563_
                                     _tl122183122565_
                                     ___splice127211127212_
                                     _target122186122568_
                                     _tl122188122570_))))
                            (___match127246127247_
                             _e122185122560_
                             _hd122184122563_
                             _tl122183122565_
                             ___splice127211127212_
                             _target122186122568_
                             _tl122188122570_))
                        (___match127246127247_
                         _e122185122560_
                         _hd122184122563_
                         _tl122183122565_
                         ___splice127211127212_
                         _target122186122568_
                         _tl122188122570_))
                    (___match127246127247_
                     _e122185122560_
                     _hd122184122563_
                     _tl122183122565_
                     ___splice127211127212_
                     _target122186122568_
                     _tl122188122570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127246127247_
                                                     _e122185122560_
                                                     _hd122184122563_
                                                     _tl122183122565_
                                                     ___splice127211127212_
                                                     _target122186122568_
                                                     _tl122188122570_))))
                                            (___match127246127247_
                                             _e122185122560_
                                             _hd122184122563_
                                             _tl122183122565_
                                             ___splice127211127212_
                                             _target122186122568_
                                             _tl122188122570_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122189122573_ _target122186122568_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127207127208_))
                  (let ((_e122185122560_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127207127208_))))
                    (let ((_tl122183122565_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122185122560_)))
                          (_hd122184122563_
                           (let ()
                             (declare (not safe))
                             (##car _e122185122560_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122184122563_))
                          (let ((___splice127211127212_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122184122563_
                                    '0))))
                            (let ((_tl122188122570_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127211127212_ '1)))
                                  (_target122186122568_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127211127212_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122188122570_))
                                  (___match127234127235_
                                   _e122185122560_
                                   _hd122184122563_
                                   _tl122183122565_
                                   ___splice127211127212_
                                   _target122186122568_
                                   _tl122188122570_)
                                  (___match127246127247_
                                   _e122185122560_
                                   _hd122184122563_
                                   _tl122183122565_
                                   ___splice127211127212_
                                   _target122186122568_
                                   _tl122188122570_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122183122565_))
                              (let ((_e122273122315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122183122565_))))
                                (let ((_tl122271122320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122273122315_)))
                                      (_hd122272122318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122273122315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122272122318_))
                                      (let ((_e122276122323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122272122318_))))
                                        (let ((_tl122274122328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122276122323_)))
                                              (_hd122275122326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122276122323_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122275122326_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122275122326_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122274122328_))
                                                      (let ((_e122279122331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122274122328_))))
                (let ((_tl122277122336_
                       (let () (declare (not safe)) (##cdr _e122279122331_)))
                      (_hd122278122334_
                       (let () (declare (not safe)) (##car _e122279122331_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122278122334_))
                      (let ((_e122282122339_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122278122334_))))
                        (let ((_tl122280122344_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122282122339_)))
                              (_hd122281122342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122282122339_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122281122342_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122281122342_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122280122344_))
                                      (let ((_e122285122347_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122280122344_))))
                                        (let ((_tl122283122352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122285122347_)))
                                              (_hd122284122350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122285122347_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122283122352_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122277122336_))
                                                  (let ((_e122288122355_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122277122336_))))
                                                    (let ((_tl122286122360_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122288122355_)))
                                                          (_hd122287122358_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122288122355_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122287122358_))
                                                          (let ((_e122291122363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122287122358_))))
                    (let ((_tl122289122368_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122291122363_)))
                          (_hd122290122366_
                           (let ()
                             (declare (not safe))
                             (##car _e122291122363_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122290122366_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122290122366_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122289122368_))
                                  (let ((_e122294122371_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122289122368_))))
                                    (let ((_tl122292122376_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122294122371_)))
                                          (_hd122293122374_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122294122371_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122292122376_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122286122360_))
                                              (let ((_e122297122379_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122286122360_))))
                                                (let ((_tl122295122384_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122297122379_)))
                                                      (_hd122296122382_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122297122379_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122295122384_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122271122320_))
                                                          (___kont127219127220_
                                                           _hd122293122374_
                                                           _hd122284122350_
                                                           _hd122184122563_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122178122302_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122178122302_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122178122302_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122178122302_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122178122302_)))
                              (let () (declare (not safe)) (_g122178122302_)))
                          (let () (declare (not safe)) (_g122178122302_)))))
                  (let () (declare (not safe)) (_g122178122302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122178122302_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122178122302_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122178122302_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122178122302_)))
                              (let ()
                                (declare (not safe))
                                (_g122178122302_)))))
                      (let () (declare (not safe)) (_g122178122302_)))))
              (let () (declare (not safe)) (_g122178122302_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122178122302_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122178122302_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122178122302_)))))
                              (let ()
                                (declare (not safe))
                                (_g122178122302_))))))
                  (let () (declare (not safe)) (_g122178122302_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121978_)
        (let* ((_g121980121994_
                (lambda (_g121981121991_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121981121991_))))
               (_g121979122171_
                (lambda (_g121981121997_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121981121997_))
                      (let ((_e121986121999_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121981121997_))))
                        (let ((_hd121985122002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121986121999_)))
                              (_tl121984122004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121986121999_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121984122004_))
                              (let ((_e121989122007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121984122004_))))
                                (let ((_hd121988122010_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121989122007_)))
                                      (_tl121987122012_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121989122007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121987122012_))
                                      ((lambda (_L122015_ _L122016_)
                                         (let* ((___stx127329127330_ _L122016_)
                                                (_g122031122059_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127329127330_)))))
                                           (let ((___kont127331127332_
                                                  (lambda (_L122150_)
                                                    (length (let ((__tmp128478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122160122163_ _g122161122165_)
                             (let ()
                               (declare (not safe))
                               (cons _g122160122163_ _g122161122165_)))))
                      (declare (not safe))
                      (foldr1 __tmp128478 '() _L122150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127335127336_
                                                  (lambda (_L122101_ _L122102_)
                                                    (let ((__tmp128479
                                                           (length (let ((__tmp128480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122113122116_ _g122114122118_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122113122116_
                                            _g122114122118_)))))
                             (declare (not safe))
                             (foldr1 __tmp128480 '() _L122102_)))))
              (declare (not safe))
              (cons __tmp128479 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127339127340_
                                                  (lambda (_L122064_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127354127355_
                                                     (lambda (___splice127337127338_
                                                              _target122045122077_
                                                              _tl122047122079_)
                                                       (letrec ((_loop122048122082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122046122085_ _arg122052122087_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122046122085_))
                               (let ((_e122049122090_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122046122085_))))
                                 (let ((_lp-tl122051122095_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122049122090_)))
                                       (_lp-hd122050122093_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122049122090_))))
                                   (let ((__tmp128481
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122050122093_
                                                  _arg122052122087_))))
                                     (declare (not safe))
                                     (_loop122048122082_
                                      _lp-tl122051122095_
                                      __tmp128481))))
                               (let ((_arg122053122098_
                                      (reverse _arg122052122087_)))
                                 (___kont127335127336_
                                  _tl122047122079_
                                  _arg122053122098_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122048122082_ _target122045122077_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127348127349_
                                                     (lambda (___splice127333127334_
                                                              _target122034122126_
                                                              _tl122036122128_)
                                                       (letrec ((_loop122037122131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122035122134_ _arg122041122136_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122035122134_))
                               (let ((_e122038122139_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122035122134_))))
                                 (let ((_lp-tl122040122144_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122038122139_)))
                                       (_lp-hd122039122142_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122038122139_))))
                                   (let ((__tmp128482
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122039122142_
                                                  _arg122041122136_))))
                                     (declare (not safe))
                                     (_loop122037122131_
                                      _lp-tl122040122144_
                                      __tmp128482))))
                               (let ((_arg122042122147_
                                      (reverse _arg122041122136_)))
                                 (___kont127331127332_ _arg122042122147_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122037122131_ _target122034122126_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127329127330_))
                                                   (let ((___splice127333127334_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127329127330_
                                                             '0))))
                                                     (let ((_tl122036122128_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127333127334_
                                                               '1)))
                                                           (_target122034122126_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127333127334_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122036122128_))
                                                           (___match127348127349_
                                                            ___splice127333127334_
                                                            _target122034122126_
                                                            _tl122036122128_)
                                                           (___match127354127355_
                                                            ___splice127333127334_
                                                            _target122034122126_
                                                            _tl122036122128_))))
                                                   (___kont127339127340_
                                                    ___stx127329127330_))))))
                                       _hd121988122010_
                                       _hd121985122002_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121980121994_ _g121981121997_)))))
                              (let ()
                                (declare (not safe))
                                (_g121980121994_ _g121981121997_)))))
                      (let ()
                        (declare (not safe))
                        (_g121980121994_ _g121981121997_))))))
          (declare (not safe))
          (_g121979122171_ _form121978_))))
    (define gxc#lambda-expr?
      (lambda (_expr121931_)
        (let* ((___stx127357127358_ _expr121931_)
               (_g121934121944_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127357127358_)))))
          (let ((___kont127359127360_ (lambda (_L121964_) '#t))
                (___kont127361127362_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127357127358_))
                (let ((_e121939121956_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127357127358_))))
                  (let ((_tl121937121961_
                         (let () (declare (not safe)) (##cdr _e121939121956_)))
                        (_hd121938121959_
                         (let ()
                           (declare (not safe))
                           (##car _e121939121956_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121938121959_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121938121959_))
                            (___kont127359127360_ _tl121937121961_)
                            (___kont127361127362_))
                        (___kont127361127362_))))
                (___kont127361127362_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121884_)
        (let* ((___stx127375127376_ _expr121884_)
               (_g121887121897_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127375127376_)))))
          (let ((___kont127377127378_ (lambda (_L121917_) '#t))
                (___kont127379127380_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127375127376_))
                (let ((_e121892121909_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127375127376_))))
                  (let ((_tl121890121914_
                         (let () (declare (not safe)) (##cdr _e121892121909_)))
                        (_hd121891121912_
                         (let ()
                           (declare (not safe))
                           (##car _e121892121909_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121891121912_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121891121912_))
                            (___kont127377127378_ _tl121890121914_)
                            (___kont127379127380_))
                        (___kont127379127380_))))
                (___kont127379127380_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121753_)
        (let* ((___stx127393127394_ _expr121753_)
               (_g121756121786_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127393127394_)))))
          (let ((___kont127395127396_
                 (lambda (_L121854_ _L121855_ _L121856_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121856_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121855_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121854_))
                           '#f)
                       '#f)))
                (___kont127397127398_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127393127394_))
                (let ((_e121763121798_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127393127394_))))
                  (let ((_tl121761121803_
                         (let () (declare (not safe)) (##cdr _e121763121798_)))
                        (_hd121762121801_
                         (let ()
                           (declare (not safe))
                           (##car _e121763121798_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121762121801_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121762121801_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121761121803_))
                                (let ((_e121766121806_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121761121803_))))
                                  (let ((_tl121764121811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121766121806_)))
                                        (_hd121765121809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121766121806_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121765121809_))
                                        (let ((_e121769121814_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121765121809_))))
                                          (let ((_tl121767121819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121769121814_)))
                                                (_hd121768121817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121769121814_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121768121817_))
                                                (let ((_e121772121822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121768121817_))))
                                                  (let ((_tl121770121827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121772121822_)))
                                                        (_hd121771121825_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121772121822_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121771121825_))
                                                        (let ((_e121775121830_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121771121825_))))
                  (let ((_tl121773121835_
                         (let () (declare (not safe)) (##cdr _e121775121830_)))
                        (_hd121774121833_
                         (let ()
                           (declare (not safe))
                           (##car _e121775121830_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121773121835_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121770121827_))
                            (let ((_e121778121838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121770121827_))))
                              (let ((_tl121776121843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121778121838_)))
                                    (_hd121777121841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121778121838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121776121843_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121767121819_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121764121811_))
                                            (let ((_e121781121846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121764121811_))))
                                              (let ((_tl121779121851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121781121846_)))
                                                    (_hd121780121849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121781121846_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121779121851_))
                                                    (___kont127395127396_
                                                     _hd121780121849_
                                                     _hd121777121841_
                                                     _hd121774121833_)
                                                    (___kont127397127398_))))
                                            (___kont127397127398_))
                                        (___kont127397127398_))
                                    (___kont127397127398_))))
                            (___kont127397127398_))
                        (___kont127397127398_))))
                (___kont127397127398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127397127398_))))
                                        (___kont127397127398_))))
                                (___kont127397127398_))
                            (___kont127397127398_))
                        (___kont127397127398_))))
                (___kont127397127398_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121078_)
        (let* ((___stx127455127456_ _expr121078_)
               (_g121081121239_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127455127456_)))))
          (let ((___kont127457127458_
                 (lambda (_L121627_
                          _L121628_
                          _L121629_
                          _L121630_
                          _L121631_
                          _L121632_
                          _L121633_
                          _L121634_
                          _L121635_
                          _L121636_
                          _L121637_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L121634_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L121630_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L121629_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121637_
                                      _L121628_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121636_
                                          _L121633_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121631_
                                              _L121627_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121635_
                                              _L121632_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127459127460_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127455127456_))
                (let ((_e121096121251_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127455127456_))))
                  (let ((_tl121094121256_
                         (let () (declare (not safe)) (##cdr _e121096121251_)))
                        (_hd121095121254_
                         (let ()
                           (declare (not safe))
                           (##car _e121096121251_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121095121254_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121095121254_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121094121256_))
                                (let ((_e121099121259_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121094121256_))))
                                  (let ((_tl121097121264_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121099121259_)))
                                        (_hd121098121262_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121099121259_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121098121262_))
                                        (let ((_e121102121267_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121098121262_))))
                                          (let ((_tl121100121272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121102121267_)))
                                                (_hd121101121270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121102121267_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121101121270_))
                                                (let ((_e121105121275_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121101121270_))))
                                                  (let ((_tl121103121280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121105121275_)))
                                                        (_hd121104121278_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121105121275_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121104121278_))
                                                        (let ((_e121108121283_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121104121278_))))
                  (let ((_tl121106121288_
                         (let () (declare (not safe)) (##cdr _e121108121283_)))
                        (_hd121107121286_
                         (let ()
                           (declare (not safe))
                           (##car _e121108121283_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121106121288_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121103121280_))
                            (let ((_e121111121291_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121103121280_))))
                              (let ((_tl121109121296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121111121291_)))
                                    (_hd121110121294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121111121291_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121110121294_))
                                    (let ((_e121114121299_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121110121294_))))
                                      (let ((_tl121112121304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121114121299_)))
                                            (_hd121113121302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121114121299_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121113121302_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121113121302_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121112121304_))
                                                    (let ((_e121117121307_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121112121304_))))
                                                      (let ((_tl121115121312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121117121307_)))
                    (_hd121116121310_
                     (let () (declare (not safe)) (##car _e121117121307_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121116121310_))
                    (let ((_e121120121315_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121116121310_))))
                      (let ((_tl121118121320_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121120121315_)))
                            (_hd121119121318_
                             (let ()
                               (declare (not safe))
                               (##car _e121120121315_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121119121318_))
                            (let ((_e121123121323_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121119121318_))))
                              (let ((_tl121121121328_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121123121323_)))
                                    (_hd121122121326_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121123121323_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121122121326_))
                                    (let ((_e121126121331_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121122121326_))))
                                      (let ((_tl121124121336_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121126121331_)))
                                            (_hd121125121334_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121126121331_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121124121336_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121121121328_))
                                                (let ((_e121129121339_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121121121328_))))
                                                  (let ((_tl121127121344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121129121339_)))
                                                        (_hd121128121342_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121129121339_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121127121344_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121118121320_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121115121312_))
                        (let ((_e121132121347_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121115121312_))))
                          (let ((_tl121130121352_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121132121347_)))
                                (_hd121131121350_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121132121347_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121131121350_))
                                (let ((_e121135121355_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121131121350_))))
                                  (let ((_tl121133121360_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121135121355_)))
                                        (_hd121134121358_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121135121355_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121134121358_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121134121358_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121133121360_))
                                                (let ((_e121138121363_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121133121360_))))
                                                  (let ((_tl121136121368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121138121363_)))
                                                        (_hd121137121366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121138121363_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121137121366_))
                                                        (let ((_e121141121371_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121137121366_))))
                  (let ((_tl121139121376_
                         (let () (declare (not safe)) (##cdr _e121141121371_)))
                        (_hd121140121374_
                         (let ()
                           (declare (not safe))
                           (##car _e121141121371_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121136121368_))
                        (let ((_e121144121379_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121136121368_))))
                          (let ((_tl121142121384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121144121379_)))
                                (_hd121143121382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121144121379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121143121382_))
                                (let ((_e121147121387_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121143121382_))))
                                  (let ((_tl121145121392_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121147121387_)))
                                        (_hd121146121390_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121147121387_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121146121390_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121146121390_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121145121392_))
                                                (let ((_e121150121395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121145121392_))))
                                                  (let ((_tl121148121400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121150121395_)))
                                                        (_hd121149121398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121150121395_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121149121398_))
                                                        (let ((_e121153121403_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121149121398_))))
                  (let ((_tl121151121408_
                         (let () (declare (not safe)) (##cdr _e121153121403_)))
                        (_hd121152121406_
                         (let ()
                           (declare (not safe))
                           (##car _e121153121403_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121152121406_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121152121406_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121151121408_))
                                (let ((_e121156121411_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121151121408_))))
                                  (let ((_tl121154121416_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121156121411_)))
                                        (_hd121155121414_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121156121411_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121154121416_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121148121400_))
                                            (let ((_e121159121419_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121148121400_))))
                                              (let ((_tl121157121424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121159121419_)))
                                                    (_hd121158121422_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121159121419_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121158121422_))
                                                    (let ((_e121162121427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121158121422_))))
                                                      (let ((_tl121160121432_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121162121427_)))
                    (_hd121161121430_
                     (let () (declare (not safe)) (##car _e121162121427_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121161121430_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121161121430_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121160121432_))
                            (let ((_e121165121435_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121160121432_))))
                              (let ((_tl121163121440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121165121435_)))
                                    (_hd121164121438_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121165121435_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121163121440_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121157121424_))
                                        (let ((_e121168121443_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121157121424_))))
                                          (let ((_tl121166121448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121168121443_)))
                                                (_hd121167121446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121168121443_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121167121446_))
                                                (let ((_e121171121451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121167121446_))))
                                                  (let ((_tl121169121456_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121171121451_)))
                                                        (_hd121170121454_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121171121451_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121170121454_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121170121454_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121169121456_))
                        (let ((_e121174121459_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121169121456_))))
                          (let ((_tl121172121464_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121174121459_)))
                                (_hd121173121462_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121174121459_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121172121464_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121142121384_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121130121352_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121109121296_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121100121272_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121097121264_))
                                                    (let ((_e121177121467_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121097121264_))))
                                                      (let ((_tl121175121472_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121177121467_)))
                    (_hd121176121470_
                     (let () (declare (not safe)) (##car _e121177121467_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121176121470_))
                    (let ((_e121180121475_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121176121470_))))
                      (let ((_tl121178121480_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121180121475_)))
                            (_hd121179121478_
                             (let ()
                               (declare (not safe))
                               (##car _e121180121475_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121179121478_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121179121478_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121178121480_))
                                    (let ((_e121183121483_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121178121480_))))
                                      (let ((_tl121181121488_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121183121483_)))
                                            (_hd121182121486_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121183121483_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121181121488_))
                                            (let ((_e121186121491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121181121488_))))
                                              (let ((_tl121184121496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121186121491_)))
                                                    (_hd121185121494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121186121491_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121185121494_))
                                                    (let ((_e121189121499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121185121494_))))
                                                      (let ((_tl121187121504_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121189121499_)))
                    (_hd121188121502_
                     (let () (declare (not safe)) (##car _e121189121499_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121188121502_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121188121502_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121187121504_))
                            (let ((_e121192121507_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121187121504_))))
                              (let ((_tl121190121512_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121192121507_)))
                                    (_hd121191121510_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121192121507_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121191121510_))
                                    (let ((_e121195121515_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121191121510_))))
                                      (let ((_tl121193121520_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121195121515_)))
                                            (_hd121194121518_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121195121515_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121194121518_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121194121518_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121193121520_))
                                                    (let ((_e121198121523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121193121520_))))
                                                      (let ((_tl121196121528_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121198121523_)))
                    (_hd121197121526_
                     (let () (declare (not safe)) (##car _e121198121523_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121196121528_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121190121512_))
                        (let ((_e121201121531_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121190121512_))))
                          (let ((_tl121199121536_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121201121531_)))
                                (_hd121200121534_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121201121531_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121200121534_))
                                (let ((_e121204121539_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121200121534_))))
                                  (let ((_tl121202121544_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121204121539_)))
                                        (_hd121203121542_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121204121539_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121203121542_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121203121542_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121202121544_))
                                                (let ((_e121207121547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121202121544_))))
                                                  (let ((_tl121205121552_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121207121547_)))
                                                        (_hd121206121550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121207121547_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121205121552_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121199121536_))
                                                            (let ((_e121210121555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121199121536_))))
                      (let ((_tl121208121560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121210121555_)))
                            (_hd121209121558_
                             (let ()
                               (declare (not safe))
                               (##car _e121210121555_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121209121558_))
                            (let ((_e121213121563_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121209121558_))))
                              (let ((_tl121211121568_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121213121563_)))
                                    (_hd121212121566_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121213121563_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121212121566_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121212121566_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121211121568_))
                                            (let ((_e121216121571_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121211121568_))))
                                              (let ((_tl121214121576_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121216121571_)))
                                                    (_hd121215121574_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121216121571_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121214121576_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121208121560_))
                                                        (let ((_e121219121579_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121208121560_))))
                  (let ((_tl121217121584_
                         (let () (declare (not safe)) (##cdr _e121219121579_)))
                        (_hd121218121582_
                         (let ()
                           (declare (not safe))
                           (##car _e121219121579_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121218121582_))
                        (let ((_e121222121587_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121218121582_))))
                          (let ((_tl121220121592_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121222121587_)))
                                (_hd121221121590_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121222121587_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121221121590_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121221121590_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121220121592_))
                                        (let ((_e121225121595_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121220121592_))))
                                          (let ((_tl121223121600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121225121595_)))
                                                (_hd121224121598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121225121595_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121223121600_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121217121584_))
                                                    (let ((_e121228121603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121217121584_))))
                                                      (let ((_tl121226121608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121228121603_)))
                    (_hd121227121606_
                     (let () (declare (not safe)) (##car _e121228121603_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121227121606_))
                    (let ((_e121231121611_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121227121606_))))
                      (let ((_tl121229121616_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121231121611_)))
                            (_hd121230121614_
                             (let ()
                               (declare (not safe))
                               (##car _e121231121611_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121230121614_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121230121614_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121229121616_))
                                    (let ((_e121234121619_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121229121616_))))
                                      (let ((_tl121232121624_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121234121619_)))
                                            (_hd121233121622_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121234121619_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121232121624_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121226121608_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121184121496_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121175121472_))
                                                        (___kont127457127458_
                                                         _hd121233121622_
                                                         _hd121224121598_
                                                         _hd121206121550_
                                                         _hd121197121526_
                                                         _hd121182121486_
                                                         _hd121173121462_
                                                         _hd121164121438_
                                                         _hd121155121414_
                                                         _hd121140121374_
                                                         _hd121125121334_
                                                         _hd121107121286_)
                                                        (___kont127459127460_))
                                                    (___kont127459127460_))
                                                (___kont127459127460_))
                                            (___kont127459127460_))))
                                    (___kont127459127460_))
                                (___kont127459127460_))
                            (___kont127459127460_))))
                    (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))
                                                (___kont127459127460_))))
                                        (___kont127459127460_))
                                    (___kont127459127460_))
                                (___kont127459127460_))))
                        (___kont127459127460_))))
                (___kont127459127460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))))
                                            (___kont127459127460_))
                                        (___kont127459127460_))
                                    (___kont127459127460_))))
                            (___kont127459127460_))))
                    (___kont127459127460_))
                (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127459127460_))
                                            (___kont127459127460_))
                                        (___kont127459127460_))))
                                (___kont127459127460_))))
                        (___kont127459127460_))
                    (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))
                                                (___kont127459127460_))
                                            (___kont127459127460_))))
                                    (___kont127459127460_))))
                            (___kont127459127460_))
                        (___kont127459127460_))
                    (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))))
                                            (___kont127459127460_))))
                                    (___kont127459127460_))
                                (___kont127459127460_))
                            (___kont127459127460_))))
                    (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))
                                                (___kont127459127460_))
                                            (___kont127459127460_))
                                        (___kont127459127460_))
                                    (___kont127459127460_))
                                (___kont127459127460_))))
                        (___kont127459127460_))
                    (___kont127459127460_))
                (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127459127460_))))
                                        (___kont127459127460_))
                                    (___kont127459127460_))))
                            (___kont127459127460_))
                        (___kont127459127460_))
                    (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))))
                                            (___kont127459127460_))
                                        (___kont127459127460_))))
                                (___kont127459127460_))
                            (___kont127459127460_))
                        (___kont127459127460_))))
                (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127459127460_))
                                            (___kont127459127460_))
                                        (___kont127459127460_))))
                                (___kont127459127460_))))
                        (___kont127459127460_))))
                (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127459127460_))
                                            (___kont127459127460_))
                                        (___kont127459127460_))))
                                (___kont127459127460_))))
                        (___kont127459127460_))
                    (___kont127459127460_))
                (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127459127460_))
                                            (___kont127459127460_))))
                                    (___kont127459127460_))))
                            (___kont127459127460_))))
                    (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127459127460_))
                                                (___kont127459127460_))
                                            (___kont127459127460_))))
                                    (___kont127459127460_))))
                            (___kont127459127460_))
                        (___kont127459127460_))))
                (___kont127459127460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127459127460_))))
                                        (___kont127459127460_))))
                                (___kont127459127460_))
                            (___kont127459127460_))
                        (___kont127459127460_))))
                (___kont127459127460_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120820_ _id120821_ _clauses120822_ _gensym?120823_)
        (let _lp120825_ ((_rest120827_ _clauses120822_)
                         (_ids120828_ '())
                         (_impls120829_ '())
                         (_clauses120830_ '()))
          (let* ((_rest120831120839_ _rest120827_)
                 (_else120833120847_
                  (lambda ()
                    (values (reverse _ids120828_)
                            (reverse _impls120829_)
                            (reverse _clauses120830_))))
                 (_K120835121052_
                  (lambda (_rest120850_ _clause120851_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120851_))
                        (let ((__tmp128538
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120851_ _clauses120830_))))
                          (declare (not safe))
                          (_lp120825_
                           _rest120850_
                           _ids120828_
                           _impls120829_
                           __tmp128538))
                        (let* ((_g120853120864_
                                (lambda (_g120854120861_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120854120861_))))
                               (_g120852121049_
                                (lambda (_g120854120867_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120854120867_))
                                      (let ((_e120859120869_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120854120867_))))
                                        (let ((_hd120858120872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120859120869_)))
                                              (_tl120857120874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120859120869_))))
                                          ((lambda (_L120877_ _L120878_)
                                             (let* ((_id120895_
                                                     (let ((__tmp128485
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120821_)))
                                                           (__tmp128484
                                                            (length _clauses120830_))
                                                           (__tmp128483
                                                            (if _gensym?120823_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128485
                                                        '"__"
                                                        __tmp128484
                                                        __tmp128483)))
                                                    (_id120897_
                                                     (let ((__tmp128486
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120820_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120895_
                                                        __tmp128486)))
                                                    (_impl120899_
                                                     (let ((__tmp128487
                                                            (let ((__tmp128489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128488
                           (let ()
                             (declare (not safe))
                             (cons _L120878_ _L120877_))))
                      (declare (not safe))
                      (cons __tmp128489 __tmp128488))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128487 _stx120820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121046_
                                                     (let* ((___stx127839127840_
                                                             _L120878_)
                                                            (_g120903120931_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127839127840_)))))
               (let ((___kont127841127842_
                      (lambda (_L121025_)
                        (let ((__tmp128490
                               (let ((__tmp128491
                                      (let ((__tmp128492
                                             (let ((__tmp128493
                                                    (let ((__tmp128499
                                                           (let ((__tmp128500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120897_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128500)))
                  (__tmp128494
                   (let ((__tmp128495
                          (lambda (_g121035121038_ _g121036121040_)
                            (let ((__tmp128496
                                   (let ((__tmp128498
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128497
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121035121038_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128498 __tmp128497))))
                              (declare (not safe))
                              (cons __tmp128496 _g121036121040_)))))
                     (declare (not safe))
                     (foldr1 __tmp128495 '() _L121025_))))
              (declare (not safe))
              (cons __tmp128499 __tmp128494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128493))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128492
                                         _stx120820_))))
                                 (declare (not safe))
                                 (cons __tmp128491 '()))))
                          (declare (not safe))
                          (cons _L120878_ __tmp128490))))
                     (___kont127845127846_
                      (lambda (_L120976_ _L120977_)
                        (let ((__tmp128501
                               (let ((__tmp128502
                                      (let ((__tmp128503
                                             (let ((__tmp128504
                                                    (let ((__tmp128518
                                                           (let ((__tmp128519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128519)))
                  (__tmp128505
                   (let ((__tmp128516
                          (let ((__tmp128517
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120897_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128517)))
                         (__tmp128506
                          (let ((__tmp128512
                                 (let ((__tmp128513
                                        (let ((__tmp128515
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128514
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120976_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128515 __tmp128514))))
                                   (declare (not safe))
                                   (cons __tmp128513 '())))
                                (__tmp128507
                                 (let ((__tmp128508
                                        (lambda (_g120988120991_
                                                 _g120989120993_)
                                          (let ((__tmp128509
                                                 (let ((__tmp128511
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128510
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120988120991_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128511
                                                         __tmp128510))))
                                            (declare (not safe))
                                            (cons __tmp128509
                                                  _g120989120993_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128508 '() _L120977_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128512 __tmp128507))))
                     (declare (not safe))
                     (cons __tmp128516 __tmp128506))))
              (declare (not safe))
              (cons __tmp128518 __tmp128505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128504))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128503
                                         _stx120820_))))
                                 (declare (not safe))
                                 (cons __tmp128502 '()))))
                          (declare (not safe))
                          (cons _L120878_ __tmp128501))))
                     (___kont127849127850_
                      (lambda (_L120936_)
                        (let ((__tmp128520
                               (let ((__tmp128521
                                      (let ((__tmp128522
                                             (let ((__tmp128523
                                                    (let ((__tmp128531
                                                           (let ((__tmp128532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128532)))
                  (__tmp128524
                   (let ((__tmp128529
                          (let ((__tmp128530
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120897_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128530)))
                         (__tmp128525
                          (let ((__tmp128526
                                 (let ((__tmp128528
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128527
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120936_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128528 __tmp128527))))
                            (declare (not safe))
                            (cons __tmp128526 '()))))
                     (declare (not safe))
                     (cons __tmp128529 __tmp128525))))
              (declare (not safe))
              (cons __tmp128531 __tmp128524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128523))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128522
                                         _stx120820_))))
                                 (declare (not safe))
                                 (cons __tmp128521 '()))))
                          (declare (not safe))
                          (cons _L120878_ __tmp128520)))))
                 (let* ((___match127864127865_
                         (lambda (___splice127847127848_
                                  _target120917120952_
                                  _tl120919120954_)
                           (letrec ((_loop120920120957_
                                     (lambda (_hd120918120960_
                                              _arg120924120962_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120918120960_))
                                           (let ((_e120921120965_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120918120960_))))
                                             (let ((_lp-tl120923120970_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120921120965_)))
                                                   (_lp-hd120922120968_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120921120965_))))
                                               (let ((__tmp128533
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120922120968_
                                                              _arg120924120962_))))
                                                 (declare (not safe))
                                                 (_loop120920120957_
                                                  _lp-tl120923120970_
                                                  __tmp128533))))
                                           (let ((_arg120925120973_
                                                  (reverse _arg120924120962_)))
                                             (___kont127845127846_
                                              _tl120919120954_
                                              _arg120925120973_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120920120957_
                                _target120917120952_
                                '())))))
                        (___match127858127859_
                         (lambda (___splice127843127844_
                                  _target120906121001_
                                  _tl120908121003_)
                           (letrec ((_loop120909121006_
                                     (lambda (_hd120907121009_
                                              _arg120913121011_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120907121009_))
                                           (let ((_e120910121014_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120907121009_))))
                                             (let ((_lp-tl120912121019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120910121014_)))
                                                   (_lp-hd120911121017_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120910121014_))))
                                               (let ((__tmp128534
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120911121017_
                                                              _arg120913121011_))))
                                                 (declare (not safe))
                                                 (_loop120909121006_
                                                  _lp-tl120912121019_
                                                  __tmp128534))))
                                           (let ((_arg120914121022_
                                                  (reverse _arg120913121011_)))
                                             (___kont127841127842_
                                              _arg120914121022_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120909121006_
                                _target120906121001_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127839127840_))
                       (let ((___splice127843127844_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127839127840_
                                 '0))))
                         (let ((_tl120908121003_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127843127844_ '1)))
                               (_target120906121001_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127843127844_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120908121003_))
                               (___match127858127859_
                                ___splice127843127844_
                                _target120906121001_
                                _tl120908121003_)
                               (___match127864127865_
                                ___splice127843127844_
                                _target120906121001_
                                _tl120908121003_))))
                       (___kont127849127850_ ___stx127839127840_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128537
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120897_
                                                              _ids120828_)))
                                                     (__tmp128536
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120899_
                                                              _impls120829_)))
                                                     (__tmp128535
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121046_
                                                              _clauses120830_))))
                                                 (declare (not safe))
                                                 (_lp120825_
                                                  _rest120850_
                                                  __tmp128537
                                                  __tmp128536
                                                  __tmp128535))))
                                           _tl120857120874_
                                           _hd120858120872_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120853120864_ _g120854120867_))))))
                          (declare (not safe))
                          (_g120852121049_ _clause120851_))))))
            (if (let () (declare (not safe)) (##pair? _rest120831120839_))
                (let ((_hd120836121055_
                       (let ()
                         (declare (not safe))
                         (##car _rest120831120839_)))
                      (_tl120837121057_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120831120839_))))
                  (let* ((_clause121060_ _hd120836121055_)
                         (_rest121062_ _tl120837121057_))
                    (declare (not safe))
                    (_K120835121052_ _rest121062_ _clause121060_)))
                (let () (declare (not safe)) (_else120833120847_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121067_ _id121068_ _clauses121069_)
        (let ((_gensym?121071_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121067_
           _id121068_
           _clauses121069_
           _gensym?121071_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128540_
        (let ((_g128539_ (let () (declare (not safe)) (##length _g128540_))))
          (cond ((let () (declare (not safe)) (##fx= _g128539_ 3))
                 (apply (lambda (_stx121067_ _id121068_ _clauses121069_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121067_
                             _id121068_
                             _clauses121069_)))
                        _g128540_))
                ((let () (declare (not safe)) (##fx= _g128539_ 4))
                 (apply (lambda (_stx121073_
                                 _id121074_
                                 _clauses121075_
                                 _gensym?121076_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121073_
                             _id121074_
                             _clauses121075_
                             _gensym?121076_)))
                        _g128540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128540_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120097_)
        (letrec ((_case-lambda-clause-def120099_
                  (lambda (_id120816_ _impl120817_)
                    (let ((__tmp128541
                           (let ((__tmp128542
                                  (let ((__tmp128545
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120816_ '())))
                                        (__tmp128543
                                         (let ((__tmp128544
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120817_))))
                                           (declare (not safe))
                                           (cons __tmp128544 '()))))
                                    (declare (not safe))
                                    (cons __tmp128545 __tmp128543))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128542))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128541 _stx120097_))))
                 (_opt-lambda-dispatch-name120100_
                  (lambda (_id120812_)
                    (if (uninterned-symbol? _id120812_)
                        (let ((_str120814_ (symbol->string _id120812_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120814_))
                              '"%"
                              _id120812_))
                        _id120812_)))
                 (_kw-lambda-dispatch-name120101_
                  (lambda (_id120807_ _name120808_)
                    (if (uninterned-symbol? _id120807_)
                        (let ((_str120810_ (symbol->string _id120807_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120810_))
                              _name120808_
                              _id120807_))
                        _id120807_))))
          (let* ((___stx127887127888_ _stx120097_)
                 (_g120106120165_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127887127888_)))))
            (let ((___kont127889127890_
                   (lambda (_L120716_ _L120717_)
                     (let* ((___stx127867127868_ _L120716_)
                            (_g120734120748_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127867127868_)))))
                       (let ((___kont127869127870_
                              (lambda (_L120792_) _stx120097_))
                             (___kont127871127872_
                              (lambda (_L120761_)
                                (let ((_g128546_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120097_
                                          _L120717_
                                          _L120761_))))
                                  (begin
                                    (let ((_g128547_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128546_)
                                                 (##vector-length _g128546_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128547_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128547_)))
                                    (let ((_ids120771_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128546_ 0)))
                                          (_impls120772_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128546_ 1)))
                                          (_clauses120773_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128546_ 2))))
                                      (let* ((_g128548_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120771_))
                                             (_defs120776_
                                              (map _case-lambda-clause-def120099_
                                                   _ids120771_
                                                   _impls120772_)))
                                        (let ((__tmp128550
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120717_)))
                                              (__tmp128549
                                               (map gxc#identifier-symbol
                                                    _ids120771_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128550
                                           '" => "
                                           __tmp128549))
                                        (let ((__tmp128551
                                               (let ((__tmp128552
                                                      (let ((__tmp128553
                                                             (let ((__tmp128554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128555
                                   (let ((__tmp128556
                                          (let ((__tmp128561
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120717_ '())))
                                                (__tmp128557
                                                 (let ((__tmp128558
                                                        (let ((__tmp128560
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120773_)))
                      (__tmp128559
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128560 __tmp128559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128558 '()))))
                                            (declare (not safe))
                                            (cons __tmp128561 __tmp128557))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128556))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128555
                               _stx120097_))))
                       (declare (not safe))
                       (cons __tmp128554 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128553 _defs120776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128552))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128551
                                           _stx120097_)))))))))
                         (let ((___match127878127879_
                                (lambda (_e120739120784_
                                         _hd120738120787_
                                         _tl120737120789_)
                                  (let ((_L120792_ _tl120737120789_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120792_))
                                        (___kont127869127870_ _L120792_)
                                        (___kont127871127872_
                                         _tl120737120789_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127867127868_))
                               (let ((_e120739120784_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127867127868_))))
                                 (let ((_tl120737120789_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120739120784_)))
                                       (_hd120738120787_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120739120784_))))
                                   (___match127878127879_
                                    _e120739120784_
                                    _hd120738120787_
                                    _tl120737120789_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120734120748_))))))))
                  (___kont127891127892_
                   (lambda (_L120534_ _L120535_)
                     (let* ((_g120551120581_
                             (lambda (_g120552120578_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120552120578_))))
                            (_g120550120676_
                             (lambda (_g120552120584_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120552120584_))
                                   (let ((_e120558120586_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120552120584_))))
                                     (let ((_hd120557120589_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120558120586_)))
                                           (_tl120556120591_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120558120586_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120556120591_))
                                           (let ((_e120561120594_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120556120591_))))
                                             (let ((_hd120560120597_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120561120594_)))
                                                   (_tl120559120599_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120561120594_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120560120597_))
                                                   (let ((_e120564120602_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120560120597_))))
                                                     (let ((_hd120563120605_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120564120602_)))
                                                           (_tl120562120607_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120564120602_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120563120605_))
                                                           (let ((_e120567120610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120563120605_))))
                     (let ((_hd120566120613_
                            (let ()
                              (declare (not safe))
                              (##car _e120567120610_)))
                           (_tl120565120615_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120567120610_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120566120613_))
                           (let ((_e120570120618_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120566120613_))))
                             (let ((_hd120569120621_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120570120618_)))
                                   (_tl120568120623_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120570120618_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120568120623_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120565120615_))
                                       (let ((_e120573120626_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120565120615_))))
                                         (let ((_hd120572120629_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120573120626_)))
                                               (_tl120571120631_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120573120626_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120571120631_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120562120607_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120559120599_))
                                                       (let ((_e120576120634_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120559120599_))))
                 (let ((_hd120575120637_
                        (let () (declare (not safe)) (##car _e120576120634_)))
                       (_tl120574120639_
                        (let () (declare (not safe)) (##cdr _e120576120634_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120574120639_))
                       ((lambda (_L120642_ _L120643_ _L120644_)
                          (let* ((_lambda-id120668_
                                  (let ((__tmp128564
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120535_)))
                                        (__tmp128562
                                         (let ((__tmp128563
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120644_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120100_
                                            __tmp128563))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128564
                                     '"__"
                                     __tmp128562)))
                                 (_lambda-id120670_
                                  (let ((__tmp128565
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120097_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120668_
                                     __tmp128565)))
                                 (_g128566_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120670_)))
                                 (_new-case-lambda-expr120673_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120642_
                                     _L120644_
                                     _lambda-id120670_))))
                            (let ((__tmp128568
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120535_)))
                                  (__tmp128567
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120670_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp128568
                               '" => "
                               __tmp128567))
                            (let ((__tmp128569
                                   (let ((__tmp128570
                                          (let ((__tmp128578
                                                 (let ((__tmp128579
                                                        (let ((__tmp128580
                                                               (let ((__tmp128583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120670_ '())))
                             (__tmp128581
                              (let ((__tmp128582
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120643_))))
                                (declare (not safe))
                                (cons __tmp128582 '()))))
                         (declare (not safe))
                         (cons __tmp128583 __tmp128581))))
                  (declare (not safe))
                  (cons '%#define-values __tmp128580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp128579
                                                    _stx120097_)))
                                                (__tmp128571
                                                 (let ((__tmp128572
                                                        (let ((__tmp128573
                                                               (let ((__tmp128574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp128575
                                     (let ((__tmp128577
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120535_ '())))
                                           (__tmp128576
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120673_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp128577 __tmp128576))))
                                (declare (not safe))
                                (cons '%#define-values __tmp128575))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp128574 _stx120097_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp128573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128572 '()))))
                                            (declare (not safe))
                                            (cons __tmp128578 __tmp128571))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp128570))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128569
                               _stx120097_))))
                        _hd120575120637_
                        _hd120572120629_
                        _hd120569120621_)
                       (let ()
                         (declare (not safe))
                         (_g120551120581_ _g120552120584_)))))
               (let () (declare (not safe)) (_g120551120581_ _g120552120584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120551120581_
                                                      _g120552120584_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120551120581_
                                                  _g120552120584_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120551120581_ _g120552120584_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120551120581_ _g120552120584_)))))
                           (let ()
                             (declare (not safe))
                             (_g120551120581_ _g120552120584_)))))
                   (let ()
                     (declare (not safe))
                     (_g120551120581_ _g120552120584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120551120581_
                                                      _g120552120584_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120551120581_
                                              _g120552120584_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120551120581_ _g120552120584_))))))
                       (declare (not safe))
                       (_g120550120676_ _L120534_))))
                  (___kont127893127894_
                   (lambda (_L120248_ _L120249_)
                     (let* ((_g120265120318_
                             (lambda (_g120266120315_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120266120315_))))
                            (_g120264120494_
                             (lambda (_g120266120321_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120266120321_))
                                   (let ((_e120274120323_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120266120321_))))
                                     (let ((_hd120273120326_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120274120323_)))
                                           (_tl120272120328_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120274120323_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120272120328_))
                                           (let ((_e120277120331_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120272120328_))))
                                             (let ((_hd120276120334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120277120331_)))
                                                   (_tl120275120336_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120277120331_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120276120334_))
                                                   (let ((_e120280120339_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120276120334_))))
                                                     (let ((_hd120279120342_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120280120339_)))
                                                           (_tl120278120344_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120280120339_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120279120342_))
                                                           (let ((_e120283120347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120279120342_))))
                     (let ((_hd120282120350_
                            (let ()
                              (declare (not safe))
                              (##car _e120283120347_)))
                           (_tl120281120352_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120283120347_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120282120350_))
                           (let ((_e120286120355_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120282120350_))))
                             (let ((_hd120285120358_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120286120355_)))
                                   (_tl120284120360_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120286120355_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120284120360_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120281120352_))
                                       (let ((_e120289120363_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120281120352_))))
                                         (let ((_hd120288120366_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120289120363_)))
                                               (_tl120287120368_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120289120363_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120288120366_))
                                               (let ((_e120292120371_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120288120366_))))
                                                 (let ((_hd120291120374_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120292120371_)))
                                                       (_tl120290120376_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120292120371_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120290120376_))
                                                       (let ((_e120295120379_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120290120376_))))
                 (let ((_hd120294120382_
                        (let () (declare (not safe)) (##car _e120295120379_)))
                       (_tl120293120384_
                        (let () (declare (not safe)) (##cdr _e120295120379_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120294120382_))
                       (let ((_e120298120387_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120294120382_))))
                         (let ((_hd120297120390_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120298120387_)))
                               (_tl120296120392_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120298120387_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120297120390_))
                               (let ((_e120301120395_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120297120390_))))
                                 (let ((_hd120300120398_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120301120395_)))
                                       (_tl120299120400_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120301120395_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120300120398_))
                                       (let ((_e120304120403_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120300120398_))))
                                         (let ((_hd120303120406_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120304120403_)))
                                               (_tl120302120408_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120304120403_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120302120408_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120299120400_))
                                                   (let ((_e120307120411_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120299120400_))))
                                                     (let ((_hd120306120414_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120307120411_)))
                                                           (_tl120305120416_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120307120411_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120305120416_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120296120392_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120293120384_))
                           (let ((_e120310120419_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120293120384_))))
                             (let ((_hd120309120422_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120310120419_)))
                                   (_tl120308120424_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120310120419_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120308120424_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120287120368_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120278120344_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120275120336_))
                                               (let ((_e120313120427_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120275120336_))))
                                                 (let ((_hd120312120430_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120313120427_)))
                                                       (_tl120311120432_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120313120427_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120311120432_))
                                                       ((lambda (_L120435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120436_
                         _L120437_
                         _L120438_
                         _L120439_)
                  (let* ((_get-kws-id120479_
                          (let ((__tmp128586
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120249_)))
                                (__tmp128584
                                 (let ((__tmp128585
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120439_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120101_
                                    __tmp128585
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128586 '"__" __tmp128584)))
                         (_get-kws-id120481_
                          (let ((__tmp128587
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120097_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120479_
                             __tmp128587)))
                         (_main-id120483_
                          (let ((__tmp128590
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120249_)))
                                (__tmp128588
                                 (let ((__tmp128589
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120438_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120101_
                                    __tmp128589
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128590 '"__" __tmp128588)))
                         (_main-id120485_
                          (let ((__tmp128591
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120097_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120483_
                             __tmp128591)))
                         (_g128592_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120481_)))
                         (_g128593_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120485_)))
                         (_new-kw-dispatch120489_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120435_
                             _L120439_
                             _get-kws-id120481_)))
                         (_new-get-kws120491_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120436_
                             _L120438_
                             _main-id120485_))))
                    (let ((__tmp128596
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120249_)))
                          (__tmp128595
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120481_)))
                          (__tmp128594
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120485_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp128596
                       '" => "
                       __tmp128595
                       '" => "
                       __tmp128594))
                    (let ((__tmp128597
                           (let ((__tmp128598
                                  (let ((__tmp128611
                                         (let ((__tmp128612
                                                (let ((__tmp128613
                                                       (let ((__tmp128614
                                                              (let ((__tmp128616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120485_ '())))
                            (__tmp128615
                             (let ()
                               (declare (not safe))
                               (cons _L120437_ '()))))
                        (declare (not safe))
                        (cons __tmp128616 __tmp128615))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128613
                                                   _stx120097_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp128612)))
                                        (__tmp128599
                                         (let ((__tmp128606
                                                (let ((__tmp128607
                                                       (let ((__tmp128608
                                                              (let ((__tmp128610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120481_ '())))
                            (__tmp128609
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120491_ '()))))
                        (declare (not safe))
                        (cons __tmp128610 __tmp128609))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128607
                                                   _stx120097_)))
                                               (__tmp128600
                                                (let ((__tmp128601
                                                       (let ((__tmp128602
                                                              (let ((__tmp128603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp128605
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120249_ '())))
                                   (__tmp128604
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120489_ '()))))
                               (declare (not safe))
                               (cons __tmp128605 __tmp128604))))
                        (declare (not safe))
                        (cons '%#define-values __tmp128603))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp128602 _stx120097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp128601 '()))))
                                           (declare (not safe))
                                           (cons __tmp128606 __tmp128600))))
                                    (declare (not safe))
                                    (cons __tmp128611 __tmp128599))))
                             (declare (not safe))
                             (cons '%#begin __tmp128598))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128597 _stx120097_))))
                _hd120312120430_
                _hd120309120422_
                _hd120306120414_
                _hd120303120406_
                _hd120285120358_)
               (let ()
                 (declare (not safe))
                 (_g120265120318_ _g120266120321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120265120318_
                                                  _g120266120321_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120265120318_
                                              _g120266120321_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120265120318_ _g120266120321_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120265120318_ _g120266120321_)))))
                           (let ()
                             (declare (not safe))
                             (_g120265120318_ _g120266120321_)))
                       (let ()
                         (declare (not safe))
                         (_g120265120318_ _g120266120321_)))
                   (let ()
                     (declare (not safe))
                     (_g120265120318_ _g120266120321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120265120318_
                                                      _g120266120321_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120265120318_
                                                  _g120266120321_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120265120318_ _g120266120321_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120265120318_ _g120266120321_)))))
                       (let ()
                         (declare (not safe))
                         (_g120265120318_ _g120266120321_)))))
               (let ()
                 (declare (not safe))
                 (_g120265120318_ _g120266120321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120265120318_
                                                  _g120266120321_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120265120318_ _g120266120321_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120265120318_ _g120266120321_)))))
                           (let ()
                             (declare (not safe))
                             (_g120265120318_ _g120266120321_)))))
                   (let ()
                     (declare (not safe))
                     (_g120265120318_ _g120266120321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120265120318_
                                                      _g120266120321_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120265120318_
                                              _g120266120321_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120265120318_ _g120266120321_))))))
                       (declare (not safe))
                       (_g120264120494_ _L120248_))))
                  (___kont127895127896_
                   (lambda (_L120194_ _L120195_)
                     (let ((__tmp128617
                            (let ((__tmp128618
                                   (let ((__tmp128619
                                          (let ((__tmp128620
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120194_))))
                                            (declare (not safe))
                                            (cons __tmp128620 '()))))
                                     (declare (not safe))
                                     (cons _L120195_ __tmp128619))))
                              (declare (not safe))
                              (cons '%#define-values __tmp128618))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp128617 _stx120097_)))))
              (let* ((___match127980127981_
                      (lambda (_e120140120216_
                               _hd120139120219_
                               _tl120138120221_
                               _e120143120224_
                               _hd120142120227_
                               _tl120141120229_
                               _e120146120232_
                               _hd120145120235_
                               _tl120144120237_
                               _e120149120240_
                               _hd120148120243_
                               _tl120147120245_)
                        (let ((_L120248_ _hd120148120243_)
                              (_L120249_ _hd120145120235_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120249_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120248_)))
                              (___kont127893127894_ _L120248_ _L120249_)
                              (___kont127895127896_
                               _hd120148120243_
                               _hd120142120227_)))))
                     (___match127952127953_
                      (lambda (_e120126120502_
                               _hd120125120505_
                               _tl120124120507_
                               _e120129120510_
                               _hd120128120513_
                               _tl120127120515_
                               _e120132120518_
                               _hd120131120521_
                               _tl120130120523_
                               _e120135120526_
                               _hd120134120529_
                               _tl120133120531_)
                        (let ((_L120534_ _hd120134120529_)
                              (_L120535_ _hd120131120521_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120535_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120534_)))
                              (___kont127891127892_ _L120534_ _L120535_)
                              (___match127980127981_
                               _e120126120502_
                               _hd120125120505_
                               _tl120124120507_
                               _e120129120510_
                               _hd120128120513_
                               _tl120127120515_
                               _e120132120518_
                               _hd120131120521_
                               _tl120130120523_
                               _e120135120526_
                               _hd120134120529_
                               _tl120133120531_)))))
                     (___match127924127925_
                      (lambda (_e120112120684_
                               _hd120111120687_
                               _tl120110120689_
                               _e120115120692_
                               _hd120114120695_
                               _tl120113120697_
                               _e120118120700_
                               _hd120117120703_
                               _tl120116120705_
                               _e120121120708_
                               _hd120120120711_
                               _tl120119120713_)
                        (let ((_L120716_ _hd120120120711_)
                              (_L120717_ _hd120117120703_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120717_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120716_)))
                              (___kont127889127890_ _L120716_ _L120717_)
                              (___match127952127953_
                               _e120112120684_
                               _hd120111120687_
                               _tl120110120689_
                               _e120115120692_
                               _hd120114120695_
                               _tl120113120697_
                               _e120118120700_
                               _hd120117120703_
                               _tl120116120705_
                               _e120121120708_
                               _hd120120120711_
                               _tl120119120713_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127887127888_))
                    (let ((_e120112120684_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127887127888_))))
                      (let ((_tl120110120689_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120112120684_)))
                            (_hd120111120687_
                             (let ()
                               (declare (not safe))
                               (##car _e120112120684_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120110120689_))
                            (let ((_e120115120692_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120110120689_))))
                              (let ((_tl120113120697_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120115120692_)))
                                    (_hd120114120695_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120115120692_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120114120695_))
                                    (let ((_e120118120700_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120114120695_))))
                                      (let ((_tl120116120705_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120118120700_)))
                                            (_hd120117120703_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120118120700_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120116120705_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120113120697_))
                                                (let ((_e120121120708_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120113120697_))))
                                                  (let ((_tl120119120713_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120121120708_)))
                                                        (_hd120120120711_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120121120708_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120119120713_))
                                                        (___match127924127925_
                                                         _e120112120684_
                                                         _hd120111120687_
                                                         _tl120110120689_
                                                         _e120115120692_
                                                         _hd120114120695_
                                                         _tl120113120697_
                                                         _e120118120700_
                                                         _hd120117120703_
                                                         _tl120116120705_
                                                         _e120121120708_
                                                         _hd120120120711_
                                                         _tl120119120713_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120106120165_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120106120165_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120113120697_))
                                                (let ((_e120160120186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120113120697_))))
                                                  (let ((_tl120158120191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120160120186_)))
                                                        (_hd120159120189_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120160120186_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120158120191_))
                                                        (___kont127895127896_
                                                         _hd120159120189_
                                                         _hd120114120695_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120106120165_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120106120165_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120113120697_))
                                        (let ((_e120160120186_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120113120697_))))
                                          (let ((_tl120158120191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120160120186_)))
                                                (_hd120159120189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120160120186_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120158120191_))
                                                (___kont127895127896_
                                                 _hd120159120189_
                                                 _hd120114120695_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120106120165_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120106120165_))))))
                            (let () (declare (not safe)) (_g120106120165_)))))
                    (let () (declare (not safe)) (_g120106120165_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119029_)
        (letrec* ((_bind-e__126283126284_
                   (lambda (_id120081_ _expr120082_ _compile?120083_)
                     (let ((__tmp128623
                            (let ()
                              (declare (not safe))
                              (cons _id120081_ '())))
                           (__tmp128621
                            (let ((__tmp128622
                                   (if _compile?120083_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120082_))
                                       _expr120082_)))
                              (declare (not safe))
                              (cons __tmp128622 '()))))
                       (declare (not safe))
                       (cons __tmp128623 __tmp128621))))
                  (_bind-e__0__126285126286_
                   (lambda (_id120088_ _expr120089_)
                     (let ((_compile?120091_ '#t))
                       (declare (not safe))
                       (_bind-e__126283126284_
                        _id120088_
                        _expr120089_
                        _compile?120091_))))
                  (_bind-e119031_
                   (lambda _g128625_
                     (let ((_g128624_
                            (let ()
                              (declare (not safe))
                              (##length _g128625_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128624_ 2))
                              (apply (lambda (_id120088_ _expr120089_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126285126286_
                                          _id120088_
                                          _expr120089_)))
                                     _g128625_))
                             ((let () (declare (not safe)) (##fx= _g128624_ 3))
                              (apply (lambda (_id120093_
                                              _expr120094_
                                              _compile?120095_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126283126284_
                                          _id120093_
                                          _expr120094_
                                          _compile?120095_)))
                                     _g128625_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128625_))))))
                  (_compile-bindings119032_
                   (lambda (_bindings119665_)
                     (let _lp119667_ ((_rest119669_ _bindings119665_)
                                      (_lift1119670_ '())
                                      (_lift2119671_ '())
                                      (_bind119672_ '()))
                       (let* ((_rest119673119681_ _rest119669_)
                              (_else119675119689_
                               (lambda ()
                                 (values (reverse _lift1119670_)
                                         (reverse _lift2119671_)
                                         (reverse _bind119672_))))
                              (_K119677120068_
                               (lambda (_rest119692_ _hd119693_)
                                 (let* ((___stx128023128024_ _hd119693_)
                                        (_g119697119733_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128023128024_)))))
                                   (let ((___kont128025128026_
                                          (lambda (_L119975_ _L119976_)
                                            (let* ((___stx128003128004_
                                                    _L119975_)
                                                   (_g119991120005_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128003128004_)))))
                                              (let ((___kont128005128006_
                                                     (lambda (_L120053_)
                                                       (let ((__tmp128626
                                                              (let ((__tmp128627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126283126284_
                                _L119976_
                                _L119975_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128627 _bind119672_))))
                 (declare (not safe))
                 (_lp119667_
                  _rest119692_
                  _lift1119670_
                  _lift2119671_
                  __tmp128626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128007128008_
                                                     (lambda (_L120018_)
                                                       (let ((_g128628_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119029_
                         _L119976_
                         _L120018_
                         '#t))))
                 (begin
                   (let ((_g128629_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128628_)
                                (##vector-length _g128628_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128629_ 3)))
                         (error "Context expects 3 values" _g128629_)))
                   (let ((_ids120028_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128628_ 0)))
                         (_impls120029_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128628_ 1)))
                         (_clauses120030_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128628_ 2))))
                     (let* ((_g128630_
                             (for-each gx#core-bind-runtime! _ids120028_))
                            (_xbind120033_
                             (map _bind-e119031_ _ids120028_ _impls120029_))
                            (_expr*120035_
                             (let ((__tmp128632
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120030_)))
                                   (__tmp128631
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128632
                                __tmp128631)))
                            (_bind*120037_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126283126284_
                                _L119976_
                                _expr*120035_
                                '#f))))
                       (let ((__tmp128634
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119976_)))
                             (__tmp128633
                              (map gxc#identifier-symbol _ids120028_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128634
                          '" => "
                          __tmp128633))
                       (let ((__tmp128636
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119671_ _xbind120033_)))
                             (__tmp128635
                              (let ()
                                (declare (not safe))
                                (cons _bind*120037_ _bind119672_))))
                         (declare (not safe))
                         (_lp119667_
                          _rest119692_
                          _lift1119670_
                          __tmp128636
                          __tmp128635)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128014128015_
                                                       (lambda (_e119996120045_
                                                                _hd119995120048_
                                                                _tl119994120050_)
                                                         (let ((_L120053_
                                                                _tl119994120050_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120053_))
                       (___kont128005128006_ _L120053_)
                       (___kont128007128008_ _tl119994120050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128003128004_))
                                                      (let ((_e119996120045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128003128004_))))
                (let ((_tl119994120050_
                       (let () (declare (not safe)) (##cdr _e119996120045_)))
                      (_hd119995120048_
                       (let () (declare (not safe)) (##car _e119996120045_))))
                  (___match128014128015_
                   _e119996120045_
                   _hd119995120048_
                   _tl119994120050_)))
              (let () (declare (not safe)) (_g119991120005_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128027128028_
                                          (lambda (_L119803_ _L119804_)
                                            (let* ((_g119818119848_
                                                    (lambda (_g119819119845_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119819119845_))))
                                                   (_g119817119943_
                                                    (lambda (_g119819119851_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119819119851_))
                                                          (let ((_e119825119853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119819119851_))))
                    (let ((_hd119824119856_
                           (let ()
                             (declare (not safe))
                             (##car _e119825119853_)))
                          (_tl119823119858_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119825119853_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119823119858_))
                          (let ((_e119828119861_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119823119858_))))
                            (let ((_hd119827119864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119828119861_)))
                                  (_tl119826119866_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119828119861_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119827119864_))
                                  (let ((_e119831119869_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119827119864_))))
                                    (let ((_hd119830119872_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119831119869_)))
                                          (_tl119829119874_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119831119869_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119830119872_))
                                          (let ((_e119834119877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119830119872_))))
                                            (let ((_hd119833119880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119834119877_)))
                                                  (_tl119832119882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119834119877_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119833119880_))
                                                  (let ((_e119837119885_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119833119880_))))
                                                    (let ((_hd119836119888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119837119885_)))
                                                          (_tl119835119890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119837119885_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119835119890_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119832119882_))
                      (let ((_e119840119893_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119832119882_))))
                        (let ((_hd119839119896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119840119893_)))
                              (_tl119838119898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119840119893_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119838119898_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119829119874_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119826119866_))
                                      (let ((_e119843119901_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119826119866_))))
                                        (let ((_hd119842119904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119843119901_)))
                                              (_tl119841119906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119843119901_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119841119906_))
                                              ((lambda (_L119909_
                                                        _L119910_
                                                        _L119911_)
                                                 (let* ((_lambda-id119935_
                                                         (let ((__tmp128638
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119804_)))
                       (__tmp128637 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128638 __tmp128637)))
                (_lambda-id119937_
                 (let ((__tmp128639
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119029_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119935_ __tmp128639)))
                (_g128640_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119937_)))
                (_new-case-lambda-expr119940_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119909_
                    _L119911_
                    _lambda-id119937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128642
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119804_)))
                                                         (__tmp128641
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119937_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128642
                                                      '" => "
                                                      __tmp128641))
                                                   (let ((__tmp128645
                                                          (let ((__tmp128646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126283126284_
                            _L119804_
                            _new-case-lambda-expr119940_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128646 _rest119692_)))
                 (__tmp128643
                  (let ((__tmp128644
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126285126286_
                            _lambda-id119937_
                            _L119910_))))
                    (declare (not safe))
                    (cons __tmp128644 _lift1119670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119667_
                                                      __tmp128645
                                                      __tmp128643
                                                      _lift2119671_
                                                      _bind119672_))))
                                               _hd119842119904_
                                               _hd119839119896_
                                               _hd119836119888_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119818119848_
                                                 _g119819119851_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119818119848_ _g119819119851_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119818119848_ _g119819119851_)))
                              (let ()
                                (declare (not safe))
                                (_g119818119848_ _g119819119851_)))))
                      (let ()
                        (declare (not safe))
                        (_g119818119848_ _g119819119851_)))
                  (let ()
                    (declare (not safe))
                    (_g119818119848_ _g119819119851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119818119848_
                                                     _g119819119851_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119818119848_
                                             _g119819119851_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119818119848_ _g119819119851_)))))
                          (let ()
                            (declare (not safe))
                            (_g119818119848_ _g119819119851_)))))
                  (let ()
                    (declare (not safe))
                    (_g119818119848_ _g119819119851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119817119943_ _L119803_))))
                                         (___kont128029128030_
                                          (lambda (_L119754_ _L119755_)
                                            (let ((__tmp128647
                                                   (let ((__tmp128648
                                                          (let ((__tmp128649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128650
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119754_))))
                           (declare (not safe))
                           (cons __tmp128650 '()))))
                    (declare (not safe))
                    (cons _L119755_ __tmp128649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128648
                                                           _bind119672_))))
                                              (declare (not safe))
                                              (_lp119667_
                                               _rest119692_
                                               _lift1119670_
                                               _lift2119671_
                                               __tmp128647)))))
                                     (let* ((___match128074128075_
                                             (lambda (_e119714119779_
                                                      _hd119713119782_
                                                      _tl119712119784_
                                                      _e119717119787_
                                                      _hd119716119790_
                                                      _tl119715119792_
                                                      _e119720119795_
                                                      _hd119719119798_
                                                      _tl119718119800_)
                                               (let ((_L119803_
                                                      _hd119719119798_)
                                                     (_L119804_
                                                      _hd119716119790_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119804_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119803_)))
                                                     (___kont128027128028_
                                                      _L119803_
                                                      _L119804_)
                                                     (___kont128029128030_
                                                      _hd119719119798_
                                                      _hd119713119782_)))))
                                            (___match128052128053_
                                             (lambda (_e119703119951_
                                                      _hd119702119954_
                                                      _tl119701119956_
                                                      _e119706119959_
                                                      _hd119705119962_
                                                      _tl119704119964_
                                                      _e119709119967_
                                                      _hd119708119970_
                                                      _tl119707119972_)
                                               (let ((_L119975_
                                                      _hd119708119970_)
                                                     (_L119976_
                                                      _hd119705119962_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119976_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119975_)))
                                                     (___kont128025128026_
                                                      _L119975_
                                                      _L119976_)
                                                     (___match128074128075_
                                                      _e119703119951_
                                                      _hd119702119954_
                                                      _tl119701119956_
                                                      _e119706119959_
                                                      _hd119705119962_
                                                      _tl119704119964_
                                                      _e119709119967_
                                                      _hd119708119970_
                                                      _tl119707119972_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128023128024_))
                                           (let ((_e119703119951_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128023128024_))))
                                             (let ((_tl119701119956_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119703119951_)))
                                                   (_hd119702119954_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119703119951_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119702119954_))
                                                   (let ((_e119706119959_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119702119954_))))
                                                     (let ((_tl119704119964_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119706119959_)))
                                                           (_hd119705119962_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119706119959_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119704119964_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119701119956_))
                       (let ((_e119709119967_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119701119956_))))
                         (let ((_tl119707119972_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119709119967_)))
                               (_hd119708119970_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119709119967_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119707119972_))
                               (___match128052128053_
                                _e119703119951_
                                _hd119702119954_
                                _tl119701119956_
                                _e119706119959_
                                _hd119705119962_
                                _tl119704119964_
                                _e119709119967_
                                _hd119708119970_
                                _tl119707119972_)
                               (let ()
                                 (declare (not safe))
                                 (_g119697119733_)))))
                       (let () (declare (not safe)) (_g119697119733_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119701119956_))
                       (let ((_e119728119746_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119701119956_))))
                         (let ((_tl119726119751_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119728119746_)))
                               (_hd119727119749_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119728119746_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119726119751_))
                               (___kont128029128030_
                                _hd119727119749_
                                _hd119702119954_)
                               (let ()
                                 (declare (not safe))
                                 (_g119697119733_)))))
                       (let () (declare (not safe)) (_g119697119733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119701119956_))
                                                       (let ((_e119728119746_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119701119956_))))
                 (let ((_tl119726119751_
                        (let () (declare (not safe)) (##cdr _e119728119746_)))
                       (_hd119727119749_
                        (let () (declare (not safe)) (##car _e119728119746_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119726119751_))
                       (___kont128029128030_ _hd119727119749_ _hd119702119954_)
                       (let () (declare (not safe)) (_g119697119733_)))))
               (let () (declare (not safe)) (_g119697119733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119697119733_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119673119681_))
                             (let ((_hd119678120071_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119673119681_)))
                                   (_tl119679120073_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119673119681_))))
                               (let* ((_hd120076_ _hd119678120071_)
                                      (_rest120078_ _tl119679120073_))
                                 (declare (not safe))
                                 (_K119677120068_ _rest120078_ _hd120076_)))
                             (let ()
                               (declare (not safe))
                               (_else119675119689_)))))))
                  (_lift-kw-lambda?119033_
                   (lambda (_bind119589_)
                     (let* ((___stx128091128092_ _bind119589_)
                            (_g119592119609_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128091128092_)))))
                       (let ((___kont128093128094_
                              (lambda (_L119645_ _L119646_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119646_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119645_))
                                    '#f)))
                             (___kont128095128096_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128091128092_))
                             (let ((_e119598119621_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128091128092_))))
                               (let ((_tl119596119626_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e119598119621_)))
                                     (_hd119597119624_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e119598119621_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd119597119624_))
                                     (let ((_e119601119629_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd119597119624_))))
                                       (let ((_tl119599119634_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e119601119629_)))
                                             (_hd119600119632_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e119601119629_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl119599119634_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl119596119626_))
                                                 (let ((_e119604119637_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl119596119626_))))
                                                   (let ((_tl119602119642_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e119604119637_)))
                                                         (_hd119603119640_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e119604119637_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl119602119642_))
                                                         (___kont128093128094_
                                                          _hd119603119640_
                                                          _hd119600119632_)
                                                         (___kont128095128096_))))
                                                 (___kont128095128096_))
                                             (___kont128095128096_))))
                                     (___kont128095128096_))))
                             (___kont128095128096_))))))
                  (_lift-kw-lambda-bindings119034_
                   (lambda (_bindings119201_)
                     (let _lp119203_ ((_rest119205_ _bindings119201_)
                                      (_lift1119206_ '())
                                      (_lift2119207_ '())
                                      (_bind119208_ '()))
                       (let* ((_rest119209119217_ _rest119205_)
                              (_else119211119225_
                               (lambda ()
                                 (values (reverse _lift1119206_)
                                         (reverse _lift2119207_)
                                         (reverse _bind119208_))))
                              (_K119213119577_
                               (lambda (_rest119228_ _hd119229_)
                                 (let* ((___stx128121128122_ _hd119229_)
                                        (_g119232119257_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128121128122_)))))
                                   (let ((___kont128123128124_
                                          (lambda (_L119327_ _L119328_)
                                            (let* ((_g119342119395_
                                                    (lambda (_g119343119392_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119343119392_))))
                                                   (_g119341119571_
                                                    (lambda (_g119343119398_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119343119398_))
                                                          (let ((_e119351119400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119343119398_))))
                    (let ((_hd119350119403_
                           (let ()
                             (declare (not safe))
                             (##car _e119351119400_)))
                          (_tl119349119405_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119351119400_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119349119405_))
                          (let ((_e119354119408_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119349119405_))))
                            (let ((_hd119353119411_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119354119408_)))
                                  (_tl119352119413_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119354119408_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119353119411_))
                                  (let ((_e119357119416_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119353119411_))))
                                    (let ((_hd119356119419_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119357119416_)))
                                          (_tl119355119421_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119357119416_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119356119419_))
                                          (let ((_e119360119424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119356119419_))))
                                            (let ((_hd119359119427_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119360119424_)))
                                                  (_tl119358119429_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119360119424_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119359119427_))
                                                  (let ((_e119363119432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119359119427_))))
                                                    (let ((_hd119362119435_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119363119432_)))
                                                          (_tl119361119437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119363119432_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119361119437_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119358119429_))
                      (let ((_e119366119440_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119358119429_))))
                        (let ((_hd119365119443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119366119440_)))
                              (_tl119364119445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119366119440_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119365119443_))
                              (let ((_e119369119448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119365119443_))))
                                (let ((_hd119368119451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119369119448_)))
                                      (_tl119367119453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119369119448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119367119453_))
                                      (let ((_e119372119456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119367119453_))))
                                        (let ((_hd119371119459_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119372119456_)))
                                              (_tl119370119461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119372119456_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119371119459_))
                                              (let ((_e119375119464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119371119459_))))
                                                (let ((_hd119374119467_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119375119464_)))
                                                      (_tl119373119469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119375119464_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119374119467_))
                                                      (let ((_e119378119472_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119374119467_))))
                (let ((_hd119377119475_
                       (let () (declare (not safe)) (##car _e119378119472_)))
                      (_tl119376119477_
                       (let () (declare (not safe)) (##cdr _e119378119472_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119377119475_))
                      (let ((_e119381119480_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119377119475_))))
                        (let ((_hd119380119483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119381119480_)))
                              (_tl119379119485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119381119480_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119379119485_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119376119477_))
                                  (let ((_e119384119488_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119376119477_))))
                                    (let ((_hd119383119491_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119384119488_)))
                                          (_tl119382119493_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119384119488_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119382119493_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119373119469_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119370119461_))
                                                  (let ((_e119387119496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119370119461_))))
                                                    (let ((_hd119386119499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119387119496_)))
                                                          (_tl119385119501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119387119496_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119385119501_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119364119445_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119355119421_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119352119413_))
                              (let ((_e119390119504_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119352119413_))))
                                (let ((_hd119389119507_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119390119504_)))
                                      (_tl119388119509_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119390119504_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119388119509_))
                                      ((lambda (_L119512_
                                                _L119513_
                                                _L119514_
                                                _L119515_
                                                _L119516_)
                                         (let* ((_get-kws-id119556_
                                                 (let ((__tmp128652
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119328_)))
                                                       (__tmp128651
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128652
                                                    __tmp128651)))
                                                (_get-kws-id119558_
                                                 (let ((__tmp128653
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119029_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119556_
                                                    __tmp128653)))
                                                (_main-id119560_
                                                 (let ((__tmp128655
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119328_)))
                                                       (__tmp128654
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128655
                                                    __tmp128654)))
                                                (_main-id119562_
                                                 (let ((__tmp128656
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119029_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119560_
                                                    __tmp128656)))
                                                (_g128657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119558_)))
                                                (_g128658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119562_)))
                                                (_new-kw-dispatch119566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119512_
                                                    _L119516_
                                                    _get-kws-id119558_)))
                                                (_new-get-kws119568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119513_
                                                    _L119515_
                                                    _main-id119562_))))
                                           (let ((__tmp128661
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119328_)))
                                                 (__tmp128660
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119558_)))
                                                 (__tmp128659
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119562_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128661
                                              '" => "
                                              __tmp128660
                                              '" => "
                                              __tmp128659))
                                           (let ((__tmp128666
                                                  (let ((__tmp128667
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126283126284_
                                                            _main-id119562_
                                                            _L119514_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128667
                                                          _lift1119206_)))
                                                 (__tmp128664
                                                  (let ((__tmp128665
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126283126284_
                                                            _get-kws-id119558_
                                                            _new-get-kws119568_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128665
                                                          _lift2119207_)))
                                                 (__tmp128662
                                                  (let ((__tmp128663
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126283126284_
                                                            _L119328_
                                                            _new-kw-dispatch119566_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128663
                                                          _bind119208_))))
                                             (declare (not safe))
                                             (_lp119203_
                                              _rest119228_
                                              __tmp128666
                                              __tmp128664
                                              __tmp128662))))
                                       _hd119389119507_
                                       _hd119386119499_
                                       _hd119383119491_
                                       _hd119380119483_
                                       _hd119362119435_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119342119395_ _g119343119398_)))))
                              (let ()
                                (declare (not safe))
                                (_g119342119395_ _g119343119398_)))
                          (let ()
                            (declare (not safe))
                            (_g119342119395_ _g119343119398_)))
                      (let ()
                        (declare (not safe))
                        (_g119342119395_ _g119343119398_)))
                  (let ()
                    (declare (not safe))
                    (_g119342119395_ _g119343119398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119342119395_
                                                     _g119343119398_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119342119395_
                                                 _g119343119398_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119342119395_
                                             _g119343119398_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119342119395_ _g119343119398_)))
                              (let ()
                                (declare (not safe))
                                (_g119342119395_ _g119343119398_)))))
                      (let ()
                        (declare (not safe))
                        (_g119342119395_ _g119343119398_)))))
              (let ()
                (declare (not safe))
                (_g119342119395_ _g119343119398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119342119395_
                                                 _g119343119398_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119342119395_ _g119343119398_)))))
                              (let ()
                                (declare (not safe))
                                (_g119342119395_ _g119343119398_)))))
                      (let ()
                        (declare (not safe))
                        (_g119342119395_ _g119343119398_)))
                  (let ()
                    (declare (not safe))
                    (_g119342119395_ _g119343119398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119342119395_
                                                     _g119343119398_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119342119395_
                                             _g119343119398_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119342119395_ _g119343119398_)))))
                          (let ()
                            (declare (not safe))
                            (_g119342119395_ _g119343119398_)))))
                  (let ()
                    (declare (not safe))
                    (_g119342119395_ _g119343119398_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119341119571_ _L119327_))))
                                         (___kont128125128126_
                                          (lambda (_L119278_ _L119279_)
                                            (let ((__tmp128668
                                                   (let ((__tmp128669
                                                          (let ((__tmp128670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119278_ '()))))
                    (declare (not safe))
                    (cons _L119279_ __tmp128670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128669
                                                           _bind119208_))))
                                              (declare (not safe))
                                              (_lp119203_
                                               _rest119228_
                                               _lift1119206_
                                               _lift2119207_
                                               __tmp128668)))))
                                     (let ((___match128148128149_
                                            (lambda (_e119238119303_
                                                     _hd119237119306_
                                                     _tl119236119308_
                                                     _e119241119311_
                                                     _hd119240119314_
                                                     _tl119239119316_
                                                     _e119244119319_
                                                     _hd119243119322_
                                                     _tl119242119324_)
                                              (let ((_L119327_
                                                     _hd119243119322_)
                                                    (_L119328_
                                                     _hd119240119314_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119328_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119327_)))
                                                    (___kont128123128124_
                                                     _L119327_
                                                     _L119328_)
                                                    (___kont128125128126_
                                                     _hd119243119322_
                                                     _hd119237119306_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128121128122_))
                                           (let ((_e119238119303_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128121128122_))))
                                             (let ((_tl119236119308_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119238119303_)))
                                                   (_hd119237119306_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119238119303_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119237119306_))
                                                   (let ((_e119241119311_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119237119306_))))
                                                     (let ((_tl119239119316_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119241119311_)))
                                                           (_hd119240119314_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119241119311_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119239119316_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119236119308_))
                       (let ((_e119244119319_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119236119308_))))
                         (let ((_tl119242119324_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119244119319_)))
                               (_hd119243119322_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119244119319_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119242119324_))
                               (___match128148128149_
                                _e119238119303_
                                _hd119237119306_
                                _tl119236119308_
                                _e119241119311_
                                _hd119240119314_
                                _tl119239119316_
                                _e119244119319_
                                _hd119243119322_
                                _tl119242119324_)
                               (let ()
                                 (declare (not safe))
                                 (_g119232119257_)))))
                       (let () (declare (not safe)) (_g119232119257_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119236119308_))
                       (let ((_e119252119270_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119236119308_))))
                         (let ((_tl119250119275_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119252119270_)))
                               (_hd119251119273_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119252119270_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119250119275_))
                               (___kont128125128126_
                                _hd119251119273_
                                _hd119237119306_)
                               (let ()
                                 (declare (not safe))
                                 (_g119232119257_)))))
                       (let () (declare (not safe)) (_g119232119257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119236119308_))
                                                       (let ((_e119252119270_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119236119308_))))
                 (let ((_tl119250119275_
                        (let () (declare (not safe)) (##cdr _e119252119270_)))
                       (_hd119251119273_
                        (let () (declare (not safe)) (##car _e119252119270_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119250119275_))
                       (___kont128125128126_ _hd119251119273_ _hd119237119306_)
                       (let () (declare (not safe)) (_g119232119257_)))))
               (let () (declare (not safe)) (_g119232119257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119232119257_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119209119217_))
                             (let ((_hd119214119580_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119209119217_)))
                                   (_tl119215119582_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119209119217_))))
                               (let* ((_hd119585_ _hd119214119580_)
                                      (_rest119587_ _tl119215119582_))
                                 (declare (not safe))
                                 (_K119213119577_ _rest119587_ _hd119585_)))
                             (let ()
                               (declare (not safe))
                               (_else119211119225_))))))))
          (let* ((___stx128165128166_ _stx119029_)
                 (_g119037119063_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128165128166_)))))
            (let ((___kont128167128168_
                   (lambda (_L119123_ _L119124_)
                     (let ((__tmp128672
                            (lambda ()
                              (if (let ((__tmp128699
                                         (let ((__tmp128700
                                                (lambda (_g119152119155_
                                                         _g119153119157_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119152119155_
                                                          _g119153119157_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128700
                                                   '()
                                                   _L119124_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119033_
                                            __tmp128699))
                                  (let ((_g128686_
                                         (let ((__tmp128688
                                                (let ((__tmp128689
                                                       (lambda (_g119159119162_
                                                                _g119160119164_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119159119162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119160119164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128689
                                                          '()
                                                          _L119124_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119034_
                                            __tmp128688))))
                                    (begin
                                      (let ((_g128687_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128686_)
                                                   (##vector-length _g128686_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128687_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128687_)))
                                      (let ((_lift1119167_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128686_ 0)))
                                            (_lift2119168_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128686_ 1)))
                                            (_hd119169_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128686_ 2))))
                                        (let* ((_expr119171_
                                                (let ((__tmp128690
                                                       (let ((__tmp128691
                                                              (let ((__tmp128692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119123_ '()))))
                        (declare (not safe))
                        (cons _hd119169_ __tmp128692))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128690
                                                   _stx119029_)))
                                               (_expr119173_
                                                (let ((__tmp128693
                                                       (let ((__tmp128694
                                                              (let ((__tmp128695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119171_ '()))))
                        (declare (not safe))
                        (cons _lift2119168_ __tmp128695))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128693
                                                   _stx119029_)))
                                               (_expr119175_
                                                (let ((__tmp128696
                                                       (let ((__tmp128697
                                                              (let ((__tmp128698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119173_ '()))))
                        (declare (not safe))
                        (cons _lift1119167_ __tmp128698))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128696
                                                   _stx119029_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119175_))))))
                                  (let ((_g128673_
                                         (let ((__tmp128675
                                                (let ((__tmp128676
                                                       (lambda (_g119177119180_
                                                                _g119178119182_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119177119180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119178119182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128676
                                                          '()
                                                          _L119124_))))
                                           (declare (not safe))
                                           (_compile-bindings119032_
                                            __tmp128675))))
                                    (begin
                                      (let ((_g128674_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128673_)
                                                   (##vector-length _g128673_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128674_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128674_)))
                                      (let ((_lift1119185_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128673_ 0)))
                                            (_lift2119186_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128673_ 1)))
                                            (_hd119187_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128673_ 2))))
                                        (let* ((_body119189_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119123_)))
                                               (_expr119191_
                                                (let ((__tmp128677
                                                       (let ((__tmp128678
                                                              (let ((__tmp128679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119189_ '()))))
                        (declare (not safe))
                        (cons _hd119187_ __tmp128679))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128677
                                                   _stx119029_)))
                                               (_expr119193_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119186_))
                                                    _expr119191_
                                                    (let ((__tmp128680
                                                           (let ((__tmp128681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128682
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119191_ '()))))
                            (declare (not safe))
                            (cons _lift2119186_ __tmp128682))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128681))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128680 _stx119029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119195_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119185_))
                                                    _expr119193_
                                                    (let ((__tmp128683
                                                           (let ((__tmp128684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128685
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119193_ '()))))
                            (declare (not safe))
                            (cons _lift1119185_ __tmp128685))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128684))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128683 _stx119029_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119195_)))))))
                           (__tmp128671
                            (let ((__obj128371
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128371)
                              __obj128371)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128672
                        gx#current-expander-context
                        __tmp128671))))
                  (___kont128171128172_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119029_)))))
              (let ((___match128192128193_
                     (lambda (_e119043119075_
                              _hd119042119078_
                              _tl119041119080_
                              _e119046119083_
                              _hd119045119086_
                              _tl119044119088_
                              ___splice128169128170_
                              _target119047119091_
                              _tl119049119093_)
                       (letrec ((_loop119050119096_
                                 (lambda (_hd119048119099_ _bind119054119101_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119048119099_))
                                       (let ((_e119051119104_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119048119099_))))
                                         (let ((_lp-tl119053119109_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119051119104_)))
                                               (_lp-hd119052119107_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119051119104_))))
                                           (let ((__tmp128703
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119052119107_
                                                          _bind119054119101_))))
                                             (declare (not safe))
                                             (_loop119050119096_
                                              _lp-tl119053119109_
                                              __tmp128703))))
                                       (let ((_bind119055119112_
                                              (reverse _bind119054119101_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119044119088_))
                                             (let ((_e119058119115_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119044119088_))))
                                               (let ((_tl119056119120_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119058119115_)))
                                                     (_hd119057119118_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119058119115_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119056119120_))
                                                     (let ((_L119123_
                                                            _hd119057119118_)
                                                           (_L119124_
                                                            _bind119055119112_))
                                                       (if (let ((__tmp128701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128702
                                 (lambda (_g119144119147_ _g119145119149_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119144119147_ _g119145119149_)))))
                            (declare (not safe))
                            (foldr1 __tmp128702 '() _L119124_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128701))
                   (___kont128167128168_ _L119123_ _L119124_)
                   (___kont128171128172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128171128172_))))
                                             (___kont128171128172_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119050119096_ _target119047119091_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128165128166_))
                    (let ((_e119043119075_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128165128166_))))
                      (let ((_tl119041119080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119043119075_)))
                            (_hd119042119078_
                             (let ()
                               (declare (not safe))
                               (##car _e119043119075_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119041119080_))
                            (let ((_e119046119083_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119041119080_))))
                              (let ((_tl119044119088_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119046119083_)))
                                    (_hd119045119086_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119046119083_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119045119086_))
                                    (let ((___splice128169128170_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119045119086_
                                              '0))))
                                      (let ((_tl119049119093_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128169128170_
                                                '1)))
                                            (_target119047119091_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128169128170_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119049119093_))
                                            (___match128192128193_
                                             _e119043119075_
                                             _hd119042119078_
                                             _tl119041119080_
                                             _e119046119083_
                                             _hd119045119086_
                                             _tl119044119088_
                                             ___splice128169128170_
                                             _target119047119091_
                                             _tl119049119093_)
                                            (___kont128171128172_))))
                                    (___kont128171128172_))))
                            (___kont128171128172_))))
                    (___kont128171128172_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118173_)
        (letrec* ((_bind-e__126288126289_
                   (lambda (_id119013_ _expr119014_ _compile?119015_)
                     (let ((__tmp128706
                            (let ()
                              (declare (not safe))
                              (cons _id119013_ '())))
                           (__tmp128704
                            (let ((__tmp128705
                                   (if _compile?119015_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119014_))
                                       _expr119014_)))
                              (declare (not safe))
                              (cons __tmp128705 '()))))
                       (declare (not safe))
                       (cons __tmp128706 __tmp128704))))
                  (_bind-e__0__126290126291_
                   (lambda (_id119020_ _expr119021_)
                     (let ((_compile?119023_ '#t))
                       (declare (not safe))
                       (_bind-e__126288126289_
                        _id119020_
                        _expr119021_
                        _compile?119023_))))
                  (_bind-e118175_
                   (lambda _g128708_
                     (let ((_g128707_
                            (let ()
                              (declare (not safe))
                              (##length _g128708_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128707_ 2))
                              (apply (lambda (_id119020_ _expr119021_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126290126291_
                                          _id119020_
                                          _expr119021_)))
                                     _g128708_))
                             ((let () (declare (not safe)) (##fx= _g128707_ 3))
                              (apply (lambda (_id119025_
                                              _expr119026_
                                              _compile?119027_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126288126289_
                                          _id119025_
                                          _expr119026_
                                          _compile?119027_)))
                                     _g128708_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128708_))))))
                  (_compile-bindings118176_
                   (lambda (_rest118311_)
                     (let _lp118313_ ((_rest118315_ _rest118311_)
                                      (_bind118316_ '()))
                       (let* ((_rest118317118325_ _rest118315_)
                              (_else118319118333_
                               (lambda () (reverse _bind118316_)))
                              (_K118321119000_
                               (lambda (_rest118336_ _hd118337_)
                                 (let* ((___stx128215128216_ _hd118337_)
                                        (_g118342118389_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128215128216_)))))
                                   (let ((___kont128217128218_
                                          (lambda (_L118907_ _L118908_)
                                            (let* ((___stx128195128196_
                                                    _L118907_)
                                                   (_g118923118937_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128195128196_)))))
                                              (let ((___kont128197128198_
                                                     (lambda (_L118985_)
                                                       (let ((__tmp128709
                                                              (let ((__tmp128710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126288126289_
                                _L118908_
                                _L118907_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128710 _bind118316_))))
                 (declare (not safe))
                 (_lp118313_ _rest118336_ __tmp128709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128199128200_
                                                     (lambda (_L118950_)
                                                       (let ((_g128711_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118173_
                         _L118908_
                         _L118950_
                         '#t))))
                 (begin
                   (let ((_g128712_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128711_)
                                (##vector-length _g128711_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128712_ 3)))
                         (error "Context expects 3 values" _g128712_)))
                   (let ((_ids118960_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128711_ 0)))
                         (_impls118961_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128711_ 1)))
                         (_clauses118962_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128711_ 2))))
                     (let* ((_g128713_
                             (for-each gx#core-bind-runtime! _ids118960_))
                            (_xbind118965_
                             (map _bind-e118175_ _ids118960_ _impls118961_))
                            (_expr*118967_
                             (let ((__tmp128715
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118962_)))
                                   (__tmp128714
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128715
                                __tmp128714)))
                            (_bind*118969_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126288126289_
                                _L118908_
                                _expr*118967_
                                '#f))))
                       (let ((__tmp128717
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118908_)))
                             (__tmp128716
                              (map gxc#identifier-symbol _ids118960_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128717
                          '" => "
                          __tmp128716))
                       (let ((__tmp128718
                              (let ((__tmp128719
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118316_
                                               _xbind118965_))))
                                (declare (not safe))
                                (cons _bind*118969_ __tmp128719))))
                         (declare (not safe))
                         (_lp118313_ _rest118336_ __tmp128718)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128206128207_
                                                       (lambda (_e118928118977_
                                                                _hd118927118980_
                                                                _tl118926118982_)
                                                         (let ((_L118985_
                                                                _tl118926118982_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118985_))
                       (___kont128197128198_ _L118985_)
                       (___kont128199128200_ _tl118926118982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128195128196_))
                                                      (let ((_e118928118977_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128195128196_))))
                (let ((_tl118926118982_
                       (let () (declare (not safe)) (##cdr _e118928118977_)))
                      (_hd118927118980_
                       (let () (declare (not safe)) (##car _e118928118977_))))
                  (___match128206128207_
                   _e118928118977_
                   _hd118927118980_
                   _tl118926118982_)))
              (let () (declare (not safe)) (_g118923118937_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128219128220_
                                          (lambda (_L118735_ _L118736_)
                                            (let* ((_g118750118780_
                                                    (lambda (_g118751118777_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118751118777_))))
                                                   (_g118749118875_
                                                    (lambda (_g118751118783_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118751118783_))
                                                          (let ((_e118757118785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118751118783_))))
                    (let ((_hd118756118788_
                           (let ()
                             (declare (not safe))
                             (##car _e118757118785_)))
                          (_tl118755118790_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118757118785_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118755118790_))
                          (let ((_e118760118793_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118755118790_))))
                            (let ((_hd118759118796_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118760118793_)))
                                  (_tl118758118798_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118760118793_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118759118796_))
                                  (let ((_e118763118801_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118759118796_))))
                                    (let ((_hd118762118804_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118763118801_)))
                                          (_tl118761118806_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118763118801_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118762118804_))
                                          (let ((_e118766118809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118762118804_))))
                                            (let ((_hd118765118812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118766118809_)))
                                                  (_tl118764118814_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118766118809_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118765118812_))
                                                  (let ((_e118769118817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118765118812_))))
                                                    (let ((_hd118768118820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118769118817_)))
                                                          (_tl118767118822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118769118817_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118767118822_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118764118814_))
                      (let ((_e118772118825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118764118814_))))
                        (let ((_hd118771118828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118772118825_)))
                              (_tl118770118830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118772118825_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118770118830_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118761118806_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118758118798_))
                                      (let ((_e118775118833_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118758118798_))))
                                        (let ((_hd118774118836_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118775118833_)))
                                              (_tl118773118838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118775118833_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118773118838_))
                                              ((lambda (_L118841_
                                                        _L118842_
                                                        _L118843_)
                                                 (let* ((_lambda-id118867_
                                                         (let ((__tmp128721
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118736_)))
                       (__tmp128720 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128721 __tmp128720)))
                (_lambda-id118869_
                 (let ((__tmp128722
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118173_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118867_ __tmp128722)))
                (_g128723_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118869_)))
                (_new-case-lambda-expr118872_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118841_
                    _L118843_
                    _lambda-id118869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128725
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118736_)))
                                                         (__tmp128724
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118869_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128725
                                                      '" => "
                                                      __tmp128724))
                                                   (let ((__tmp128728
                                                          (let ((__tmp128729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126288126289_
                            _L118736_
                            _new-case-lambda-expr118872_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128729 _rest118336_)))
                 (__tmp128726
                  (let ((__tmp128727
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126290126291_
                            _lambda-id118869_
                            _L118842_))))
                    (declare (not safe))
                    (cons __tmp128727 _bind118316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118313_
                                                      __tmp128728
                                                      __tmp128726))))
                                               _hd118774118836_
                                               _hd118771118828_
                                               _hd118768118820_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118750118780_
                                                 _g118751118783_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118750118780_ _g118751118783_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118750118780_ _g118751118783_)))
                              (let ()
                                (declare (not safe))
                                (_g118750118780_ _g118751118783_)))))
                      (let ()
                        (declare (not safe))
                        (_g118750118780_ _g118751118783_)))
                  (let ()
                    (declare (not safe))
                    (_g118750118780_ _g118751118783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118750118780_
                                                     _g118751118783_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118750118780_
                                             _g118751118783_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118750118780_ _g118751118783_)))))
                          (let ()
                            (declare (not safe))
                            (_g118750118780_ _g118751118783_)))))
                  (let ()
                    (declare (not safe))
                    (_g118750118780_ _g118751118783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118749118875_ _L118735_))))
                                         (___kont128221128222_
                                          (lambda (_L118459_ _L118460_)
                                            (let* ((_g118474118527_
                                                    (lambda (_g118475118524_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118475118524_))))
                                                   (_g118473118703_
                                                    (lambda (_g118475118530_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118475118530_))
                                                          (let ((_e118483118532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118475118530_))))
                    (let ((_hd118482118535_
                           (let ()
                             (declare (not safe))
                             (##car _e118483118532_)))
                          (_tl118481118537_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118483118532_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118481118537_))
                          (let ((_e118486118540_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118481118537_))))
                            (let ((_hd118485118543_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118486118540_)))
                                  (_tl118484118545_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118486118540_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118485118543_))
                                  (let ((_e118489118548_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118485118543_))))
                                    (let ((_hd118488118551_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118489118548_)))
                                          (_tl118487118553_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118489118548_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118488118551_))
                                          (let ((_e118492118556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118488118551_))))
                                            (let ((_hd118491118559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118492118556_)))
                                                  (_tl118490118561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118492118556_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118491118559_))
                                                  (let ((_e118495118564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118491118559_))))
                                                    (let ((_hd118494118567_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118495118564_)))
                                                          (_tl118493118569_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118495118564_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118493118569_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118490118561_))
                      (let ((_e118498118572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118490118561_))))
                        (let ((_hd118497118575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118498118572_)))
                              (_tl118496118577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118498118572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118497118575_))
                              (let ((_e118501118580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118497118575_))))
                                (let ((_hd118500118583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118501118580_)))
                                      (_tl118499118585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118501118580_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118499118585_))
                                      (let ((_e118504118588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118499118585_))))
                                        (let ((_hd118503118591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118504118588_)))
                                              (_tl118502118593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118504118588_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118503118591_))
                                              (let ((_e118507118596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118503118591_))))
                                                (let ((_hd118506118599_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118507118596_)))
                                                      (_tl118505118601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118507118596_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118506118599_))
                                                      (let ((_e118510118604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118506118599_))))
                (let ((_hd118509118607_
                       (let () (declare (not safe)) (##car _e118510118604_)))
                      (_tl118508118609_
                       (let () (declare (not safe)) (##cdr _e118510118604_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118509118607_))
                      (let ((_e118513118612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118509118607_))))
                        (let ((_hd118512118615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118513118612_)))
                              (_tl118511118617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118513118612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118511118617_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118508118609_))
                                  (let ((_e118516118620_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118508118609_))))
                                    (let ((_hd118515118623_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118516118620_)))
                                          (_tl118514118625_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118516118620_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118514118625_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118505118601_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118502118593_))
                                                  (let ((_e118519118628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118502118593_))))
                                                    (let ((_hd118518118631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118519118628_)))
                                                          (_tl118517118633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118519118628_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118517118633_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118496118577_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118487118553_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118484118545_))
                              (let ((_e118522118636_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118484118545_))))
                                (let ((_hd118521118639_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118522118636_)))
                                      (_tl118520118641_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118522118636_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118520118641_))
                                      ((lambda (_L118644_
                                                _L118645_
                                                _L118646_
                                                _L118647_
                                                _L118648_)
                                         (let* ((_get-kws-id118688_
                                                 (let ((__tmp128731
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118460_)))
                                                       (__tmp128730
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128731
                                                    __tmp128730)))
                                                (_get-kws-id118690_
                                                 (let ((__tmp128732
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118173_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118688_
                                                    __tmp128732)))
                                                (_main-id118692_
                                                 (let ((__tmp128734
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118460_)))
                                                       (__tmp128733
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128734
                                                    __tmp128733)))
                                                (_main-id118694_
                                                 (let ((__tmp128735
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118173_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118692_
                                                    __tmp128735)))
                                                (_g128736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118690_)))
                                                (_g128737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118694_)))
                                                (_new-kw-dispatch118698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118644_
                                                    _L118648_
                                                    _get-kws-id118690_)))
                                                (_new-get-kws118700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118645_
                                                    _L118647_
                                                    _main-id118694_))))
                                           (let ((__tmp128740
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118460_)))
                                                 (__tmp128739
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118690_)))
                                                 (__tmp128738
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118694_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128740
                                              '" => "
                                              __tmp128739
                                              '" => "
                                              __tmp128738))
                                           (let ((__tmp128741
                                                  (let ((__tmp128746
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126288126289_
                                                            _main-id118694_
                                                            _L118646_
                                                            '#f)))
                                                        (__tmp128742
                                                         (let ((__tmp128745
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126288126289_
                           _get-kws-id118690_
                           _new-get-kws118700_
                           '#f)))
                       (__tmp128743
                        (let ((__tmp128744
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126288126289_
                                  _L118460_
                                  _new-kw-dispatch118698_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128744 _rest118336_))))
                   (declare (not safe))
                   (cons __tmp128745 __tmp128743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128746
                                                          __tmp128742))))
                                             (declare (not safe))
                                             (_lp118313_
                                              __tmp128741
                                              _bind118316_))))
                                       _hd118521118639_
                                       _hd118518118631_
                                       _hd118515118623_
                                       _hd118512118615_
                                       _hd118494118567_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118474118527_ _g118475118530_)))))
                              (let ()
                                (declare (not safe))
                                (_g118474118527_ _g118475118530_)))
                          (let ()
                            (declare (not safe))
                            (_g118474118527_ _g118475118530_)))
                      (let ()
                        (declare (not safe))
                        (_g118474118527_ _g118475118530_)))
                  (let ()
                    (declare (not safe))
                    (_g118474118527_ _g118475118530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118474118527_
                                                     _g118475118530_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118474118527_
                                                 _g118475118530_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118474118527_
                                             _g118475118530_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118474118527_ _g118475118530_)))
                              (let ()
                                (declare (not safe))
                                (_g118474118527_ _g118475118530_)))))
                      (let ()
                        (declare (not safe))
                        (_g118474118527_ _g118475118530_)))))
              (let ()
                (declare (not safe))
                (_g118474118527_ _g118475118530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118474118527_
                                                 _g118475118530_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118474118527_ _g118475118530_)))))
                              (let ()
                                (declare (not safe))
                                (_g118474118527_ _g118475118530_)))))
                      (let ()
                        (declare (not safe))
                        (_g118474118527_ _g118475118530_)))
                  (let ()
                    (declare (not safe))
                    (_g118474118527_ _g118475118530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118474118527_
                                                     _g118475118530_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118474118527_
                                             _g118475118530_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118474118527_ _g118475118530_)))))
                          (let ()
                            (declare (not safe))
                            (_g118474118527_ _g118475118530_)))))
                  (let ()
                    (declare (not safe))
                    (_g118474118527_ _g118475118530_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118473118703_ _L118459_))))
                                         (___kont128223128224_
                                          (lambda (_L118410_ _L118411_)
                                            (let ((__tmp128747
                                                   (let ((__tmp128748
                                                          (let ((__tmp128749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128750
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118410_))))
                           (declare (not safe))
                           (cons __tmp128750 '()))))
                    (declare (not safe))
                    (cons _L118411_ __tmp128749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128748
                                                           _bind118316_))))
                                              (declare (not safe))
                                              (_lp118313_
                                               _rest118336_
                                               __tmp128747)))))
                                     (let* ((___match128290128291_
                                             (lambda (_e118370118435_
                                                      _hd118369118438_
                                                      _tl118368118440_
                                                      _e118373118443_
                                                      _hd118372118446_
                                                      _tl118371118448_
                                                      _e118376118451_
                                                      _hd118375118454_
                                                      _tl118374118456_)
                                               (let ((_L118459_
                                                      _hd118375118454_)
                                                     (_L118460_
                                                      _hd118372118446_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118460_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118459_)))
                                                     (___kont128221128222_
                                                      _L118459_
                                                      _L118460_)
                                                     (___kont128223128224_
                                                      _hd118375118454_
                                                      _hd118369118438_)))))
                                            (___match128268128269_
                                             (lambda (_e118359118711_
                                                      _hd118358118714_
                                                      _tl118357118716_
                                                      _e118362118719_
                                                      _hd118361118722_
                                                      _tl118360118724_
                                                      _e118365118727_
                                                      _hd118364118730_
                                                      _tl118363118732_)
                                               (let ((_L118735_
                                                      _hd118364118730_)
                                                     (_L118736_
                                                      _hd118361118722_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118736_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118735_)))
                                                     (___kont128219128220_
                                                      _L118735_
                                                      _L118736_)
                                                     (___match128290128291_
                                                      _e118359118711_
                                                      _hd118358118714_
                                                      _tl118357118716_
                                                      _e118362118719_
                                                      _hd118361118722_
                                                      _tl118360118724_
                                                      _e118365118727_
                                                      _hd118364118730_
                                                      _tl118363118732_)))))
                                            (___match128246128247_
                                             (lambda (_e118348118883_
                                                      _hd118347118886_
                                                      _tl118346118888_
                                                      _e118351118891_
                                                      _hd118350118894_
                                                      _tl118349118896_
                                                      _e118354118899_
                                                      _hd118353118902_
                                                      _tl118352118904_)
                                               (let ((_L118907_
                                                      _hd118353118902_)
                                                     (_L118908_
                                                      _hd118350118894_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118908_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118907_)))
                                                     (___kont128217128218_
                                                      _L118907_
                                                      _L118908_)
                                                     (___match128268128269_
                                                      _e118348118883_
                                                      _hd118347118886_
                                                      _tl118346118888_
                                                      _e118351118891_
                                                      _hd118350118894_
                                                      _tl118349118896_
                                                      _e118354118899_
                                                      _hd118353118902_
                                                      _tl118352118904_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128215128216_))
                                           (let ((_e118348118883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128215128216_))))
                                             (let ((_tl118346118888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118348118883_)))
                                                   (_hd118347118886_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118348118883_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118347118886_))
                                                   (let ((_e118351118891_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118347118886_))))
                                                     (let ((_tl118349118896_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118351118891_)))
                                                           (_hd118350118894_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118351118891_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118349118896_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118346118888_))
                       (let ((_e118354118899_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118346118888_))))
                         (let ((_tl118352118904_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118354118899_)))
                               (_hd118353118902_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118354118899_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118352118904_))
                               (___match128246128247_
                                _e118348118883_
                                _hd118347118886_
                                _tl118346118888_
                                _e118351118891_
                                _hd118350118894_
                                _tl118349118896_
                                _e118354118899_
                                _hd118353118902_
                                _tl118352118904_)
                               (let ()
                                 (declare (not safe))
                                 (_g118342118389_)))))
                       (let () (declare (not safe)) (_g118342118389_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118346118888_))
                       (let ((_e118384118402_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118346118888_))))
                         (let ((_tl118382118407_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118384118402_)))
                               (_hd118383118405_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118384118402_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118382118407_))
                               (___kont128223128224_
                                _hd118383118405_
                                _hd118347118886_)
                               (let ()
                                 (declare (not safe))
                                 (_g118342118389_)))))
                       (let () (declare (not safe)) (_g118342118389_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118346118888_))
                                                       (let ((_e118384118402_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118346118888_))))
                 (let ((_tl118382118407_
                        (let () (declare (not safe)) (##cdr _e118384118402_)))
                       (_hd118383118405_
                        (let () (declare (not safe)) (##car _e118384118402_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118382118407_))
                       (___kont128223128224_ _hd118383118405_ _hd118347118886_)
                       (let () (declare (not safe)) (_g118342118389_)))))
               (let () (declare (not safe)) (_g118342118389_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118342118389_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118317118325_))
                             (let ((_hd118322119003_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118317118325_)))
                                   (_tl118323119005_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118317118325_))))
                               (let* ((_hd119008_ _hd118322119003_)
                                      (_rest119010_ _tl118323119005_))
                                 (declare (not safe))
                                 (_K118321119000_ _rest119010_ _hd119008_)))
                             (let ()
                               (declare (not safe))
                               (_else118319118333_))))))))
          (let* ((___stx128307128308_ _stx118173_)
                 (_g118179118206_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128307128308_)))))
            (let ((___kont128309128310_
                   (lambda (_L118266_ _L118267_ _L118268_)
                     (let ((__tmp128752
                            (lambda ()
                              (let ((_hd118305_
                                     (let ((__tmp128753
                                            (let ((__tmp128754
                                                   (lambda (_g118297118300_
                                                            _g118298118302_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118297118300_
                                                             _g118298118302_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128754
                                                      '()
                                                      _L118267_))))
                                       (declare (not safe))
                                       (_compile-bindings118176_ __tmp128753)))
                                    (_body118306_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118266_))))
                                (let ((__tmp128755
                                       (let ((__tmp128756
                                              (let ((__tmp128757
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118306_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118305_
                                                      __tmp128757))))
                                         (declare (not safe))
                                         (cons _L118268_ __tmp128756))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128755
                                   _stx118173_)))))
                           (__tmp128751
                            (let ((__obj128372
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128372)
                              __obj128372)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128752
                        gx#current-expander-context
                        __tmp128751))))
                  (___kont128313128314_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118173_)))))
              (let ((___match128334128335_
                     (lambda (_e118186118218_
                              _hd118185118221_
                              _tl118184118223_
                              _e118189118226_
                              _hd118188118229_
                              _tl118187118231_
                              ___splice128311128312_
                              _target118190118234_
                              _tl118192118236_)
                       (letrec ((_loop118193118239_
                                 (lambda (_hd118191118242_ _bind118197118244_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118191118242_))
                                       (let ((_e118194118247_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118191118242_))))
                                         (let ((_lp-tl118196118252_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118194118247_)))
                                               (_lp-hd118195118250_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118194118247_))))
                                           (let ((__tmp128760
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118195118250_
                                                          _bind118197118244_))))
                                             (declare (not safe))
                                             (_loop118193118239_
                                              _lp-tl118196118252_
                                              __tmp128760))))
                                       (let ((_bind118198118255_
                                              (reverse _bind118197118244_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118187118231_))
                                             (let ((_e118201118258_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118187118231_))))
                                               (let ((_tl118199118263_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118201118258_)))
                                                     (_hd118200118261_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118201118258_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118199118263_))
                                                     (let ((_L118266_
                                                            _hd118200118261_)
                                                           (_L118267_
                                                            _bind118198118255_)
                                                           (_L118268_
                                                            _hd118185118221_))
                                                       (if (let ((__tmp128758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128759
                                 (lambda (_g118289118292_ _g118290118294_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118289118292_ _g118290118294_)))))
                            (declare (not safe))
                            (foldr1 __tmp128759 '() _L118267_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128758))
                   (___kont128309128310_ _L118266_ _L118267_ _L118268_)
                   (___kont128313128314_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128313128314_))))
                                             (___kont128313128314_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118193118239_ _target118190118234_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128307128308_))
                    (let ((_e118186118218_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128307128308_))))
                      (let ((_tl118184118223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118186118218_)))
                            (_hd118185118221_
                             (let ()
                               (declare (not safe))
                               (##car _e118186118218_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118184118223_))
                            (let ((_e118189118226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118184118223_))))
                              (let ((_tl118187118231_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118189118226_)))
                                    (_hd118188118229_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118189118226_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118188118229_))
                                    (let ((___splice128311128312_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118188118229_
                                              '0))))
                                      (let ((_tl118192118236_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128311128312_
                                                '1)))
                                            (_target118190118234_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128311128312_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118192118236_))
                                            (___match128334128335_
                                             _e118186118218_
                                             _hd118185118221_
                                             _tl118184118223_
                                             _e118189118226_
                                             _hd118188118229_
                                             _tl118187118231_
                                             ___splice128311128312_
                                             _target118190118234_
                                             _tl118192118236_)
                                            (___kont128313128314_))))
                                    (___kont128313128314_))))
                            (___kont128313128314_))))
                    (___kont128313128314_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118091_)
        (let* ((___stx128337128338_ _bind118091_)
               (_g118094118111_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128337128338_)))))
          (let ((___kont128339128340_
                 (lambda (_L118147_ _L118148_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118148_))
                       (let ((_$e118164_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118147_))))
                         (if _$e118164_
                             _$e118164_
                             (let ((_$e118167_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118147_))))
                               (if _$e118167_
                                   _$e118167_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118147_))))))
                       '#f)))
                (___kont128341128342_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128337128338_))
                (let ((_e118100118123_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128337128338_))))
                  (let ((_tl118098118128_
                         (let () (declare (not safe)) (##cdr _e118100118123_)))
                        (_hd118099118126_
                         (let ()
                           (declare (not safe))
                           (##car _e118100118123_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118099118126_))
                        (let ((_e118103118131_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118099118126_))))
                          (let ((_tl118101118136_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118103118131_)))
                                (_hd118102118134_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118103118131_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118101118136_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118098118128_))
                                    (let ((_e118106118139_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118098118128_))))
                                      (let ((_tl118104118144_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118106118139_)))
                                            (_hd118105118142_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118106118139_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118104118144_))
                                            (___kont128339128340_
                                             _hd118105118142_
                                             _hd118102118134_)
                                            (___kont128341128342_))))
                                    (___kont128341128342_))
                                (___kont128341128342_))))
                        (___kont128341128342_))))
                (___kont128341128342_))))))))
