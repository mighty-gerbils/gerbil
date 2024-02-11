(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707610216)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234697_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241258 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234697_ __tmp241258))
           (let ()
             (declare (not safe))
             (table-set! _tbl234697_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234697_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234697_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234697_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234697_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234680_ . _args234682_)
        (let ((__tmp241260
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234682_)
                     (gxc#compile-e__0 _stx234680_)
                     (let ((_arg1234687_ (car _args234682_))
                           (_rest234689_ (cdr _args234682_)))
                       (if (null? _rest234689_)
                           (gxc#compile-e__1 _stx234680_ _arg1234687_)
                           (let ((_arg2234692_ (car _rest234689_))
                                 (_rest234694_ (cdr _rest234689_)))
                             (if (null? _rest234694_)
                                 (gxc#compile-e__2
                                  _stx234680_
                                  _arg1234687_
                                  _arg2234692_)
                                 (apply gxc#compile-e
                                        _stx234680_
                                        _arg1234687_
                                        _arg2234692_
                                        _rest234694_))))))))
              (__tmp241259 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241260
           gxc#current-compile-methods
           __tmp241259))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234677_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241261 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234677_ __tmp241261))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234677_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234677_ '%#call gxc#basic-expression-type-call%))
           _tbl234677_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234660_ . _args234662_)
        (let ((__tmp241263
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234662_)
                     (gxc#compile-e__0 _stx234660_)
                     (let ((_arg1234667_ (car _args234662_))
                           (_rest234669_ (cdr _args234662_)))
                       (if (null? _rest234669_)
                           (gxc#compile-e__1 _stx234660_ _arg1234667_)
                           (let ((_arg2234672_ (car _rest234669_))
                                 (_rest234674_ (cdr _rest234669_)))
                             (if (null? _rest234674_)
                                 (gxc#compile-e__2
                                  _stx234660_
                                  _arg1234667_
                                  _arg2234672_)
                                 (apply gxc#compile-e
                                        _stx234660_
                                        _arg1234667_
                                        _arg2234672_
                                        _rest234674_))))))))
              (__tmp241262 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241263
           gxc#current-compile-methods
           __tmp241262))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234657_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241264 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234657_ __tmp241264))
           (let ()
             (declare (not safe))
             (table-set! _tbl234657_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234657_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234657_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234657_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234657_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234657_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234657_ '%#set! gxc#collect-body-setq%))
           _tbl234657_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234640_ . _args234642_)
        (let ((__tmp241266
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234642_)
                     (gxc#compile-e__0 _stx234640_)
                     (let ((_arg1234647_ (car _args234642_))
                           (_rest234649_ (cdr _args234642_)))
                       (if (null? _rest234649_)
                           (gxc#compile-e__1 _stx234640_ _arg1234647_)
                           (let ((_arg2234652_ (car _rest234649_))
                                 (_rest234654_ (cdr _rest234649_)))
                             (if (null? _rest234654_)
                                 (gxc#compile-e__2
                                  _stx234640_
                                  _arg1234647_
                                  _arg2234652_)
                                 (apply gxc#compile-e
                                        _stx234640_
                                        _arg1234647_
                                        _arg2234652_
                                        _rest234654_))))))))
              (__tmp241265 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241266
           gxc#current-compile-methods
           __tmp241265))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234637_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241267 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234637_ __tmp241267))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234637_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234637_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234637_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234637_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234620_ . _args234622_)
        (let ((__tmp241269
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234622_)
                     (gxc#compile-e__0 _stx234620_)
                     (let ((_arg1234627_ (car _args234622_))
                           (_rest234629_ (cdr _args234622_)))
                       (if (null? _rest234629_)
                           (gxc#compile-e__1 _stx234620_ _arg1234627_)
                           (let ((_arg2234632_ (car _rest234629_))
                                 (_rest234634_ (cdr _rest234629_)))
                             (if (null? _rest234634_)
                                 (gxc#compile-e__2
                                  _stx234620_
                                  _arg1234627_
                                  _arg2234632_)
                                 (apply gxc#compile-e
                                        _stx234620_
                                        _arg1234627_
                                        _arg2234632_
                                        _rest234634_))))))))
              (__tmp241268 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241269
           gxc#current-compile-methods
           __tmp241268))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234617_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241270 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234617_ __tmp241270))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234617_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234617_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234617_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234617_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234617_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234600_ . _args234602_)
        (let ((__tmp241272
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234602_)
                     (gxc#compile-e__0 _stx234600_)
                     (let ((_arg1234607_ (car _args234602_))
                           (_rest234609_ (cdr _args234602_)))
                       (if (null? _rest234609_)
                           (gxc#compile-e__1 _stx234600_ _arg1234607_)
                           (let ((_arg2234612_ (car _rest234609_))
                                 (_rest234614_ (cdr _rest234609_)))
                             (if (null? _rest234614_)
                                 (gxc#compile-e__2
                                  _stx234600_
                                  _arg1234607_
                                  _arg2234612_)
                                 (apply gxc#compile-e
                                        _stx234600_
                                        _arg1234607_
                                        _arg2234612_
                                        _rest234614_))))))))
              (__tmp241271 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp241272
           gxc#current-compile-methods
           __tmp241271))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx234503_)
        (let* ((___stx239178239179_ _stx234503_)
               (_g234506234526_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239178239179_)))))
          (let ((___kont239180239181_
                 (lambda (_L234570_ _L234571_)
                   (let ((_sym234589_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234571_))))
                     (if (let ((__tmp241273 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241273 _sym234589_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234589_))
                         (let ((_type234590234592_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234570_))))
                           (if _type234590234592_
                               (let ((_type234595_ _type234590234592_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234589_
                                  _type234595_))
                               '#f))))))
                (___kont239182239183_ (lambda () '#!void)))
            (let ((___match239211239212_
                   (lambda (_e234512234538_
                            _hd234511234541_
                            _tl234510234543_
                            _e234515234546_
                            _hd234514234549_
                            _tl234513234551_
                            _e234518234554_
                            _hd234517234557_
                            _tl234516234559_
                            _e234521234562_
                            _hd234520234565_
                            _tl234519234567_)
                     (let ((_L234570_ _hd234520234565_)
                           (_L234571_ _hd234517234557_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234571_))
                           (___kont239180239181_ _L234570_ _L234571_)
                           (___kont239182239183_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239178239179_))
                  (let ((_e234512234538_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239178239179_))))
                    (let ((_tl234510234543_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234512234538_)))
                          (_hd234511234541_
                           (let ()
                             (declare (not safe))
                             (##car _e234512234538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234510234543_))
                          (let ((_e234515234546_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234510234543_))))
                            (let ((_tl234513234551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234515234546_)))
                                  (_hd234514234549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234515234546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234514234549_))
                                  (let ((_e234518234554_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234514234549_))))
                                    (let ((_tl234516234559_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234518234554_)))
                                          (_hd234517234557_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234518234554_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234516234559_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234513234551_))
                                              (let ((_e234521234562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234513234551_))))
                                                (let ((_tl234519234567_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234521234562_)))
                                                      (_hd234520234565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234521234562_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234519234567_))
                                                      (___match239211239212_
                                                       _e234512234538_
                                                       _hd234511234541_
                                                       _tl234510234543_
                                                       _e234515234546_
                                                       _hd234514234549_
                                                       _tl234513234551_
                                                       _e234518234554_
                                                       _hd234517234557_
                                                       _tl234516234559_
                                                       _e234521234562_
                                                       _hd234520234565_
                                                       _tl234519234567_)
                                                      (___kont239182239183_))))
                                              (___kont239182239183_))
                                          (___kont239182239183_))))
                                  (___kont239182239183_))))
                          (___kont239182239183_))))
                  (___kont239182239183_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx234359_)
        (let* ((___stx239214239215_ _stx234359_)
               (_g234362234393_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239214239215_)))))
          (let ((___kont239216239217_
                 (lambda (_L234475_ _L234476_)
                   (let ((_sym234492_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234476_))))
                     (if (let ((__tmp241274 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241274 _sym234492_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234492_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym234492_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym234492_))
                             (let ((_type234493234495_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L234475_))))
                               (if _type234493234495_
                                   (let ((_type234498_ _type234493234495_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym234492_
                                      _type234498_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L234475_)))))
                (___kont239218239219_
                 (lambda (_L234422_ _L234423_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L234422_)))))
            (let ((___match239247239248_
                   (lambda (_e234368234443_
                            _hd234367234446_
                            _tl234366234448_
                            _e234371234451_
                            _hd234370234454_
                            _tl234369234456_
                            _e234374234459_
                            _hd234373234462_
                            _tl234372234464_
                            _e234377234467_
                            _hd234376234470_
                            _tl234375234472_)
                     (let ((_L234475_ _hd234376234470_)
                           (_L234476_ _hd234373234462_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234476_))
                           (___kont239216239217_ _L234475_ _L234476_)
                           (___kont239218239219_
                            _hd234376234470_
                            _hd234370234454_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239214239215_))
                  (let ((_e234368234443_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239214239215_))))
                    (let ((_tl234366234448_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234368234443_)))
                          (_hd234367234446_
                           (let ()
                             (declare (not safe))
                             (##car _e234368234443_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234366234448_))
                          (let ((_e234371234451_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234366234448_))))
                            (let ((_tl234369234456_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234371234451_)))
                                  (_hd234370234454_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234371234451_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234370234454_))
                                  (let ((_e234374234459_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234370234454_))))
                                    (let ((_tl234372234464_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234374234459_)))
                                          (_hd234373234462_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234374234459_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234372234464_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234369234456_))
                                              (let ((_e234377234467_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234369234456_))))
                                                (let ((_tl234375234472_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234377234467_)))
                                                      (_hd234376234470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234377234467_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234375234472_))
                                                      (___match239247239248_
                                                       _e234368234443_
                                                       _hd234367234446_
                                                       _tl234366234448_
                                                       _e234371234451_
                                                       _hd234370234454_
                                                       _tl234369234456_
                                                       _e234374234459_
                                                       _hd234373234462_
                                                       _tl234372234464_
                                                       _e234377234467_
                                                       _hd234376234470_
                                                       _tl234375234472_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234362234393_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234362234393_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234369234456_))
                                              (let ((_e234388234414_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234369234456_))))
                                                (let ((_tl234386234419_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234388234414_)))
                                                      (_hd234387234417_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234388234414_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234386234419_))
                                                      (___kont239218239219_
                                                       _hd234387234417_
                                                       _hd234370234454_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234362234393_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234362234393_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234369234456_))
                                      (let ((_e234388234414_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234369234456_))))
                                        (let ((_tl234386234419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234388234414_)))
                                              (_hd234387234417_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234388234414_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234386234419_))
                                              (___kont239218239219_
                                               _hd234387234417_
                                               _hd234370234454_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234362234393_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234362234393_))))))
                          (let () (declare (not safe)) (_g234362234393_)))))
                  (let () (declare (not safe)) (_g234362234393_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx234144_)
        (letrec ((_collect-e234146_
                  (lambda (_hd234303_ _expr234304_)
                    (let* ((___stx239270239271_ _hd234303_)
                           (_g234307234317_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx239270239271_)))))
                      (let ((___kont239272239273_
                             (lambda (_L234337_)
                               (let ((_sym234348_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L234337_))))
                                 (if (let ((__tmp241275
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp241275 _sym234348_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym234348_))
                                     (let ((_type234349234351_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr234304_))))
                                       (if _type234349234351_
                                           (let ((_type234354_
                                                  _type234349234351_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym234348_
                                              _type234354_
                                              '#t))
                                           '#f))))))
                            (___kont239274239275_ (lambda () '#!void)))
                        (let ((___match239283239284_
                               (lambda (_e234312234329_
                                        _hd234311234332_
                                        _tl234310234334_)
                                 (let ((_L234337_ _hd234311234332_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L234337_))
                                       (___kont239272239273_ _L234337_)
                                       (___kont239274239275_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx239270239271_))
                              (let ((_e234312234329_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx239270239271_))))
                                (let ((_tl234310234334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234312234329_)))
                                      (_hd234311234332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234312234329_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234310234334_))
                                      (___match239283239284_
                                       _e234312234329_
                                       _hd234311234332_
                                       _tl234310234334_)
                                      (___kont239274239275_))))
                              (___kont239274239275_))))))))
          (let* ((_g234148234183_
                  (lambda (_g234149234180_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234149234180_))))
                 (_g234147234300_
                  (lambda (_g234149234186_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234149234186_))
                        (let ((_e234155234188_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234149234186_))))
                          (let ((_hd234154234191_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234155234188_)))
                                (_tl234153234193_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234155234188_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234153234193_))
                                (let ((_e234158234196_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234153234193_))))
                                  (let ((_hd234157234199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234158234196_)))
                                        (_tl234156234201_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234158234196_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd234157234199_))
                                        (let ((_g241276_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd234157234199_
                                                  '0))))
                                          (begin
                                            (let ((_g241277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g241276_)
                                                         (##vector-length
                                                          _g241276_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g241277_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g241277_)))
                                            (let ((_target234159234204_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241276_
                                                      0)))
                                                  (_tl234161234206_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241276_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234161234206_))
                                                  (letrec ((_loop234162234209_
                                                            (lambda (_hd234160234212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr234166234214_
                             _hd234167234216_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234160234212_))
                          (let ((_e234163234219_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234160234212_))))
                            (let ((_lp-hd234164234222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234163234219_)))
                                  (_lp-tl234165234224_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234163234219_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd234164234222_))
                                  (let ((_e234172234227_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd234164234222_))))
                                    (let ((_hd234171234230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234172234227_)))
                                          (_tl234170234232_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234172234227_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234170234232_))
                                          (let ((_e234175234235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234170234232_))))
                                            (let ((_hd234174234238_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234175234235_)))
                                                  (_tl234173234240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234175234235_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234173234240_))
                                                  (let ((__tmp241282
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd234174234238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr234166234214_)))
                (__tmp241281
                 (let ()
                   (declare (not safe))
                   (cons _hd234171234230_ _hd234167234216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop234162234209_
                                                     _lp-tl234165234224_
                                                     __tmp241282
                                                     __tmp241281))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234148234183_
                                                     _g234149234186_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g234148234183_
                                             _g234149234186_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234148234183_ _g234149234186_)))))
                          (let ((_expr234168234243_
                                 (reverse _expr234166234214_))
                                (_hd234169234245_ (reverse _hd234167234216_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234156234201_))
                                (let ((_e234178234248_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234156234201_))))
                                  (let ((_hd234177234251_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234178234248_)))
                                        (_tl234176234253_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234178234248_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234176234253_))
                                        ((lambda (_L234256_
                                                  _L234257_
                                                  _L234258_)
                                           (for-each
                                            _collect-e234146_
                                            (let ((__tmp241278
                                                   (lambda (_g234278234281_
                                                            _g234279234283_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234278234281_
                                                             _g234279234283_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241278
                                                      '()
                                                      _L234258_))
                                            (let ((__tmp241279
                                                   (lambda (_g234285234288_
                                                            _g234286234290_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234285234288_
                                                             _g234286234290_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241279
                                                      '()
                                                      _L234257_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp241280
                                                   (lambda (_g234292234295_
                                                            _g234293234297_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234292234295_
                                                             _g234293234297_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241280
                                                      '()
                                                      _L234257_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L234256_)))
                                         _hd234177234251_
                                         _expr234168234243_
                                         _hd234169234245_)
                                        (let ()
                                          (declare (not safe))
                                          (_g234148234183_ _g234149234186_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234148234183_ _g234149234186_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop234162234209_
                                                       _target234159234204_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234148234183_
                                                     _g234149234186_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g234148234183_ _g234149234186_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234148234183_ _g234149234186_)))))
                        (let ()
                          (declare (not safe))
                          (_g234148234183_ _g234149234186_))))))
            (declare (not safe))
            (_g234147234300_ _stx234144_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233636_)
        (let* ((___stx239286239287_ _stx233636_)
               (_g233640233755_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239286239287_)))))
          (let ((___kont239288239289_
                 (lambda (_L234094_ _L234095_ _L234096_ _L234097_ _L234098_)
                   (let ((__tmp241286
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234097_)))
                         (__tmp241285
                          (let () (declare (not safe)) (gx#stx-e _L234096_)))
                         (__tmp241284
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234095_)))
                         (__tmp241283
                          (let () (declare (not safe)) (gx#stx-e _L234094_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241286
                      __tmp241285
                      __tmp241284
                      __tmp241283))))
                (___kont239290239291_
                 (lambda (_L233922_ _L233923_ _L233924_ _L233925_)
                   (let ((__tmp241289
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233924_)))
                         (__tmp241288
                          (let () (declare (not safe)) (gx#stx-e _L233923_)))
                         (__tmp241287
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233922_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241289
                      __tmp241288
                      __tmp241287
                      '#f))))
                (___kont239292239293_
                 (lambda (_L233792_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp241290
                           (lambda (_g233805233808_ _g233806233810_)
                             (let ()
                               (declare (not safe))
                               (cons _g233805233808_ _g233806233810_)))))
                      (declare (not safe))
                      (foldr1 __tmp241290 '() _L233792_))))))
            (let* ((___match239543239544_
                    (lambda (_e233741233760_
                             _hd233740233763_
                             _tl233739233765_
                             ___splice239294239295_
                             _target233742233768_
                             _tl233744233770_)
                      (letrec ((_loop233745233773_
                                (lambda (_hd233743233776_ _expr233749233778_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233743233776_))
                                      (let ((_e233746233781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233743233776_))))
                                        (let ((_lp-tl233748233786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233746233781_)))
                                              (_lp-hd233747233784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233746233781_))))
                                          (let ((__tmp241291
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233747233784_
                                                         _expr233749233778_))))
                                            (declare (not safe))
                                            (_loop233745233773_
                                             _lp-tl233748233786_
                                             __tmp241291))))
                                      (let ((_expr233750233789_
                                             (reverse _expr233749233778_)))
                                        (___kont239292239293_
                                         _expr233750233789_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233745233773_ _target233742233768_ '())))))
                   (___match239423239424_
                    (lambda (_e233649233966_
                             _hd233648233969_
                             _tl233647233971_
                             _e233652233974_
                             _hd233651233977_
                             _tl233650233979_
                             _e233655233982_
                             _hd233654233985_
                             _tl233653233987_
                             _e233658233990_
                             _hd233657233993_
                             _tl233656233995_
                             _e233661233998_
                             _hd233660234001_
                             _tl233659234003_
                             _e233664234006_
                             _hd233663234009_
                             _tl233662234011_
                             _e233667234014_
                             _hd233666234017_
                             _tl233665234019_
                             _e233670234022_
                             _hd233669234025_
                             _tl233668234027_
                             _e233673234030_
                             _hd233672234033_
                             _tl233671234035_
                             _e233676234038_
                             _hd233675234041_
                             _tl233674234043_
                             _e233679234046_
                             _hd233678234049_
                             _tl233677234051_
                             _e233682234054_
                             _hd233681234057_
                             _tl233680234059_
                             _e233685234062_
                             _hd233684234065_
                             _tl233683234067_
                             _e233688234070_
                             _hd233687234073_
                             _tl233686234075_
                             _e233691234078_
                             _hd233690234081_
                             _tl233689234083_
                             _e233694234086_
                             _hd233693234089_
                             _tl233692234091_)
                      (let ((_L234094_ _hd233693234089_)
                            (_L234095_ _hd233684234065_)
                            (_L234096_ _hd233675234041_)
                            (_L234097_ _hd233666234017_)
                            (_L234098_ _hd233657233993_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L234098_
                               'bind-method!))
                            (___kont239288239289_
                             _L234094_
                             _L234095_
                             _L234096_
                             _L234097_
                             _L234098_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233647233971_))
                                (let ((___splice239294239295_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233647233971_
                                          '0))))
                                  (let ((_tl233744233770_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239294239295_
                                            '1)))
                                        (_target233742233768_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239294239295_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233744233770_))
                                        (___match239543239544_
                                         _e233649233966_
                                         _hd233648233969_
                                         _tl233647233971_
                                         ___splice239294239295_
                                         _target233742233768_
                                         _tl233744233770_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233640233755_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233640233755_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239286239287_))
                  (let ((_e233649233966_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239286239287_))))
                    (let ((_tl233647233971_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233649233966_)))
                          (_hd233648233969_
                           (let ()
                             (declare (not safe))
                             (##car _e233649233966_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233647233971_))
                          (let ((_e233652233974_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233647233971_))))
                            (let ((_tl233650233979_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233652233974_)))
                                  (_hd233651233977_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233652233974_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233651233977_))
                                  (let ((_e233655233982_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233651233977_))))
                                    (let ((_tl233653233987_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233655233982_)))
                                          (_hd233654233985_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233655233982_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233654233985_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233654233985_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233653233987_))
                                                  (let ((_e233658233990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233653233987_))))
                                                    (let ((_tl233656233995_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233658233990_)))
                                                          (_hd233657233993_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233658233990_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233656233995_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233650233979_))
                      (let ((_e233661233998_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233650233979_))))
                        (let ((_tl233659234003_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233661233998_)))
                              (_hd233660234001_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233661233998_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233660234001_))
                              (let ((_e233664234006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233660234001_))))
                                (let ((_tl233662234011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233664234006_)))
                                      (_hd233663234009_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233664234006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233663234009_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233663234009_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233662234011_))
                                              (let ((_e233667234014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233662234011_))))
                                                (let ((_tl233665234019_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233667234014_)))
                                                      (_hd233666234017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233667234014_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233665234019_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233659234003_))
                                                          (let ((_e233670234022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233659234003_))))
                    (let ((_tl233668234027_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233670234022_)))
                          (_hd233669234025_
                           (let ()
                             (declare (not safe))
                             (##car _e233670234022_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233669234025_))
                          (let ((_e233673234030_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233669234025_))))
                            (let ((_tl233671234035_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233673234030_)))
                                  (_hd233672234033_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233673234030_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233672234033_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233672234033_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233671234035_))
                                          (let ((_e233676234038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233671234035_))))
                                            (let ((_tl233674234043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233676234038_)))
                                                  (_hd233675234041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233676234038_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233674234043_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233668234027_))
                                                      (let ((_e233679234046_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233668234027_))))
                (let ((_tl233677234051_
                       (let () (declare (not safe)) (##cdr _e233679234046_)))
                      (_hd233678234049_
                       (let () (declare (not safe)) (##car _e233679234046_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233678234049_))
                      (let ((_e233682234054_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233678234049_))))
                        (let ((_tl233680234059_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233682234054_)))
                              (_hd233681234057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233682234054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233681234057_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233681234057_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233680234059_))
                                      (let ((_e233685234062_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233680234059_))))
                                        (let ((_tl233683234067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233685234062_)))
                                              (_hd233684234065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233685234062_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233683234067_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233677234051_))
                                                  (let ((_e233688234070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233677234051_))))
                                                    (let ((_tl233686234075_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233688234070_)))
                                                          (_hd233687234073_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233688234070_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233687234073_))
                                                          (let ((_e233691234078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233687234073_))))
                    (let ((_tl233689234083_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233691234078_)))
                          (_hd233690234081_
                           (let ()
                             (declare (not safe))
                             (##car _e233691234078_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233690234081_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233690234081_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233689234083_))
                                  (let ((_e233694234086_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233689234083_))))
                                    (let ((_tl233692234091_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233694234086_)))
                                          (_hd233693234089_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233694234086_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233692234091_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233686234075_))
                                              (___match239423239424_
                                               _e233649233966_
                                               _hd233648233969_
                                               _tl233647233971_
                                               _e233652233974_
                                               _hd233651233977_
                                               _tl233650233979_
                                               _e233655233982_
                                               _hd233654233985_
                                               _tl233653233987_
                                               _e233658233990_
                                               _hd233657233993_
                                               _tl233656233995_
                                               _e233661233998_
                                               _hd233660234001_
                                               _tl233659234003_
                                               _e233664234006_
                                               _hd233663234009_
                                               _tl233662234011_
                                               _e233667234014_
                                               _hd233666234017_
                                               _tl233665234019_
                                               _e233670234022_
                                               _hd233669234025_
                                               _tl233668234027_
                                               _e233673234030_
                                               _hd233672234033_
                                               _tl233671234035_
                                               _e233676234038_
                                               _hd233675234041_
                                               _tl233674234043_
                                               _e233679234046_
                                               _hd233678234049_
                                               _tl233677234051_
                                               _e233682234054_
                                               _hd233681234057_
                                               _tl233680234059_
                                               _e233685234062_
                                               _hd233684234065_
                                               _tl233683234067_
                                               _e233688234070_
                                               _hd233687234073_
                                               _tl233686234075_
                                               _e233691234078_
                                               _hd233690234081_
                                               _tl233689234083_
                                               _e233694234086_
                                               _hd233693234089_
                                               _tl233692234091_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233647233971_))
                                                  (let ((___splice239294239295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233647233971_
                                                            '0))))
                                                    (let ((_tl233744233770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '1)))
                                                          (_target233742233768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233744233770_))
                                                          (___match239543239544_
                                                           _e233649233966_
                                                           _hd233648233969_
                                                           _tl233647233971_
                                                           ___splice239294239295_
                                                           _target233742233768_
                                                           _tl233744233770_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233640233755_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233647233971_))
                                              (let ((___splice239294239295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233647233971_
                                                        '0))))
                                                (let ((_tl233744233770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '1)))
                                                      (_target233742233768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233744233770_))
                                                      (___match239543239544_
                                                       _e233649233966_
                                                       _hd233648233969_
                                                       _tl233647233971_
                                                       ___splice239294239295_
                                                       _target233742233768_
                                                       _tl233744233770_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233640233755_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233647233971_))
                                      (let ((___splice239294239295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233647233971_
                                                '0))))
                                        (let ((_tl233744233770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '1)))
                                              (_target233742233768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233744233770_))
                                              (___match239543239544_
                                               _e233649233966_
                                               _hd233648233969_
                                               _tl233647233971_
                                               ___splice239294239295_
                                               _target233742233768_
                                               _tl233744233770_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233647233971_))
                                  (let ((___splice239294239295_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233647233971_
                                            '0))))
                                    (let ((_tl233744233770_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239294239295_
                                              '1)))
                                          (_target233742233768_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239294239295_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233744233770_))
                                          (___match239543239544_
                                           _e233649233966_
                                           _hd233648233969_
                                           _tl233647233971_
                                           ___splice239294239295_
                                           _target233742233768_
                                           _tl233744233770_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233640233755_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233640233755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233647233971_))
                              (let ((___splice239294239295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233647233971_
                                        '0))))
                                (let ((_tl233744233770_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239294239295_
                                          '1)))
                                      (_target233742233768_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239294239295_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233744233770_))
                                      (___match239543239544_
                                       _e233649233966_
                                       _hd233648233969_
                                       _tl233647233971_
                                       ___splice239294239295_
                                       _target233742233768_
                                       _tl233744233770_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_)))))
                              (let ()
                                (declare (not safe))
                                (_g233640233755_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233647233971_))
                      (let ((___splice239294239295_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233647233971_ '0))))
                        (let ((_tl233744233770_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '1)))
                              (_target233742233768_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233744233770_))
                              (___match239543239544_
                               _e233649233966_
                               _hd233648233969_
                               _tl233647233971_
                               ___splice239294239295_
                               _target233742233768_
                               _tl233744233770_)
                              (let ()
                                (declare (not safe))
                                (_g233640233755_)))))
                      (let () (declare (not safe)) (_g233640233755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233677234051_))
                                                      (if (let ((__tmp241292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp241292 'bind-method!))
                  (let ((_L233922_ _hd233684234065_)
                        (_L233923_ _hd233675234041_)
                        (_L233924_ _hd233666234017_)
                        (_L233925_ _hd233657233993_))
                    (___kont239290239291_
                     _L233922_
                     _L233923_
                     _L233924_
                     _L233925_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233647233971_))
                      (let ((___splice239294239295_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233647233971_ '0))))
                        (let ((_tl233744233770_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '1)))
                              (_target233742233768_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233744233770_))
                              (___match239543239544_
                               _e233649233966_
                               _hd233648233969_
                               _tl233647233971_
                               ___splice239294239295_
                               _target233742233768_
                               _tl233744233770_)
                              (let ()
                                (declare (not safe))
                                (_g233640233755_)))))
                      (let () (declare (not safe)) (_g233640233755_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233647233971_))
                  (let ((___splice239294239295_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233647233971_ '0))))
                    (let ((_tl233744233770_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239294239295_ '1)))
                          (_target233742233768_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239294239295_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233744233770_))
                          (___match239543239544_
                           _e233649233966_
                           _hd233648233969_
                           _tl233647233971_
                           ___splice239294239295_
                           _target233742233768_
                           _tl233744233770_)
                          (let () (declare (not safe)) (_g233640233755_)))))
                  (let () (declare (not safe)) (_g233640233755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233647233971_))
                                                  (let ((___splice239294239295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233647233971_
                                                            '0))))
                                                    (let ((_tl233744233770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '1)))
                                                          (_target233742233768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233744233770_))
                                                          (___match239543239544_
                                                           _e233649233966_
                                                           _hd233648233969_
                                                           _tl233647233971_
                                                           ___splice239294239295_
                                                           _target233742233768_
                                                           _tl233744233770_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233640233755_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233647233971_))
                                          (let ((___splice239294239295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233647233971_
                                                    '0))))
                                            (let ((_tl233744233770_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239294239295_
                                                      '1)))
                                                  (_target233742233768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239294239295_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233744233770_))
                                                  (___match239543239544_
                                                   _e233649233966_
                                                   _hd233648233969_
                                                   _tl233647233971_
                                                   ___splice239294239295_
                                                   _target233742233768_
                                                   _tl233744233770_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233640233755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233647233971_))
                                      (let ((___splice239294239295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233647233971_
                                                '0))))
                                        (let ((_tl233744233770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '1)))
                                              (_target233742233768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233744233770_))
                                              (___match239543239544_
                                               _e233649233966_
                                               _hd233648233969_
                                               _tl233647233971_
                                               ___splice239294239295_
                                               _target233742233768_
                                               _tl233744233770_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233647233971_))
                                  (let ((___splice239294239295_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233647233971_
                                            '0))))
                                    (let ((_tl233744233770_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239294239295_
                                              '1)))
                                          (_target233742233768_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239294239295_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233744233770_))
                                          (___match239543239544_
                                           _e233649233966_
                                           _hd233648233969_
                                           _tl233647233971_
                                           ___splice239294239295_
                                           _target233742233768_
                                           _tl233744233770_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233640233755_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233640233755_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233647233971_))
                          (let ((___splice239294239295_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233647233971_
                                    '0))))
                            (let ((_tl233744233770_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239294239295_ '1)))
                                  (_target233742233768_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239294239295_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233744233770_))
                                  (___match239543239544_
                                   _e233649233966_
                                   _hd233648233969_
                                   _tl233647233971_
                                   ___splice239294239295_
                                   _target233742233768_
                                   _tl233744233770_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233640233755_)))))
                          (let () (declare (not safe)) (_g233640233755_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233647233971_))
                  (let ((___splice239294239295_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233647233971_ '0))))
                    (let ((_tl233744233770_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239294239295_ '1)))
                          (_target233742233768_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239294239295_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233744233770_))
                          (___match239543239544_
                           _e233649233966_
                           _hd233648233969_
                           _tl233647233971_
                           ___splice239294239295_
                           _target233742233768_
                           _tl233744233770_)
                          (let () (declare (not safe)) (_g233640233755_)))))
                  (let () (declare (not safe)) (_g233640233755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233647233971_))
                                                      (let ((___splice239294239295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233647233971_ '0))))
                (let ((_tl233744233770_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239294239295_ '1)))
                      (_target233742233768_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239294239295_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233744233770_))
                      (___match239543239544_
                       _e233649233966_
                       _hd233648233969_
                       _tl233647233971_
                       ___splice239294239295_
                       _target233742233768_
                       _tl233744233770_)
                      (let () (declare (not safe)) (_g233640233755_)))))
              (let () (declare (not safe)) (_g233640233755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233647233971_))
                                              (let ((___splice239294239295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233647233971_
                                                        '0))))
                                                (let ((_tl233744233770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '1)))
                                                      (_target233742233768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233744233770_))
                                                      (___match239543239544_
                                                       _e233649233966_
                                                       _hd233648233969_
                                                       _tl233647233971_
                                                       ___splice239294239295_
                                                       _target233742233768_
                                                       _tl233744233770_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233640233755_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233647233971_))
                                          (let ((___splice239294239295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233647233971_
                                                    '0))))
                                            (let ((_tl233744233770_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239294239295_
                                                      '1)))
                                                  (_target233742233768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239294239295_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233744233770_))
                                                  (___match239543239544_
                                                   _e233649233966_
                                                   _hd233648233969_
                                                   _tl233647233971_
                                                   ___splice239294239295_
                                                   _target233742233768_
                                                   _tl233744233770_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233640233755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233647233971_))
                                      (let ((___splice239294239295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233647233971_
                                                '0))))
                                        (let ((_tl233744233770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '1)))
                                              (_target233742233768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233744233770_))
                                              (___match239543239544_
                                               _e233649233966_
                                               _hd233648233969_
                                               _tl233647233971_
                                               ___splice239294239295_
                                               _target233742233768_
                                               _tl233744233770_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233647233971_))
                              (let ((___splice239294239295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233647233971_
                                        '0))))
                                (let ((_tl233744233770_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239294239295_
                                          '1)))
                                      (_target233742233768_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239294239295_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233744233770_))
                                      (___match239543239544_
                                       _e233649233966_
                                       _hd233648233969_
                                       _tl233647233971_
                                       ___splice239294239295_
                                       _target233742233768_
                                       _tl233744233770_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_)))))
                              (let ()
                                (declare (not safe))
                                (_g233640233755_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233647233971_))
                      (let ((___splice239294239295_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233647233971_ '0))))
                        (let ((_tl233744233770_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '1)))
                              (_target233742233768_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233744233770_))
                              (___match239543239544_
                               _e233649233966_
                               _hd233648233969_
                               _tl233647233971_
                               ___splice239294239295_
                               _target233742233768_
                               _tl233744233770_)
                              (let ()
                                (declare (not safe))
                                (_g233640233755_)))))
                      (let () (declare (not safe)) (_g233640233755_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233647233971_))
                  (let ((___splice239294239295_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233647233971_ '0))))
                    (let ((_tl233744233770_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239294239295_ '1)))
                          (_target233742233768_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239294239295_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233744233770_))
                          (___match239543239544_
                           _e233649233966_
                           _hd233648233969_
                           _tl233647233971_
                           ___splice239294239295_
                           _target233742233768_
                           _tl233744233770_)
                          (let () (declare (not safe)) (_g233640233755_)))))
                  (let () (declare (not safe)) (_g233640233755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233647233971_))
                                                  (let ((___splice239294239295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233647233971_
                                                            '0))))
                                                    (let ((_tl233744233770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '1)))
                                                          (_target233742233768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233744233770_))
                                                          (___match239543239544_
                                                           _e233649233966_
                                                           _hd233648233969_
                                                           _tl233647233971_
                                                           ___splice239294239295_
                                                           _target233742233768_
                                                           _tl233744233770_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233640233755_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233647233971_))
                                              (let ((___splice239294239295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233647233971_
                                                        '0))))
                                                (let ((_tl233744233770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '1)))
                                                      (_target233742233768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233744233770_))
                                                      (___match239543239544_
                                                       _e233649233966_
                                                       _hd233648233969_
                                                       _tl233647233971_
                                                       ___splice239294239295_
                                                       _target233742233768_
                                                       _tl233744233770_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233640233755_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233647233971_))
                                          (let ((___splice239294239295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233647233971_
                                                    '0))))
                                            (let ((_tl233744233770_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239294239295_
                                                      '1)))
                                                  (_target233742233768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239294239295_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233744233770_))
                                                  (___match239543239544_
                                                   _e233649233966_
                                                   _hd233648233969_
                                                   _tl233647233971_
                                                   ___splice239294239295_
                                                   _target233742233768_
                                                   _tl233744233770_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233640233755_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233647233971_))
                                  (let ((___splice239294239295_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233647233971_
                                            '0))))
                                    (let ((_tl233744233770_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239294239295_
                                              '1)))
                                          (_target233742233768_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239294239295_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233744233770_))
                                          (___match239543239544_
                                           _e233649233966_
                                           _hd233648233969_
                                           _tl233647233971_
                                           ___splice239294239295_
                                           _target233742233768_
                                           _tl233744233770_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233640233755_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233640233755_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233647233971_))
                          (let ((___splice239294239295_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233647233971_
                                    '0))))
                            (let ((_tl233744233770_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239294239295_ '1)))
                                  (_target233742233768_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239294239295_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233744233770_))
                                  (___match239543239544_
                                   _e233649233966_
                                   _hd233648233969_
                                   _tl233647233971_
                                   ___splice239294239295_
                                   _target233742233768_
                                   _tl233744233770_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233640233755_)))))
                          (let () (declare (not safe)) (_g233640233755_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233647233971_))
                      (let ((___splice239294239295_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233647233971_ '0))))
                        (let ((_tl233744233770_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '1)))
                              (_target233742233768_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239294239295_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233744233770_))
                              (___match239543239544_
                               _e233649233966_
                               _hd233648233969_
                               _tl233647233971_
                               ___splice239294239295_
                               _target233742233768_
                               _tl233744233770_)
                              (let ()
                                (declare (not safe))
                                (_g233640233755_)))))
                      (let () (declare (not safe)) (_g233640233755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233647233971_))
                                                      (let ((___splice239294239295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233647233971_ '0))))
                (let ((_tl233744233770_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239294239295_ '1)))
                      (_target233742233768_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239294239295_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233744233770_))
                      (___match239543239544_
                       _e233649233966_
                       _hd233648233969_
                       _tl233647233971_
                       ___splice239294239295_
                       _target233742233768_
                       _tl233744233770_)
                      (let () (declare (not safe)) (_g233640233755_)))))
              (let () (declare (not safe)) (_g233640233755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233647233971_))
                                                  (let ((___splice239294239295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233647233971_
                                                            '0))))
                                                    (let ((_tl233744233770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '1)))
                                                          (_target233742233768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239294239295_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233744233770_))
                                                          (___match239543239544_
                                                           _e233649233966_
                                                           _hd233648233969_
                                                           _tl233647233971_
                                                           ___splice239294239295_
                                                           _target233742233768_
                                                           _tl233744233770_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233640233755_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233640233755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233647233971_))
                                              (let ((___splice239294239295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233647233971_
                                                        '0))))
                                                (let ((_tl233744233770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '1)))
                                                      (_target233742233768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239294239295_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233744233770_))
                                                      (___match239543239544_
                                                       _e233649233966_
                                                       _hd233648233969_
                                                       _tl233647233971_
                                                       ___splice239294239295_
                                                       _target233742233768_
                                                       _tl233744233770_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233640233755_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233647233971_))
                                      (let ((___splice239294239295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233647233971_
                                                '0))))
                                        (let ((_tl233744233770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '1)))
                                              (_target233742233768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239294239295_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233744233770_))
                                              (___match239543239544_
                                               _e233649233966_
                                               _hd233648233969_
                                               _tl233647233971_
                                               ___splice239294239295_
                                               _target233742233768_
                                               _tl233744233770_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233640233755_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233647233971_))
                              (let ((___splice239294239295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233647233971_
                                        '0))))
                                (let ((_tl233744233770_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239294239295_
                                          '1)))
                                      (_target233742233768_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239294239295_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233744233770_))
                                      (___match239543239544_
                                       _e233649233966_
                                       _hd233648233969_
                                       _tl233647233971_
                                       ___splice239294239295_
                                       _target233742233768_
                                       _tl233744233770_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233640233755_)))))
                              (let ()
                                (declare (not safe))
                                (_g233640233755_))))))
                  (let () (declare (not safe)) (_g233640233755_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233576_)
        (let* ((___stx239546239547_ _stx233576_)
               (_g233579233592_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239546239547_)))))
          (let ((___kont239548239549_
                 (lambda (_L233620_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233620_))))
                (___kont239550239551_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239546239547_))
                (let ((_e233584233604_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239546239547_))))
                  (let ((_tl233582233609_
                         (let () (declare (not safe)) (##cdr _e233584233604_)))
                        (_hd233583233607_
                         (let ()
                           (declare (not safe))
                           (##car _e233584233604_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233582233609_))
                        (let ((_e233587233612_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233582233609_))))
                          (let ((_tl233585233617_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233587233612_)))
                                (_hd233586233615_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233587233612_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233585233617_))
                                (___kont239548239549_ _hd233586233615_)
                                (___kont239550239551_))))
                        (___kont239550239551_))))
                (___kont239550239551_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx233456_)
        (let* ((_g233458233475_
                (lambda (_g233459233472_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233459233472_))))
               (_g233457233573_
                (lambda (_g233459233478_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233459233478_))
                      (let ((_e233464233480_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233459233478_))))
                        (let ((_hd233463233483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233464233480_)))
                              (_tl233462233485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233464233480_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233462233485_))
                              (let ((_e233467233488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233462233485_))))
                                (let ((_hd233466233491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233467233488_)))
                                      (_tl233465233493_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233467233488_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233465233493_))
                                      (let ((_e233470233496_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233465233493_))))
                                        (let ((_hd233469233499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233470233496_)))
                                              (_tl233468233501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233470233496_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233468233501_))
                                              ((lambda (_L233504_ _L233505_)
                                                 (let* ((___stx239568239569_
                                                         _L233505_)
                                                        (_g233521233532_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239568239569_)))))
                                                   (let ((___kont239570239571_
                                                          (lambda (_L233552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233553_)
                    (let ((_$e233565_
                           (let ((__tmp241293
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233553_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp241293
                              '#f))))
                      (if _$e233565_
                          ((lambda (_type-e233568_)
                             (_type-e233568_ _stx233456_ _L233505_))
                           _$e233565_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L233504_))))))
                 (___kont239572239573_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L233504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239579239580_
                                                            (lambda (_e233527233544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233526233547_
                             _tl233525233549_)
                      (let ((_L233552_ _tl233525233549_)
                            (_L233553_ _hd233526233547_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233553_))
                            (___kont239570239571_ _L233552_ _L233553_)
                            (___kont239572239573_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239568239569_))
                   (let ((_e233527233544_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239568239569_))))
                     (let ((_tl233525233549_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233527233544_)))
                           (_hd233526233547_
                            (let ()
                              (declare (not safe))
                              (##car _e233527233544_))))
                       (___match239579239580_
                        _e233527233544_
                        _hd233526233547_
                        _tl233525233549_)))
                   (___kont239572239573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd233469233499_
                                               _hd233466233491_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233458233475_
                                                 _g233459233478_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233458233475_ _g233459233478_)))))
                              (let ()
                                (declare (not safe))
                                (_g233458233475_ _g233459233478_)))))
                      (let ()
                        (declare (not safe))
                        (_g233458233475_ _g233459233478_))))))
          (declare (not safe))
          (_g233457233573_ _stx233456_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx233317_ _ann233318_)
        (let* ((_g233320233353_
                (lambda (_g233321233350_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233321233350_))))
               (_g233319233453_
                (lambda (_g233321233356_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233321233356_))
                      (let ((_e233330233358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233321233356_))))
                        (let ((_hd233329233361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233330233358_)))
                              (_tl233328233363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233330233358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233328233363_))
                              (let ((_e233333233366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233328233363_))))
                                (let ((_hd233332233369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233333233366_)))
                                      (_tl233331233371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233333233366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233331233371_))
                                      (let ((_e233336233374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233331233371_))))
                                        (let ((_hd233335233377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233336233374_)))
                                              (_tl233334233379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233336233374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233334233379_))
                                              (let ((_e233339233382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233334233379_))))
                                                (let ((_hd233338233385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233339233382_)))
                                                      (_tl233337233387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233339233382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233337233387_))
                                                      (let ((_e233342233390_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233337233387_))))
                (let ((_hd233341233393_
                       (let () (declare (not safe)) (##car _e233342233390_)))
                      (_tl233340233395_
                       (let () (declare (not safe)) (##cdr _e233342233390_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl233340233395_))
                      (let ((_e233345233398_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233340233395_))))
                        (let ((_hd233344233401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233345233398_)))
                              (_tl233343233403_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233345233398_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233343233403_))
                              (let ((_e233348233406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233343233403_))))
                                (let ((_hd233347233409_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233348233406_)))
                                      (_tl233346233411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233348233406_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233346233411_))
                                      ((lambda (_L233414_
                                                _L233415_
                                                _L233416_
                                                _L233417_
                                                _L233418_
                                                _L233419_)
                                         (let ((_type-id233446_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233419_)))
                                               (_super233447_
                                                (map gxc#identifier-symbol
                                                     _L233418_))
                                               (_slots233448_
                                                (map gx#stx-e _L233417_))
                                               (_ctor-method233449_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233416_)))
                                               (_struct?233450_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233415_)))
                                               (_final?233451_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233414_))))
                                           (let ((__obj241251
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
                                              __obj241251
                                              _type-id233446_
                                              _super233447_
                                              _slots233448_
                                              _ctor-method233449_
                                              _struct?233450_
                                              _final?233451_)
                                             __obj241251)))
                                       _hd233347233409_
                                       _hd233344233401_
                                       _hd233341233393_
                                       _hd233338233385_
                                       _hd233335233377_
                                       _hd233332233369_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233320233353_ _g233321233356_)))))
                              (let ()
                                (declare (not safe))
                                (_g233320233353_ _g233321233356_)))))
                      (let ()
                        (declare (not safe))
                        (_g233320233353_ _g233321233356_)))))
              (let ()
                (declare (not safe))
                (_g233320233353_ _g233321233356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233320233353_
                                                 _g233321233356_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233320233353_ _g233321233356_)))))
                              (let ()
                                (declare (not safe))
                                (_g233320233353_ _g233321233356_)))))
                      (let ()
                        (declare (not safe))
                        (_g233320233353_ _g233321233356_))))))
          (declare (not safe))
          (_g233319233453_ _ann233318_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx233265_ _ann233266_)
        (let* ((_g233268233281_
                (lambda (_g233269233278_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233269233278_))))
               (_g233267233314_
                (lambda (_g233269233284_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233269233284_))
                      (let ((_e233273233286_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233269233284_))))
                        (let ((_hd233272233289_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233273233286_)))
                              (_tl233271233291_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233273233286_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233271233291_))
                              (let ((_e233276233294_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233271233291_))))
                                (let ((_hd233275233297_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233276233294_)))
                                      (_tl233274233299_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233276233294_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233274233299_))
                                      ((lambda (_L233302_)
                                         (let ((__tmp241294
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233302_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp241294)))
                                       _hd233275233297_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233268233281_ _g233269233284_)))))
                              (let ()
                                (declare (not safe))
                                (_g233268233281_ _g233269233284_)))))
                      (let ()
                        (declare (not safe))
                        (_g233268233281_ _g233269233284_))))))
          (declare (not safe))
          (_g233267233314_ _ann233266_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx233213_ _ann233214_)
        (let* ((_g233216233229_
                (lambda (_g233217233226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233217233226_))))
               (_g233215233262_
                (lambda (_g233217233232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233217233232_))
                      (let ((_e233221233234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233217233232_))))
                        (let ((_hd233220233237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233221233234_)))
                              (_tl233219233239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233221233234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233219233239_))
                              (let ((_e233224233242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233219233239_))))
                                (let ((_hd233223233245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233224233242_)))
                                      (_tl233222233247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233224233242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233222233247_))
                                      ((lambda (_L233250_)
                                         (let ((__tmp241295
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233250_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp241295)))
                                       _hd233223233245_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233216233229_ _g233217233232_)))))
                              (let ()
                                (declare (not safe))
                                (_g233216233229_ _g233217233232_)))))
                      (let ()
                        (declare (not safe))
                        (_g233216233229_ _g233217233232_))))))
          (declare (not safe))
          (_g233215233262_ _ann233214_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx233129_ _ann233130_)
        (let* ((_g233132233153_
                (lambda (_g233133233150_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233133233150_))))
               (_g233131233210_
                (lambda (_g233133233156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233133233156_))
                      (let ((_e233139233158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233133233156_))))
                        (let ((_hd233138233161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233139233158_)))
                              (_tl233137233163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233139233158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233137233163_))
                              (let ((_e233142233166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233137233163_))))
                                (let ((_hd233141233169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233142233166_)))
                                      (_tl233140233171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233142233166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233140233171_))
                                      (let ((_e233145233174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233140233171_))))
                                        (let ((_hd233144233177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233145233174_)))
                                              (_tl233143233179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233145233174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233143233179_))
                                              (let ((_e233148233182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233143233179_))))
                                                (let ((_hd233147233185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233148233182_)))
                                                      (_tl233146233187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233148233182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233146233187_))
                                                      ((lambda (_L233190_
                                                                _L233191_
                                                                _L233192_)
                                                         (let ((__tmp241298
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L233192_)))
                       (__tmp241297
                        (let () (declare (not safe)) (gx#stx-e _L233191_)))
                       (__tmp241296
                        (let () (declare (not safe)) (gx#stx-e _L233190_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp241298
                    __tmp241297
                    __tmp241296)))
               _hd233147233185_
               _hd233144233177_
               _hd233141233169_)
              (let ()
                (declare (not safe))
                (_g233132233153_ _g233133233156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233132233153_
                                                 _g233133233156_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233132233153_ _g233133233156_)))))
                              (let ()
                                (declare (not safe))
                                (_g233132233153_ _g233133233156_)))))
                      (let ()
                        (declare (not safe))
                        (_g233132233153_ _g233133233156_))))))
          (declare (not safe))
          (_g233131233210_ _ann233130_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx233045_ _ann233046_)
        (let* ((_g233048233069_
                (lambda (_g233049233066_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233049233066_))))
               (_g233047233126_
                (lambda (_g233049233072_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233049233072_))
                      (let ((_e233055233074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233049233072_))))
                        (let ((_hd233054233077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233055233074_)))
                              (_tl233053233079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233055233074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233053233079_))
                              (let ((_e233058233082_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233053233079_))))
                                (let ((_hd233057233085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233058233082_)))
                                      (_tl233056233087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233058233082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233056233087_))
                                      (let ((_e233061233090_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233056233087_))))
                                        (let ((_hd233060233093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233061233090_)))
                                              (_tl233059233095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233061233090_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233059233095_))
                                              (let ((_e233064233098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233059233095_))))
                                                (let ((_hd233063233101_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233064233098_)))
                                                      (_tl233062233103_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233064233098_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233062233103_))
                                                      ((lambda (_L233106_
                                                                _L233107_
                                                                _L233108_)
                                                         (let ((__tmp241301
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L233108_)))
                       (__tmp241300
                        (let () (declare (not safe)) (gx#stx-e _L233107_)))
                       (__tmp241299
                        (let () (declare (not safe)) (gx#stx-e _L233106_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp241301
                    __tmp241300
                    __tmp241299)))
               _hd233063233101_
               _hd233060233093_
               _hd233057233085_)
              (let ()
                (declare (not safe))
                (_g233048233069_ _g233049233072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233048233069_
                                                 _g233049233072_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233048233069_ _g233049233072_)))))
                              (let ()
                                (declare (not safe))
                                (_g233048233069_ _g233049233072_)))))
                      (let ()
                        (declare (not safe))
                        (_g233048233069_ _g233049233072_))))))
          (declare (not safe))
          (_g233047233126_ _ann233046_))))
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
      (lambda (_stx232165_)
        (let* ((___stx239582239583_ _stx232165_)
               (_g232171232367_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239582239583_)))))
          (let ((___kont239584239585_
                 (lambda (_L233033_)
                   (let ((__obj241252
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241252
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L233033_))
                      '#f)
                     __obj241252)))
                (___kont239586239587_
                 (lambda (_L232960_
                          _L232961_
                          _L232962_
                          _L232963_
                          _L232964_
                          _L232965_)
                   (let* ((_tab233015_
                           (let () (declare (not safe)) (gx#stx-e _L232962_)))
                          (_keys233017_
                           (if _tab233015_
                               (let ((__tmp241302 (vector->list _tab233015_)))
                                 (declare (not safe))
                                 (filter values __tmp241302))
                               '#f)))
                     (let ((__tmp241303
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L232961_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys233017_
                        __tmp241303)))))
                (___kont239588239589_
                 (lambda (_L232693_
                          _L232694_
                          _L232695_
                          _L232696_
                          _L232697_
                          _L232698_
                          _L232699_
                          _L232700_
                          _L232701_
                          _L232702_)
                   (let ((__tmp241305
                          (map gx#stx-e
                               (let ((__tmp241306
                                      (lambda (_g232795232798_ _g232796232800_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g232795232798_
                                                _g232796232800_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp241306 '() _L232695_))))
                         (__tmp241304
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L232699_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp241305
                      __tmp241304))))
                (___kont239592239593_
                 (lambda (_L232403_)
                   (let ((__obj241253
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241253
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232403_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L232403_)))
                     __obj241253)))
                (___kont239594239595_
                 (lambda (_L232380_)
                   (let ((__obj241254
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241254
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232380_))
                      '#f)
                     __obj241254))))
            (let* ((___match239901239902_
                    (lambda (_e232358232395_ _hd232357232398_ _tl232356232400_)
                      (let ((_L232403_ _tl232356232400_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L232403_))
                            (___kont239592239593_ _L232403_)
                            (___kont239594239595_ _tl232356232400_)))))
                   (___match239895239896_
                    (lambda (_e232252232417_
                             _hd232251232420_
                             _tl232250232422_
                             _e232255232425_
                             _hd232254232428_
                             _tl232253232430_
                             _e232258232433_
                             _hd232257232436_
                             _tl232256232438_
                             _e232261232441_
                             _hd232260232444_
                             _tl232259232446_
                             _e232264232449_
                             _hd232263232452_
                             _tl232262232454_
                             _e232267232457_
                             _hd232266232460_
                             _tl232265232462_
                             _e232270232465_
                             _hd232269232468_
                             _tl232268232470_
                             _e232273232473_
                             _hd232272232476_
                             _tl232271232478_
                             _e232276232481_
                             _hd232275232484_
                             _tl232274232486_
                             _e232279232489_
                             _hd232278232492_
                             _tl232277232494_
                             _e232282232497_
                             _hd232281232500_
                             _tl232280232502_
                             _e232285232505_
                             _hd232284232508_
                             _tl232283232510_
                             _e232288232513_
                             _hd232287232516_
                             _tl232286232518_
                             _e232291232521_
                             _hd232290232524_
                             _tl232289232526_
                             ___splice239590239591_
                             _target232292232529_
                             _tl232294232531_
                             _e232309232534_
                             _hd232308232537_
                             _tl232307232539_
                             _e232312232542_
                             _hd232311232545_
                             _tl232310232547_
                             _e232315232550_
                             _hd232314232553_
                             _tl232313232555_)
                      (letrec ((_loop232295232558_
                                (lambda (_hd232293232561_
                                         _-absent-value232299232563_
                                         _key232300232565_
                                         _-xkwvar232301232567_
                                         _-hash-ref232302232569_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232293232561_))
                                      (let ((_e232296232572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232293232561_))))
                                        (let ((_lp-tl232298232577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232296232572_)))
                                              (_lp-hd232297232575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232296232572_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd232297232575_))
                                              (let ((_e232318232580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd232297232575_))))
                                                (let ((_tl232316232585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232318232580_)))
                                                      (_hd232317232583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232318232580_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd232317232583_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd232317232583_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl232316232585_))
                      (let ((_e232321232588_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232316232585_))))
                        (let ((_tl232319232593_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232321232588_)))
                              (_hd232320232591_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232321232588_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd232320232591_))
                              (let ((_e232324232596_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd232320232591_))))
                                (let ((_tl232322232601_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232324232596_)))
                                      (_hd232323232599_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232324232596_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd232323232599_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd232323232599_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232322232601_))
                                              (let ((_e232327232604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232322232601_))))
                                                (let ((_tl232325232609_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232327232604_)))
                                                      (_hd232326232607_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232327232604_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232325232609_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232319232593_))
                                                          (let ((_e232330232612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232319232593_))))
                    (let ((_tl232328232617_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232330232612_)))
                          (_hd232329232615_
                           (let ()
                             (declare (not safe))
                             (##car _e232330232612_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232329232615_))
                          (let ((_e232333232620_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232329232615_))))
                            (let ((_tl232331232625_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232333232620_)))
                                  (_hd232332232623_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232333232620_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232332232623_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232332232623_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232331232625_))
                                          (let ((_e232336232628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232331232625_))))
                                            (let ((_tl232334232633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232336232628_)))
                                                  (_hd232335232631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232336232628_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232334232633_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232328232617_))
                                                      (let ((_e232339232636_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232328232617_))))
                (let ((_tl232337232641_
                       (let () (declare (not safe)) (##cdr _e232339232636_)))
                      (_hd232338232639_
                       (let () (declare (not safe)) (##car _e232339232636_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232338232639_))
                      (let ((_e232342232644_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232338232639_))))
                        (let ((_tl232340232649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232342232644_)))
                              (_hd232341232647_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232342232644_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232341232647_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd232341232647_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232340232649_))
                                      (let ((_e232345232652_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232340232649_))))
                                        (let ((_tl232343232657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232345232652_)))
                                              (_hd232344232655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232345232652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232343232657_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232337232641_))
                                                  (let ((_e232348232660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232337232641_))))
                                                    (let ((_tl232346232665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232348232660_)))
                                                          (_hd232347232663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232348232660_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232347232663_))
                                                          (let ((_e232351232668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232347232663_))))
                    (let ((_tl232349232673_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232351232668_)))
                          (_hd232350232671_
                           (let ()
                             (declare (not safe))
                             (##car _e232351232668_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232350232671_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232350232671_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232349232673_))
                                  (let ((_e232354232676_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232349232673_))))
                                    (let ((_tl232352232681_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232354232676_)))
                                          (_hd232353232679_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232354232676_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232352232681_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232346232665_))
                                              (let ((__tmp241321
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232353232679_
                                                             _-absent-value232299232563_)))
                                                    (__tmp241320
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232344232655_
                                                             _key232300232565_)))
                                                    (__tmp241319
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232335232631_
                                                             _-xkwvar232301232567_)))
                                                    (__tmp241318
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232326232607_
                                                             _-hash-ref232302232569_))))
                                                (declare (not safe))
                                                (_loop232295232558_
                                                 _lp-tl232298232577_
                                                 __tmp241321
                                                 __tmp241320
                                                 __tmp241319
                                                 __tmp241318))
                                              (___match239901239902_
                                               _e232252232417_
                                               _hd232251232420_
                                               _tl232250232422_))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))
                              (___match239901239902_
                               _e232252232417_
                               _hd232251232420_
                               _tl232250232422_))
                          (___match239901239902_
                           _e232252232417_
                           _hd232251232420_
                           _tl232250232422_))))
                  (___match239901239902_
                   _e232252232417_
                   _hd232251232420_
                   _tl232250232422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))
                                              (___match239901239902_
                                               _e232252232417_
                                               _hd232251232420_
                                               _tl232250232422_))))
                                      (___match239901239902_
                                       _e232252232417_
                                       _hd232251232420_
                                       _tl232250232422_))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))
                              (___match239901239902_
                               _e232252232417_
                               _hd232251232420_
                               _tl232250232422_))))
                      (___match239901239902_
                       _e232252232417_
                       _hd232251232420_
                       _tl232250232422_))))
              (___match239901239902_
               _e232252232417_
               _hd232251232420_
               _tl232250232422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))
                                      (___match239901239902_
                                       _e232252232417_
                                       _hd232251232420_
                                       _tl232250232422_))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))))
                          (___match239901239902_
                           _e232252232417_
                           _hd232251232420_
                           _tl232250232422_))))
                  (___match239901239902_
                   _e232252232417_
                   _hd232251232420_
                   _tl232250232422_))
              (___match239901239902_
               _e232252232417_
               _hd232251232420_
               _tl232250232422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239901239902_
                                               _e232252232417_
                                               _hd232251232420_
                                               _tl232250232422_))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))
                                      (___match239901239902_
                                       _e232252232417_
                                       _hd232251232420_
                                       _tl232250232422_))))
                              (___match239901239902_
                               _e232252232417_
                               _hd232251232420_
                               _tl232250232422_))))
                      (___match239901239902_
                       _e232252232417_
                       _hd232251232420_
                       _tl232250232422_))
                  (___match239901239902_
                   _e232252232417_
                   _hd232251232420_
                   _tl232250232422_))
              (___match239901239902_
               _e232252232417_
               _hd232251232420_
               _tl232250232422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239901239902_
                                               _e232252232417_
                                               _hd232251232420_
                                               _tl232250232422_))))
                                      (let ((_-hash-ref232306232690_
                                             (reverse _-hash-ref232302232569_))
                                            (_-xkwvar232305232688_
                                             (reverse _-xkwvar232301232567_))
                                            (_key232304232686_
                                             (reverse _key232300232565_))
                                            (_-absent-value232303232684_
                                             (reverse _-absent-value232299232563_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232259232446_))
                                            (let ((_L232693_ _hd232314232553_)
                                                  (_L232694_
                                                   _-absent-value232303232684_)
                                                  (_L232695_ _key232304232686_)
                                                  (_L232696_
                                                   _-xkwvar232305232688_)
                                                  (_L232697_
                                                   _-hash-ref232306232690_)
                                                  (_L232698_ _hd232290232524_)
                                                  (_L232699_ _hd232281232500_)
                                                  (_L232700_ _hd232272232476_)
                                                  (_L232701_ _tl232256232438_)
                                                  (_L232702_ _hd232257232436_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232702_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232701_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232700_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232702_
                                                          _L232698_))
                                                       (let ((__tmp241316
                                                              (let ((__tmp241317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232755232758_ _g232756232760_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232755232758_ _g232756232760_)))))
                        (declare (not safe))
                        (foldr1 __tmp241317 '() _L232695_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp241316))
               (let ((__tmp241315
                      (lambda (_g232762232764_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232762232764_
                           'hash-ref))))
                     (__tmp241313
                      (let ((__tmp241314
                             (lambda (_g232766232769_ _g232767232771_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232766232769_ _g232767232771_)))))
                        (declare (not safe))
                        (foldr1 __tmp241314 '() _L232697_))))
                 (declare (not safe))
                 (andmap1 __tmp241315 __tmp241313))
               (let ((__tmp241312
                      (lambda (_g232773232775_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232773232775_
                           'absent-value))))
                     (__tmp241310
                      (let ((__tmp241311
                             (lambda (_g232777232780_ _g232778232782_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232777232780_ _g232778232782_)))))
                        (declare (not safe))
                        (foldr1 __tmp241311 '() _L232694_))))
                 (declare (not safe))
                 (andmap1 __tmp241312 __tmp241310))
               (let ((__tmp241309
                      (lambda (_g232784232786_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232784232786_ _L232702_))))
                     (__tmp241307
                      (let ((__tmp241308
                             (lambda (_g232788232791_ _g232789232793_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232788232791_ _g232789232793_)))))
                        (declare (not safe))
                        (foldr1 __tmp241308 '() _L232696_))))
                 (declare (not safe))
                 (andmap1 __tmp241309 __tmp241307)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239588239589_
                                                   _L232693_
                                                   _L232694_
                                                   _L232695_
                                                   _L232696_
                                                   _L232697_
                                                   _L232698_
                                                   _L232699_
                                                   _L232700_
                                                   _L232701_
                                                   _L232702_)
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_)))
                                            (___match239901239902_
                                             _e232252232417_
                                             _hd232251232420_
                                             _tl232250232422_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232295232558_
                           _target232292232529_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239767239768_
                    (lambda (_e232252232417_
                             _hd232251232420_
                             _tl232250232422_
                             _e232255232425_
                             _hd232254232428_
                             _tl232253232430_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232254232428_))
                          (let ((_e232258232433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232254232428_))))
                            (let ((_tl232256232438_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232258232433_)))
                                  (_hd232257232436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232258232433_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232253232430_))
                                  (let ((_e232261232441_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232253232430_))))
                                    (let ((_tl232259232446_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232261232441_)))
                                          (_hd232260232444_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232261232441_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232260232444_))
                                          (let ((_e232264232449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232260232444_))))
                                            (let ((_tl232262232454_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232264232449_)))
                                                  (_hd232263232452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232264232449_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232263232452_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232263232452_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232262232454_))
                                                          (let ((_e232267232457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232262232454_))))
                    (let ((_tl232265232462_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232267232457_)))
                          (_hd232266232460_
                           (let ()
                             (declare (not safe))
                             (##car _e232267232457_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232266232460_))
                          (let ((_e232270232465_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232266232460_))))
                            (let ((_tl232268232470_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232270232465_)))
                                  (_hd232269232468_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232270232465_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232269232468_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232269232468_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232268232470_))
                                          (let ((_e232273232473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232268232470_))))
                                            (let ((_tl232271232478_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232273232473_)))
                                                  (_hd232272232476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232273232473_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232271232478_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232265232462_))
                                                      (let ((_e232276232481_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232265232462_))))
                (let ((_tl232274232486_
                       (let () (declare (not safe)) (##cdr _e232276232481_)))
                      (_hd232275232484_
                       (let () (declare (not safe)) (##car _e232276232481_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232275232484_))
                      (let ((_e232279232489_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232275232484_))))
                        (let ((_tl232277232494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232279232489_)))
                              (_hd232278232492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232279232489_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232278232492_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232278232492_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232277232494_))
                                      (let ((_e232282232497_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232277232494_))))
                                        (let ((_tl232280232502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232282232497_)))
                                              (_hd232281232500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232282232497_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232280232502_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232274232486_))
                                                  (let ((_e232285232505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232274232486_))))
                                                    (let ((_tl232283232510_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232285232505_)))
                                                          (_hd232284232508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232285232505_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232284232508_))
                                                          (let ((_e232288232513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232284232508_))))
                    (let ((_tl232286232518_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232288232513_)))
                          (_hd232287232516_
                           (let ()
                             (declare (not safe))
                             (##car _e232288232513_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232287232516_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232287232516_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232286232518_))
                                  (let ((_e232291232521_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232286232518_))))
                                    (let ((_tl232289232526_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232291232521_)))
                                          (_hd232290232524_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232291232521_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232289232526_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl232283232510_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl232283232510_))
                                                        '1)
                                                  (let ((___splice239590239591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl232283232510_
                                                            '1))))
                                                    (let ((_tl232294232531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239590239591_
                                                              '1)))
                                                          (_target232292232529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239590239591_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232294232531_))
                                                          (let ((_e232309232534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232294232531_))))
                    (let ((_tl232307232539_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232309232534_)))
                          (_hd232308232537_
                           (let ()
                             (declare (not safe))
                             (##car _e232309232534_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232308232537_))
                          (let ((_e232312232542_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232308232537_))))
                            (let ((_tl232310232547_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232312232542_)))
                                  (_hd232311232545_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232312232542_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232311232545_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232311232545_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232310232547_))
                                          (let ((_e232315232550_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232310232547_))))
                                            (let ((_tl232313232555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232315232550_)))
                                                  (_hd232314232553_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232315232550_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232313232555_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232307232539_))
                                                      (___match239895239896_
                                                       _e232252232417_
                                                       _hd232251232420_
                                                       _tl232250232422_
                                                       _e232255232425_
                                                       _hd232254232428_
                                                       _tl232253232430_
                                                       _e232258232433_
                                                       _hd232257232436_
                                                       _tl232256232438_
                                                       _e232261232441_
                                                       _hd232260232444_
                                                       _tl232259232446_
                                                       _e232264232449_
                                                       _hd232263232452_
                                                       _tl232262232454_
                                                       _e232267232457_
                                                       _hd232266232460_
                                                       _tl232265232462_
                                                       _e232270232465_
                                                       _hd232269232468_
                                                       _tl232268232470_
                                                       _e232273232473_
                                                       _hd232272232476_
                                                       _tl232271232478_
                                                       _e232276232481_
                                                       _hd232275232484_
                                                       _tl232274232486_
                                                       _e232279232489_
                                                       _hd232278232492_
                                                       _tl232277232494_
                                                       _e232282232497_
                                                       _hd232281232500_
                                                       _tl232280232502_
                                                       _e232285232505_
                                                       _hd232284232508_
                                                       _tl232283232510_
                                                       _e232288232513_
                                                       _hd232287232516_
                                                       _tl232286232518_
                                                       _e232291232521_
                                                       _hd232290232524_
                                                       _tl232289232526_
                                                       ___splice239590239591_
                                                       _target232292232529_
                                                       _tl232294232531_
                                                       _e232309232534_
                                                       _hd232308232537_
                                                       _tl232307232539_
                                                       _e232312232542_
                                                       _hd232311232545_
                                                       _tl232310232547_
                                                       _e232315232550_
                                                       _hd232314232553_
                                                       _tl232313232555_)
                                                      (___match239901239902_
                                                       _e232252232417_
                                                       _hd232251232420_
                                                       _tl232250232422_))
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))
                                      (___match239901239902_
                                       _e232252232417_
                                       _hd232251232420_
                                       _tl232250232422_))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))))
                          (___match239901239902_
                           _e232252232417_
                           _hd232251232420_
                           _tl232250232422_))))
                  (___match239901239902_
                   _e232252232417_
                   _hd232251232420_
                   _tl232250232422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))
                                              (___match239901239902_
                                               _e232252232417_
                                               _hd232251232420_
                                               _tl232250232422_))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))
                              (___match239901239902_
                               _e232252232417_
                               _hd232251232420_
                               _tl232250232422_))
                          (___match239901239902_
                           _e232252232417_
                           _hd232251232420_
                           _tl232250232422_))))
                  (___match239901239902_
                   _e232252232417_
                   _hd232251232420_
                   _tl232250232422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))
                                              (___match239901239902_
                                               _e232252232417_
                                               _hd232251232420_
                                               _tl232250232422_))))
                                      (___match239901239902_
                                       _e232252232417_
                                       _hd232251232420_
                                       _tl232250232422_))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))
                              (___match239901239902_
                               _e232252232417_
                               _hd232251232420_
                               _tl232250232422_))))
                      (___match239901239902_
                       _e232252232417_
                       _hd232251232420_
                       _tl232250232422_))))
              (___match239901239902_
               _e232252232417_
               _hd232251232420_
               _tl232250232422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))
                                      (___match239901239902_
                                       _e232252232417_
                                       _hd232251232420_
                                       _tl232250232422_))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))))
                          (___match239901239902_
                           _e232252232417_
                           _hd232251232420_
                           _tl232250232422_))))
                  (___match239901239902_
                   _e232252232417_
                   _hd232251232420_
                   _tl232250232422_))
              (___match239901239902_
               _e232252232417_
               _hd232251232420_
               _tl232250232422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239901239902_
                                                   _e232252232417_
                                                   _hd232251232420_
                                                   _tl232250232422_))))
                                          (___match239901239902_
                                           _e232252232417_
                                           _hd232251232420_
                                           _tl232250232422_))))
                                  (___match239901239902_
                                   _e232252232417_
                                   _hd232251232420_
                                   _tl232250232422_))))
                          (___match239901239902_
                           _e232252232417_
                           _hd232251232420_
                           _tl232250232422_))))
                   (___match239755239756_
                    (lambda (_e232185232808_
                             _hd232184232811_
                             _tl232183232813_
                             _e232188232816_
                             _hd232187232819_
                             _tl232186232821_
                             _e232191232824_
                             _hd232190232827_
                             _tl232189232829_
                             _e232194232832_
                             _hd232193232835_
                             _tl232192232837_
                             _e232197232840_
                             _hd232196232843_
                             _tl232195232845_
                             _e232200232848_
                             _hd232199232851_
                             _tl232198232853_
                             _e232203232856_
                             _hd232202232859_
                             _tl232201232861_
                             _e232206232864_
                             _hd232205232867_
                             _tl232204232869_
                             _e232209232872_
                             _hd232208232875_
                             _tl232207232877_
                             _e232212232880_
                             _hd232211232883_
                             _tl232210232885_
                             _e232215232888_
                             _hd232214232891_
                             _tl232213232893_
                             _e232218232896_
                             _hd232217232899_
                             _tl232216232901_
                             _e232221232904_
                             _hd232220232907_
                             _tl232219232909_
                             _e232224232912_
                             _hd232223232915_
                             _tl232222232917_
                             _e232227232920_
                             _hd232226232923_
                             _tl232225232925_
                             _e232230232928_
                             _hd232229232931_
                             _tl232228232933_
                             _e232233232936_
                             _hd232232232939_
                             _tl232231232941_
                             _e232236232944_
                             _hd232235232947_
                             _tl232234232949_
                             _e232239232952_
                             _hd232238232955_
                             _tl232237232957_)
                      (let ((_L232960_ _hd232238232955_)
                            (_L232961_ _hd232229232931_)
                            (_L232962_ _hd232220232907_)
                            (_L232963_ _hd232211232883_)
                            (_L232964_ _hd232202232859_)
                            (_L232965_ _hd232187232819_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232965_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232964_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232963_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232965_ _L232960_)))
                            (___kont239586239587_
                             _L232960_
                             _L232961_
                             _L232962_
                             _L232963_
                             _L232964_
                             _L232965_)
                            (___match239767239768_
                             _e232185232808_
                             _hd232184232811_
                             _tl232183232813_
                             _e232188232816_
                             _hd232187232819_
                             _tl232186232821_)))))
                   (___match239609239610_
                    (lambda (_e232185232808_ _hd232184232811_ _tl232183232813_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232183232813_))
                          (let ((_e232188232816_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232183232813_))))
                            (let ((_tl232186232821_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232188232816_)))
                                  (_hd232187232819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232188232816_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232186232821_))
                                  (let ((_e232191232824_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232186232821_))))
                                    (let ((_tl232189232829_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232191232824_)))
                                          (_hd232190232827_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232191232824_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232190232827_))
                                          (let ((_e232194232832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232190232827_))))
                                            (let ((_tl232192232837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232194232832_)))
                                                  (_hd232193232835_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232194232832_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232193232835_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232193232835_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232192232837_))
                                                          (let ((_e232197232840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232192232837_))))
                    (let ((_tl232195232845_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232197232840_)))
                          (_hd232196232843_
                           (let ()
                             (declare (not safe))
                             (##car _e232197232840_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232196232843_))
                          (let ((_e232200232848_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232196232843_))))
                            (let ((_tl232198232853_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232200232848_)))
                                  (_hd232199232851_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232200232848_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232199232851_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232199232851_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232198232853_))
                                          (let ((_e232203232856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232198232853_))))
                                            (let ((_tl232201232861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232203232856_)))
                                                  (_hd232202232859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232203232856_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232201232861_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232195232845_))
                                                      (let ((_e232206232864_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232195232845_))))
                (let ((_tl232204232869_
                       (let () (declare (not safe)) (##cdr _e232206232864_)))
                      (_hd232205232867_
                       (let () (declare (not safe)) (##car _e232206232864_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232205232867_))
                      (let ((_e232209232872_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232205232867_))))
                        (let ((_tl232207232877_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232209232872_)))
                              (_hd232208232875_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232209232872_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232208232875_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232208232875_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232207232877_))
                                      (let ((_e232212232880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232207232877_))))
                                        (let ((_tl232210232885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232212232880_)))
                                              (_hd232211232883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232212232880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232210232885_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232204232869_))
                                                  (let ((_e232215232888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232204232869_))))
                                                    (let ((_tl232213232893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232215232888_)))
                                                          (_hd232214232891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232215232888_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232214232891_))
                                                          (let ((_e232218232896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232214232891_))))
                    (let ((_tl232216232901_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232218232896_)))
                          (_hd232217232899_
                           (let ()
                             (declare (not safe))
                             (##car _e232218232896_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232217232899_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd232217232899_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232216232901_))
                                  (let ((_e232221232904_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232216232901_))))
                                    (let ((_tl232219232909_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232221232904_)))
                                          (_hd232220232907_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232221232904_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232219232909_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232213232893_))
                                              (let ((_e232224232912_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232213232893_))))
                                                (let ((_tl232222232917_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232224232912_)))
                                                      (_hd232223232915_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232224232912_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd232223232915_))
                                                      (let ((_e232227232920_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd232223232915_))))
                (let ((_tl232225232925_
                       (let () (declare (not safe)) (##cdr _e232227232920_)))
                      (_hd232226232923_
                       (let () (declare (not safe)) (##car _e232227232920_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd232226232923_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd232226232923_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232225232925_))
                              (let ((_e232230232928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232225232925_))))
                                (let ((_tl232228232933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232230232928_)))
                                      (_hd232229232931_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232230232928_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232228232933_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232222232917_))
                                          (let ((_e232233232936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232222232917_))))
                                            (let ((_tl232231232941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232233232936_)))
                                                  (_hd232232232939_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232233232936_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd232232232939_))
                                                  (let ((_e232236232944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd232232232939_))))
                                                    (let ((_tl232234232949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232236232944_)))
                                                          (_hd232235232947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232236232944_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd232235232947_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd232235232947_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232234232949_))
                          (let ((_e232239232952_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232234232949_))))
                            (let ((_tl232237232957_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232239232952_)))
                                  (_hd232238232955_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232239232952_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232237232957_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232231232941_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232189232829_))
                                          (___match239755239756_
                                           _e232185232808_
                                           _hd232184232811_
                                           _tl232183232813_
                                           _e232188232816_
                                           _hd232187232819_
                                           _tl232186232821_
                                           _e232191232824_
                                           _hd232190232827_
                                           _tl232189232829_
                                           _e232194232832_
                                           _hd232193232835_
                                           _tl232192232837_
                                           _e232197232840_
                                           _hd232196232843_
                                           _tl232195232845_
                                           _e232200232848_
                                           _hd232199232851_
                                           _tl232198232853_
                                           _e232203232856_
                                           _hd232202232859_
                                           _tl232201232861_
                                           _e232206232864_
                                           _hd232205232867_
                                           _tl232204232869_
                                           _e232209232872_
                                           _hd232208232875_
                                           _tl232207232877_
                                           _e232212232880_
                                           _hd232211232883_
                                           _tl232210232885_
                                           _e232215232888_
                                           _hd232214232891_
                                           _tl232213232893_
                                           _e232218232896_
                                           _hd232217232899_
                                           _tl232216232901_
                                           _e232221232904_
                                           _hd232220232907_
                                           _tl232219232909_
                                           _e232224232912_
                                           _hd232223232915_
                                           _tl232222232917_
                                           _e232227232920_
                                           _hd232226232923_
                                           _tl232225232925_
                                           _e232230232928_
                                           _hd232229232931_
                                           _tl232228232933_
                                           _e232233232936_
                                           _hd232232232939_
                                           _tl232231232941_
                                           _e232236232944_
                                           _hd232235232947_
                                           _tl232234232949_
                                           _e232239232952_
                                           _hd232238232955_
                                           _tl232237232957_)
                                          (___match239767239768_
                                           _e232185232808_
                                           _hd232184232811_
                                           _tl232183232813_
                                           _e232188232816_
                                           _hd232187232819_
                                           _tl232186232821_))
                                      (___match239767239768_
                                       _e232185232808_
                                       _hd232184232811_
                                       _tl232183232813_
                                       _e232188232816_
                                       _hd232187232819_
                                       _tl232186232821_))
                                  (___match239767239768_
                                   _e232185232808_
                                   _hd232184232811_
                                   _tl232183232813_
                                   _e232188232816_
                                   _hd232187232819_
                                   _tl232186232821_))))
                          (___match239767239768_
                           _e232185232808_
                           _hd232184232811_
                           _tl232183232813_
                           _e232188232816_
                           _hd232187232819_
                           _tl232186232821_))
                      (___match239767239768_
                       _e232185232808_
                       _hd232184232811_
                       _tl232183232813_
                       _e232188232816_
                       _hd232187232819_
                       _tl232186232821_))
                  (___match239767239768_
                   _e232185232808_
                   _hd232184232811_
                   _tl232183232813_
                   _e232188232816_
                   _hd232187232819_
                   _tl232186232821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239767239768_
                                                   _e232185232808_
                                                   _hd232184232811_
                                                   _tl232183232813_
                                                   _e232188232816_
                                                   _hd232187232819_
                                                   _tl232186232821_))))
                                          (___match239767239768_
                                           _e232185232808_
                                           _hd232184232811_
                                           _tl232183232813_
                                           _e232188232816_
                                           _hd232187232819_
                                           _tl232186232821_))
                                      (___match239767239768_
                                       _e232185232808_
                                       _hd232184232811_
                                       _tl232183232813_
                                       _e232188232816_
                                       _hd232187232819_
                                       _tl232186232821_))))
                              (___match239767239768_
                               _e232185232808_
                               _hd232184232811_
                               _tl232183232813_
                               _e232188232816_
                               _hd232187232819_
                               _tl232186232821_))
                          (___match239767239768_
                           _e232185232808_
                           _hd232184232811_
                           _tl232183232813_
                           _e232188232816_
                           _hd232187232819_
                           _tl232186232821_))
                      (___match239767239768_
                       _e232185232808_
                       _hd232184232811_
                       _tl232183232813_
                       _e232188232816_
                       _hd232187232819_
                       _tl232186232821_))))
              (___match239767239768_
               _e232185232808_
               _hd232184232811_
               _tl232183232813_
               _e232188232816_
               _hd232187232819_
               _tl232186232821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239767239768_
                                               _e232185232808_
                                               _hd232184232811_
                                               _tl232183232813_
                                               _e232188232816_
                                               _hd232187232819_
                                               _tl232186232821_))
                                          (___match239767239768_
                                           _e232185232808_
                                           _hd232184232811_
                                           _tl232183232813_
                                           _e232188232816_
                                           _hd232187232819_
                                           _tl232186232821_))))
                                  (___match239767239768_
                                   _e232185232808_
                                   _hd232184232811_
                                   _tl232183232813_
                                   _e232188232816_
                                   _hd232187232819_
                                   _tl232186232821_))
                              (___match239767239768_
                               _e232185232808_
                               _hd232184232811_
                               _tl232183232813_
                               _e232188232816_
                               _hd232187232819_
                               _tl232186232821_))
                          (___match239767239768_
                           _e232185232808_
                           _hd232184232811_
                           _tl232183232813_
                           _e232188232816_
                           _hd232187232819_
                           _tl232186232821_))))
                  (___match239767239768_
                   _e232185232808_
                   _hd232184232811_
                   _tl232183232813_
                   _e232188232816_
                   _hd232187232819_
                   _tl232186232821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239767239768_
                                                   _e232185232808_
                                                   _hd232184232811_
                                                   _tl232183232813_
                                                   _e232188232816_
                                                   _hd232187232819_
                                                   _tl232186232821_))
                                              (___match239767239768_
                                               _e232185232808_
                                               _hd232184232811_
                                               _tl232183232813_
                                               _e232188232816_
                                               _hd232187232819_
                                               _tl232186232821_))))
                                      (___match239767239768_
                                       _e232185232808_
                                       _hd232184232811_
                                       _tl232183232813_
                                       _e232188232816_
                                       _hd232187232819_
                                       _tl232186232821_))
                                  (___match239767239768_
                                   _e232185232808_
                                   _hd232184232811_
                                   _tl232183232813_
                                   _e232188232816_
                                   _hd232187232819_
                                   _tl232186232821_))
                              (___match239767239768_
                               _e232185232808_
                               _hd232184232811_
                               _tl232183232813_
                               _e232188232816_
                               _hd232187232819_
                               _tl232186232821_))))
                      (___match239767239768_
                       _e232185232808_
                       _hd232184232811_
                       _tl232183232813_
                       _e232188232816_
                       _hd232187232819_
                       _tl232186232821_))))
              (___match239767239768_
               _e232185232808_
               _hd232184232811_
               _tl232183232813_
               _e232188232816_
               _hd232187232819_
               _tl232186232821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239767239768_
                                                   _e232185232808_
                                                   _hd232184232811_
                                                   _tl232183232813_
                                                   _e232188232816_
                                                   _hd232187232819_
                                                   _tl232186232821_))))
                                          (___match239767239768_
                                           _e232185232808_
                                           _hd232184232811_
                                           _tl232183232813_
                                           _e232188232816_
                                           _hd232187232819_
                                           _tl232186232821_))
                                      (___match239767239768_
                                       _e232185232808_
                                       _hd232184232811_
                                       _tl232183232813_
                                       _e232188232816_
                                       _hd232187232819_
                                       _tl232186232821_))
                                  (___match239767239768_
                                   _e232185232808_
                                   _hd232184232811_
                                   _tl232183232813_
                                   _e232188232816_
                                   _hd232187232819_
                                   _tl232186232821_))))
                          (___match239767239768_
                           _e232185232808_
                           _hd232184232811_
                           _tl232183232813_
                           _e232188232816_
                           _hd232187232819_
                           _tl232186232821_))))
                  (___match239767239768_
                   _e232185232808_
                   _hd232184232811_
                   _tl232183232813_
                   _e232188232816_
                   _hd232187232819_
                   _tl232186232821_))
              (___match239767239768_
               _e232185232808_
               _hd232184232811_
               _tl232183232813_
               _e232188232816_
               _hd232187232819_
               _tl232186232821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239767239768_
                                                   _e232185232808_
                                                   _hd232184232811_
                                                   _tl232183232813_
                                                   _e232188232816_
                                                   _hd232187232819_
                                                   _tl232186232821_))))
                                          (___match239767239768_
                                           _e232185232808_
                                           _hd232184232811_
                                           _tl232183232813_
                                           _e232188232816_
                                           _hd232187232819_
                                           _tl232186232821_))))
                                  (___match239767239768_
                                   _e232185232808_
                                   _hd232184232811_
                                   _tl232183232813_
                                   _e232188232816_
                                   _hd232187232819_
                                   _tl232186232821_))))
                          (___match239901239902_
                           _e232185232808_
                           _hd232184232811_
                           _tl232183232813_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239582239583_))
                  (let ((_e232176233025_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239582239583_))))
                    (let ((_tl232174233030_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232176233025_)))
                          (_hd232175233028_
                           (let ()
                             (declare (not safe))
                             (##car _e232176233025_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L233033_ _tl232174233030_))
                            (___kont239584239585_ _L233033_))
                          (___match239609239610_
                           _e232176233025_
                           _hd232175233028_
                           _tl232174233030_))))
                  (let () (declare (not safe)) (_g232171232367_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx232120_)
        (letrec ((_clause-e232122_
                  (lambda (_form232163_)
                    (let ((__obj241255
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
                       __obj241255
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form232163_))
                       (if (let ((__tmp241322
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp241322))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form232163_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form232163_))
                               '#f)
                           '#f))
                      __obj241255))))
          (let* ((_g232124232134_
                  (lambda (_g232125232131_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g232125232131_))))
                 (_g232123232160_
                  (lambda (_g232125232137_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g232125232137_))
                        (let ((_e232129232139_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g232125232137_))))
                          (let ((_hd232128232142_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232129232139_)))
                                (_tl232127232144_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232129232139_))))
                            ((lambda (_L232147_)
                               (let ((_clauses232158_
                                      (map _clause-e232122_ _L232147_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses232158_)))
                             _tl232127232144_)))
                        (let ()
                          (declare (not safe))
                          (_g232124232134_ _g232125232137_))))))
            (declare (not safe))
            (_g232123232160_ _stx232120_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx232052_)
        (let* ((_g232054232071_
                (lambda (_g232055232068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232055232068_))))
               (_g232053232117_
                (lambda (_g232055232074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232055232074_))
                      (let ((_e232060232076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232055232074_))))
                        (let ((_hd232059232079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232060232076_)))
                              (_tl232058232081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232060232076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232058232081_))
                              (let ((_e232063232084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232058232081_))))
                                (let ((_hd232062232087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232063232084_)))
                                      (_tl232061232089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232063232084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232061232089_))
                                      (let ((_e232066232092_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232061232089_))))
                                        (let ((_hd232065232095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232066232092_)))
                                              (_tl232064232097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232066232092_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232064232097_))
                                              ((lambda (_L232100_ _L232101_)
                                                 (let ((__tmp241323
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L232100_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp241323
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd232065232095_
                                               _hd232062232087_)
                                              (let ()
                                                (declare (not safe))
                                                (_g232054232071_
                                                 _g232055232074_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232054232071_ _g232055232074_)))))
                              (let ()
                                (declare (not safe))
                                (_g232054232071_ _g232055232074_)))))
                      (let ()
                        (declare (not safe))
                        (_g232054232071_ _g232055232074_))))))
          (declare (not safe))
          (_g232053232117_ _stx232052_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231957_)
        (let* ((___stx239910239911_ _stx231957_)
               (_g231960231980_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239910239911_)))))
          (let ((___kont239912239913_
                 (lambda (_L232024_ _L232025_)
                   (let ((_type-e232042232044_
                          (let ((__tmp241324
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L232025_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp241324
                             '#f))))
                     (if _type-e232042232044_
                         (let ((_type-e232047_ _type-e232042232044_))
                           (_type-e232047_ _stx231957_ _L232024_))
                         '#f))))
                (___kont239914239915_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239910239911_))
                (let ((_e231966231992_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239910239911_))))
                  (let ((_tl231964231997_
                         (let () (declare (not safe)) (##cdr _e231966231992_)))
                        (_hd231965231995_
                         (let ()
                           (declare (not safe))
                           (##car _e231966231992_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231964231997_))
                        (let ((_e231969232000_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231964231997_))))
                          (let ((_tl231967232005_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231969232000_)))
                                (_hd231968232003_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231969232000_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231968232003_))
                                (let ((_e231972232008_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231968232003_))))
                                  (let ((_tl231970232013_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231972232008_)))
                                        (_hd231971232011_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231972232008_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231971232011_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231971232011_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231970232013_))
                                                (let ((_e231975232016_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231970232013_))))
                                                  (let ((_tl231973232021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231975232016_)))
                                                        (_hd231974232019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231975232016_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231973232021_))
                                                        (___kont239912239913_
                                                         _tl231967232005_
                                                         _hd231974232019_)
                                                        (___kont239914239915_))))
                                                (___kont239914239915_))
                                            (___kont239914239915_))
                                        (___kont239914239915_))))
                                (___kont239914239915_))))
                        (___kont239914239915_))))
                (___kont239914239915_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231906_)
        (let* ((_g231908231921_
                (lambda (_g231909231918_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231909231918_))))
               (_g231907231954_
                (lambda (_g231909231924_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231909231924_))
                      (let ((_e231913231926_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231909231924_))))
                        (let ((_hd231912231929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231913231926_)))
                              (_tl231911231931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231913231926_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231911231931_))
                              (let ((_e231916231934_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231911231931_))))
                                (let ((_hd231915231937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231916231934_)))
                                      (_tl231914231939_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231916231934_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231914231939_))
                                      ((lambda (_L231942_)
                                         (let ((__tmp241325
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231942_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp241325)))
                                       _hd231915231937_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231908231921_ _g231909231924_)))))
                              (let ()
                                (declare (not safe))
                                (_g231908231921_ _g231909231924_)))))
                      (let ()
                        (declare (not safe))
                        (_g231908231921_ _g231909231924_))))))
          (declare (not safe))
          (_g231907231954_ _stx231906_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form231140_)
        (let* ((___stx239948239949_ _form231140_)
               (_g231145231302_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239948239949_)))))
          (let ((___kont239950239951_
                 (lambda (_L231826_ _L231827_ _L231828_) '#t))
                (___kont239956239957_
                 (lambda (_L231614_
                          _L231615_
                          _L231616_
                          _L231617_
                          _L231618_
                          _L231619_)
                   '#t))
                (___kont239962239963_
                 (lambda (_L231410_ _L231411_ _L231412_ _L231413_) '#t))
                (___kont239964239965_ (lambda () '#f)))
            (let* ((___match240089240090_
                    (lambda (_e231264231314_
                             _hd231263231317_
                             _tl231262231319_
                             _e231267231322_
                             _hd231266231325_
                             _tl231265231327_
                             _e231270231330_
                             _hd231269231333_
                             _tl231268231335_
                             _e231273231338_
                             _hd231272231341_
                             _tl231271231343_
                             _e231276231346_
                             _hd231275231349_
                             _tl231274231351_
                             _e231279231354_
                             _hd231278231357_
                             _tl231277231359_
                             _e231282231362_
                             _hd231281231365_
                             _tl231280231367_
                             _e231285231370_
                             _hd231284231373_
                             _tl231283231375_
                             _e231288231378_
                             _hd231287231381_
                             _tl231286231383_
                             _e231291231386_
                             _hd231290231389_
                             _tl231289231391_
                             _e231294231394_
                             _hd231293231397_
                             _tl231292231399_
                             _e231297231402_
                             _hd231296231405_
                             _tl231295231407_)
                      (let ((_L231410_ _hd231296231405_)
                            (_L231411_ _hd231287231381_)
                            (_L231412_ _hd231278231357_)
                            (_L231413_ _hd231263231317_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L231413_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L231412_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L231413_ _L231410_))
                                 (let ((__tmp241326
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L231411_
                                           _L231413_))))
                                   (declare (not safe))
                                   (not __tmp241326)))
                            (___kont239962239963_
                             _L231410_
                             _L231411_
                             _L231412_
                             _L231413_)
                            (___kont239964239965_)))))
                   (___match240061240062_
                    (lambda (_e231264231314_
                             _hd231263231317_
                             _tl231262231319_
                             _e231267231322_
                             _hd231266231325_
                             _tl231265231327_
                             _e231270231330_
                             _hd231269231333_
                             _tl231268231335_
                             _e231273231338_
                             _hd231272231341_
                             _tl231271231343_
                             _e231276231346_
                             _hd231275231349_
                             _tl231274231351_
                             _e231279231354_
                             _hd231278231357_
                             _tl231277231359_
                             _e231282231362_
                             _hd231281231365_
                             _tl231280231367_
                             _e231285231370_
                             _hd231284231373_
                             _tl231283231375_
                             _e231288231378_
                             _hd231287231381_
                             _tl231286231383_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231280231367_))
                          (let ((_e231291231386_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231280231367_))))
                            (let ((_tl231289231391_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231291231386_)))
                                  (_hd231290231389_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231291231386_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231290231389_))
                                  (let ((_e231294231394_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231290231389_))))
                                    (let ((_tl231292231399_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231294231394_)))
                                          (_hd231293231397_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231294231394_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd231293231397_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd231293231397_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231292231399_))
                                                  (let ((_e231297231402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231292231399_))))
                                                    (let ((_tl231295231407_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231297231402_)))
                                                          (_hd231296231405_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231297231402_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231295231407_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231289231391_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231265231327_))
                          (___match240089240090_
                           _e231264231314_
                           _hd231263231317_
                           _tl231262231319_
                           _e231267231322_
                           _hd231266231325_
                           _tl231265231327_
                           _e231270231330_
                           _hd231269231333_
                           _tl231268231335_
                           _e231273231338_
                           _hd231272231341_
                           _tl231271231343_
                           _e231276231346_
                           _hd231275231349_
                           _tl231274231351_
                           _e231279231354_
                           _hd231278231357_
                           _tl231277231359_
                           _e231282231362_
                           _hd231281231365_
                           _tl231280231367_
                           _e231285231370_
                           _hd231284231373_
                           _tl231283231375_
                           _e231288231378_
                           _hd231287231381_
                           _tl231286231383_
                           _e231291231386_
                           _hd231290231389_
                           _tl231289231391_
                           _e231294231394_
                           _hd231293231397_
                           _tl231292231399_
                           _e231297231402_
                           _hd231296231405_
                           _tl231295231407_)
                          (___kont239964239965_))
                      (___kont239964239965_))
                  (___kont239964239965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239964239965_))
                                              (___kont239964239965_))
                                          (___kont239964239965_))))
                                  (___kont239964239965_))))
                          (___kont239964239965_))))
                   (___match239991239992_
                    (lambda (_e231200231454_
                             _hd231199231457_
                             _tl231198231459_
                             ___splice239958239959_
                             _target231201231462_
                             _tl231203231464_)
                      (letrec ((_loop231204231467_
                                (lambda (_hd231202231470_ _arg231208231472_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231202231470_))
                                      (let ((_e231205231475_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231202231470_))))
                                        (let ((_lp-tl231207231480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231205231475_)))
                                              (_lp-hd231206231478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231205231475_))))
                                          (let ((__tmp241341
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd231206231478_
                                                         _arg231208231472_))))
                                            (declare (not safe))
                                            (_loop231204231467_
                                             _lp-tl231207231480_
                                             __tmp241341))))
                                      (let ((_arg231209231483_
                                             (reverse _arg231208231472_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231198231459_))
                                            (let ((_e231212231486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231198231459_))))
                                              (let ((_tl231210231491_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231212231486_)))
                                                    (_hd231211231489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231212231486_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231211231489_))
                                                    (let ((_e231215231494_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231211231489_))))
                                                      (let ((_tl231213231499_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231215231494_)))
                    (_hd231214231497_
                     (let () (declare (not safe)) (##car _e231215231494_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231214231497_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231214231497_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231213231499_))
                            (let ((_e231218231502_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231213231499_))))
                              (let ((_tl231216231507_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231218231502_)))
                                    (_hd231217231505_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231218231502_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231217231505_))
                                    (let ((_e231221231510_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231217231505_))))
                                      (let ((_tl231219231515_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231221231510_)))
                                            (_hd231220231513_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231221231510_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231220231513_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231220231513_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231219231515_))
                                                    (let ((_e231224231518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231219231515_))))
                                                      (let ((_tl231222231523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231224231518_)))
                    (_hd231223231521_
                     (let () (declare (not safe)) (##car _e231224231518_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231222231523_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231216231507_))
                        (let ((_e231227231526_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231216231507_))))
                          (let ((_tl231225231531_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231227231526_)))
                                (_hd231226231529_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231227231526_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231226231529_))
                                (let ((_e231230231534_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231226231529_))))
                                  (let ((_tl231228231539_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231230231534_)))
                                        (_hd231229231537_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231230231534_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231229231537_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231229231537_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231228231539_))
                                                (let ((_e231233231542_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231228231539_))))
                                                  (let ((_tl231231231547_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231233231542_)))
                                                        (_hd231232231545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231233231542_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231231231547_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl231225231531_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl231225231531_))
                              '1)
                        (let ((___splice239960239961_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231225231531_
                                  '1))))
                          (let ((_tl231236231552_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239960239961_ '1)))
                                (_target231234231550_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239960239961_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231236231552_))
                                (let ((_e231245231555_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231236231552_))))
                                  (let ((_tl231243231560_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231245231555_)))
                                        (_hd231244231558_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231245231555_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231244231558_))
                                        (let ((_e231248231563_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231244231558_))))
                                          (let ((_tl231246231568_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231248231563_)))
                                                (_hd231247231566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231248231563_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd231247231566_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd231247231566_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231246231568_))
                                                        (let ((_e231251231571_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231246231568_))))
                  (let ((_tl231249231576_
                         (let () (declare (not safe)) (##cdr _e231251231571_)))
                        (_hd231250231574_
                         (let ()
                           (declare (not safe))
                           (##car _e231251231571_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231249231576_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl231243231560_))
                            (letrec ((_loop231237231579_
                                      (lambda (_hd231235231582_
                                               _xarg231241231584_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd231235231582_))
                                            (let ((_e231238231587_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd231235231582_))))
                                              (let ((_lp-tl231240231592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231238231587_)))
                                                    (_lp-hd231239231590_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231238231587_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd231239231590_))
                                                    (let ((_e231254231595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd231239231590_))))
                                                      (let ((_tl231252231600_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231254231595_)))
                    (_hd231253231598_
                     (let () (declare (not safe)) (##car _e231254231595_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231253231598_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231253231598_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231252231600_))
                            (let ((_e231257231603_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231252231600_))))
                              (let ((_tl231255231608_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231257231603_)))
                                    (_hd231256231606_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231257231603_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231255231608_))
                                    (let ((__tmp241340
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd231256231606_
                                                   _xarg231241231584_))))
                                      (declare (not safe))
                                      (_loop231237231579_
                                       _lp-tl231240231592_
                                       __tmp241340))
                                    (___match240061240062_
                                     _e231200231454_
                                     _hd231199231457_
                                     _tl231198231459_
                                     _e231212231486_
                                     _hd231211231489_
                                     _tl231210231491_
                                     _e231215231494_
                                     _hd231214231497_
                                     _tl231213231499_
                                     _e231218231502_
                                     _hd231217231505_
                                     _tl231216231507_
                                     _e231221231510_
                                     _hd231220231513_
                                     _tl231219231515_
                                     _e231224231518_
                                     _hd231223231521_
                                     _tl231222231523_
                                     _e231227231526_
                                     _hd231226231529_
                                     _tl231225231531_
                                     _e231230231534_
                                     _hd231229231537_
                                     _tl231228231539_
                                     _e231233231542_
                                     _hd231232231545_
                                     _tl231231231547_))))
                            (___match240061240062_
                             _e231200231454_
                             _hd231199231457_
                             _tl231198231459_
                             _e231212231486_
                             _hd231211231489_
                             _tl231210231491_
                             _e231215231494_
                             _hd231214231497_
                             _tl231213231499_
                             _e231218231502_
                             _hd231217231505_
                             _tl231216231507_
                             _e231221231510_
                             _hd231220231513_
                             _tl231219231515_
                             _e231224231518_
                             _hd231223231521_
                             _tl231222231523_
                             _e231227231526_
                             _hd231226231529_
                             _tl231225231531_
                             _e231230231534_
                             _hd231229231537_
                             _tl231228231539_
                             _e231233231542_
                             _hd231232231545_
                             _tl231231231547_))
                        (___match240061240062_
                         _e231200231454_
                         _hd231199231457_
                         _tl231198231459_
                         _e231212231486_
                         _hd231211231489_
                         _tl231210231491_
                         _e231215231494_
                         _hd231214231497_
                         _tl231213231499_
                         _e231218231502_
                         _hd231217231505_
                         _tl231216231507_
                         _e231221231510_
                         _hd231220231513_
                         _tl231219231515_
                         _e231224231518_
                         _hd231223231521_
                         _tl231222231523_
                         _e231227231526_
                         _hd231226231529_
                         _tl231225231531_
                         _e231230231534_
                         _hd231229231537_
                         _tl231228231539_
                         _e231233231542_
                         _hd231232231545_
                         _tl231231231547_))
                    (___match240061240062_
                     _e231200231454_
                     _hd231199231457_
                     _tl231198231459_
                     _e231212231486_
                     _hd231211231489_
                     _tl231210231491_
                     _e231215231494_
                     _hd231214231497_
                     _tl231213231499_
                     _e231218231502_
                     _hd231217231505_
                     _tl231216231507_
                     _e231221231510_
                     _hd231220231513_
                     _tl231219231515_
                     _e231224231518_
                     _hd231223231521_
                     _tl231222231523_
                     _e231227231526_
                     _hd231226231529_
                     _tl231225231531_
                     _e231230231534_
                     _hd231229231537_
                     _tl231228231539_
                     _e231233231542_
                     _hd231232231545_
                     _tl231231231547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240061240062_
                                                     _e231200231454_
                                                     _hd231199231457_
                                                     _tl231198231459_
                                                     _e231212231486_
                                                     _hd231211231489_
                                                     _tl231210231491_
                                                     _e231215231494_
                                                     _hd231214231497_
                                                     _tl231213231499_
                                                     _e231218231502_
                                                     _hd231217231505_
                                                     _tl231216231507_
                                                     _e231221231510_
                                                     _hd231220231513_
                                                     _tl231219231515_
                                                     _e231224231518_
                                                     _hd231223231521_
                                                     _tl231222231523_
                                                     _e231227231526_
                                                     _hd231226231529_
                                                     _tl231225231531_
                                                     _e231230231534_
                                                     _hd231229231537_
                                                     _tl231228231539_
                                                     _e231233231542_
                                                     _hd231232231545_
                                                     _tl231231231547_))))
                                            (let ((_xarg231242231611_
                                                   (reverse _xarg231241231584_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231210231491_))
                                                  (let ((_L231614_
                                                         _hd231250231574_)
                                                        (_L231615_
                                                         _xarg231242231611_)
                                                        (_L231616_
                                                         _hd231232231545_)
                                                        (_L231617_
                                                         _hd231223231521_)
                                                        (_L231618_
                                                         _tl231203231464_)
                                                        (_L231619_
                                                         _arg231209231483_))
                                                    (if (and (let ((__tmp241338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241339
                                   (lambda (_g231662231665_ _g231663231667_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231662231665_
                                             _g231663231667_)))))
                              (declare (not safe))
                              (foldr1 __tmp241339 '() _L231619_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp241338))
                     (let () (declare (not safe)) (gx#identifier? _L231618_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231617_ 'apply))
                     (fx= (length (let ((__tmp241336
                                         (lambda (_g231669231672_
                                                  _g231670231674_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231669231672_
                                                   _g231670231674_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241336 '() _L231619_)))
                          (length (let ((__tmp241337
                                         (lambda (_g231676231679_
                                                  _g231677231681_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231676231679_
                                                   _g231677231681_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241337 '() _L231615_))))
                     (let ((__tmp241334
                            (let ((__tmp241335
                                   (lambda (_g231683231686_ _g231684231688_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231683231686_
                                             _g231684231688_)))))
                              (declare (not safe))
                              (foldr1 __tmp241335 '() _L231619_)))
                           (__tmp241332
                            (let ((__tmp241333
                                   (lambda (_g231690231693_ _g231691231695_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231690231693_
                                             _g231691231695_)))))
                              (declare (not safe))
                              (foldr1 __tmp241333 '() _L231615_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp241334 __tmp241332))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231618_ _L231614_))
                     (let ((__tmp241327
                            (let ((__tmp241331
                                   (lambda (_g231697231699_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231697231699_
                                        _L231616_))))
                                  (__tmp241328
                                   (let ((__tmp241330
                                          (lambda (_g231701231704_
                                                   _g231702231706_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231701231704_
                                                    _g231702231706_))))
                                         (__tmp241329
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231618_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp241330
                                             __tmp241329
                                             _L231619_))))
                              (declare (not safe))
                              (find __tmp241331 __tmp241328))))
                       (declare (not safe))
                       (not __tmp241327)))
                (___kont239956239957_
                 _L231614_
                 _L231615_
                 _L231616_
                 _L231617_
                 _L231618_
                 _L231619_)
                (___match240061240062_
                 _e231200231454_
                 _hd231199231457_
                 _tl231198231459_
                 _e231212231486_
                 _hd231211231489_
                 _tl231210231491_
                 _e231215231494_
                 _hd231214231497_
                 _tl231213231499_
                 _e231218231502_
                 _hd231217231505_
                 _tl231216231507_
                 _e231221231510_
                 _hd231220231513_
                 _tl231219231515_
                 _e231224231518_
                 _hd231223231521_
                 _tl231222231523_
                 _e231227231526_
                 _hd231226231529_
                 _tl231225231531_
                 _e231230231534_
                 _hd231229231537_
                 _tl231228231539_
                 _e231233231542_
                 _hd231232231545_
                 _tl231231231547_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240061240062_
                                                   _e231200231454_
                                                   _hd231199231457_
                                                   _tl231198231459_
                                                   _e231212231486_
                                                   _hd231211231489_
                                                   _tl231210231491_
                                                   _e231215231494_
                                                   _hd231214231497_
                                                   _tl231213231499_
                                                   _e231218231502_
                                                   _hd231217231505_
                                                   _tl231216231507_
                                                   _e231221231510_
                                                   _hd231220231513_
                                                   _tl231219231515_
                                                   _e231224231518_
                                                   _hd231223231521_
                                                   _tl231222231523_
                                                   _e231227231526_
                                                   _hd231226231529_
                                                   _tl231225231531_
                                                   _e231230231534_
                                                   _hd231229231537_
                                                   _tl231228231539_
                                                   _e231233231542_
                                                   _hd231232231545_
                                                   _tl231231231547_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop231237231579_ _target231234231550_ '())))
                            (___match240061240062_
                             _e231200231454_
                             _hd231199231457_
                             _tl231198231459_
                             _e231212231486_
                             _hd231211231489_
                             _tl231210231491_
                             _e231215231494_
                             _hd231214231497_
                             _tl231213231499_
                             _e231218231502_
                             _hd231217231505_
                             _tl231216231507_
                             _e231221231510_
                             _hd231220231513_
                             _tl231219231515_
                             _e231224231518_
                             _hd231223231521_
                             _tl231222231523_
                             _e231227231526_
                             _hd231226231529_
                             _tl231225231531_
                             _e231230231534_
                             _hd231229231537_
                             _tl231228231539_
                             _e231233231542_
                             _hd231232231545_
                             _tl231231231547_))
                        (___match240061240062_
                         _e231200231454_
                         _hd231199231457_
                         _tl231198231459_
                         _e231212231486_
                         _hd231211231489_
                         _tl231210231491_
                         _e231215231494_
                         _hd231214231497_
                         _tl231213231499_
                         _e231218231502_
                         _hd231217231505_
                         _tl231216231507_
                         _e231221231510_
                         _hd231220231513_
                         _tl231219231515_
                         _e231224231518_
                         _hd231223231521_
                         _tl231222231523_
                         _e231227231526_
                         _hd231226231529_
                         _tl231225231531_
                         _e231230231534_
                         _hd231229231537_
                         _tl231228231539_
                         _e231233231542_
                         _hd231232231545_
                         _tl231231231547_))))
                (___match240061240062_
                 _e231200231454_
                 _hd231199231457_
                 _tl231198231459_
                 _e231212231486_
                 _hd231211231489_
                 _tl231210231491_
                 _e231215231494_
                 _hd231214231497_
                 _tl231213231499_
                 _e231218231502_
                 _hd231217231505_
                 _tl231216231507_
                 _e231221231510_
                 _hd231220231513_
                 _tl231219231515_
                 _e231224231518_
                 _hd231223231521_
                 _tl231222231523_
                 _e231227231526_
                 _hd231226231529_
                 _tl231225231531_
                 _e231230231534_
                 _hd231229231537_
                 _tl231228231539_
                 _e231233231542_
                 _hd231232231545_
                 _tl231231231547_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240061240062_
                                                     _e231200231454_
                                                     _hd231199231457_
                                                     _tl231198231459_
                                                     _e231212231486_
                                                     _hd231211231489_
                                                     _tl231210231491_
                                                     _e231215231494_
                                                     _hd231214231497_
                                                     _tl231213231499_
                                                     _e231218231502_
                                                     _hd231217231505_
                                                     _tl231216231507_
                                                     _e231221231510_
                                                     _hd231220231513_
                                                     _tl231219231515_
                                                     _e231224231518_
                                                     _hd231223231521_
                                                     _tl231222231523_
                                                     _e231227231526_
                                                     _hd231226231529_
                                                     _tl231225231531_
                                                     _e231230231534_
                                                     _hd231229231537_
                                                     _tl231228231539_
                                                     _e231233231542_
                                                     _hd231232231545_
                                                     _tl231231231547_))
                                                (___match240061240062_
                                                 _e231200231454_
                                                 _hd231199231457_
                                                 _tl231198231459_
                                                 _e231212231486_
                                                 _hd231211231489_
                                                 _tl231210231491_
                                                 _e231215231494_
                                                 _hd231214231497_
                                                 _tl231213231499_
                                                 _e231218231502_
                                                 _hd231217231505_
                                                 _tl231216231507_
                                                 _e231221231510_
                                                 _hd231220231513_
                                                 _tl231219231515_
                                                 _e231224231518_
                                                 _hd231223231521_
                                                 _tl231222231523_
                                                 _e231227231526_
                                                 _hd231226231529_
                                                 _tl231225231531_
                                                 _e231230231534_
                                                 _hd231229231537_
                                                 _tl231228231539_
                                                 _e231233231542_
                                                 _hd231232231545_
                                                 _tl231231231547_))))
                                        (___match240061240062_
                                         _e231200231454_
                                         _hd231199231457_
                                         _tl231198231459_
                                         _e231212231486_
                                         _hd231211231489_
                                         _tl231210231491_
                                         _e231215231494_
                                         _hd231214231497_
                                         _tl231213231499_
                                         _e231218231502_
                                         _hd231217231505_
                                         _tl231216231507_
                                         _e231221231510_
                                         _hd231220231513_
                                         _tl231219231515_
                                         _e231224231518_
                                         _hd231223231521_
                                         _tl231222231523_
                                         _e231227231526_
                                         _hd231226231529_
                                         _tl231225231531_
                                         _e231230231534_
                                         _hd231229231537_
                                         _tl231228231539_
                                         _e231233231542_
                                         _hd231232231545_
                                         _tl231231231547_))))
                                (___match240061240062_
                                 _e231200231454_
                                 _hd231199231457_
                                 _tl231198231459_
                                 _e231212231486_
                                 _hd231211231489_
                                 _tl231210231491_
                                 _e231215231494_
                                 _hd231214231497_
                                 _tl231213231499_
                                 _e231218231502_
                                 _hd231217231505_
                                 _tl231216231507_
                                 _e231221231510_
                                 _hd231220231513_
                                 _tl231219231515_
                                 _e231224231518_
                                 _hd231223231521_
                                 _tl231222231523_
                                 _e231227231526_
                                 _hd231226231529_
                                 _tl231225231531_
                                 _e231230231534_
                                 _hd231229231537_
                                 _tl231228231539_
                                 _e231233231542_
                                 _hd231232231545_
                                 _tl231231231547_))))
                        (___match240061240062_
                         _e231200231454_
                         _hd231199231457_
                         _tl231198231459_
                         _e231212231486_
                         _hd231211231489_
                         _tl231210231491_
                         _e231215231494_
                         _hd231214231497_
                         _tl231213231499_
                         _e231218231502_
                         _hd231217231505_
                         _tl231216231507_
                         _e231221231510_
                         _hd231220231513_
                         _tl231219231515_
                         _e231224231518_
                         _hd231223231521_
                         _tl231222231523_
                         _e231227231526_
                         _hd231226231529_
                         _tl231225231531_
                         _e231230231534_
                         _hd231229231537_
                         _tl231228231539_
                         _e231233231542_
                         _hd231232231545_
                         _tl231231231547_))
                    (___match240061240062_
                     _e231200231454_
                     _hd231199231457_
                     _tl231198231459_
                     _e231212231486_
                     _hd231211231489_
                     _tl231210231491_
                     _e231215231494_
                     _hd231214231497_
                     _tl231213231499_
                     _e231218231502_
                     _hd231217231505_
                     _tl231216231507_
                     _e231221231510_
                     _hd231220231513_
                     _tl231219231515_
                     _e231224231518_
                     _hd231223231521_
                     _tl231222231523_
                     _e231227231526_
                     _hd231226231529_
                     _tl231225231531_
                     _e231230231534_
                     _hd231229231537_
                     _tl231228231539_
                     _e231233231542_
                     _hd231232231545_
                     _tl231231231547_))
                (___kont239964239965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239964239965_))
                                            (___kont239964239965_))
                                        (___kont239964239965_))))
                                (___kont239964239965_))))
                        (___kont239964239965_))
                    (___kont239964239965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239964239965_))
                                                (___kont239964239965_))
                                            (___kont239964239965_))))
                                    (___kont239964239965_))))
                            (___kont239964239965_))
                        (___kont239964239965_))
                    (___kont239964239965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239964239965_))))
                                            (___kont239964239965_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231204231467_ _target231201231462_ '())))))
                   (___match239979239980_
                    (lambda (_e231152231714_
                             _hd231151231717_
                             _tl231150231719_
                             ___splice239952239953_
                             _target231153231722_
                             _tl231155231724_)
                      (letrec ((_loop231156231727_
                                (lambda (_hd231154231730_ _arg231160231732_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231154231730_))
                                      (let ((_e231157231735_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231154231730_))))
                                        (let ((_lp-tl231159231740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231157231735_)))
                                              (_lp-hd231158231738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231157231735_))))
                                          (let ((__tmp241355
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd231158231738_
                                                         _arg231160231732_))))
                                            (declare (not safe))
                                            (_loop231156231727_
                                             _lp-tl231159231740_
                                             __tmp241355))))
                                      (let ((_arg231161231743_
                                             (reverse _arg231160231732_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231150231719_))
                                            (let ((_e231164231746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231150231719_))))
                                              (let ((_tl231162231751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231164231746_)))
                                                    (_hd231163231749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231164231746_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231163231749_))
                                                    (let ((_e231167231754_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231163231749_))))
                                                      (let ((_tl231165231759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231167231754_)))
                    (_hd231166231757_
                     (let () (declare (not safe)) (##car _e231167231754_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231166231757_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231166231757_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231165231759_))
                            (let ((_e231170231762_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231165231759_))))
                              (let ((_tl231168231767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231170231762_)))
                                    (_hd231169231765_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231170231762_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231169231765_))
                                    (let ((_e231173231770_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231169231765_))))
                                      (let ((_tl231171231775_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231173231770_)))
                                            (_hd231172231773_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231173231770_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231172231773_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231172231773_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231171231775_))
                                                    (let ((_e231176231778_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231171231775_))))
                                                      (let ((_tl231174231783_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231176231778_)))
                    (_hd231175231781_
                     (let () (declare (not safe)) (##car _e231176231778_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231174231783_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl231168231767_))
                        (let ((___splice239954239955_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231168231767_
                                  '0))))
                          (let ((_tl231179231788_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239954239955_ '1)))
                                (_target231177231786_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239954239955_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231179231788_))
                                (letrec ((_loop231180231791_
                                          (lambda (_hd231178231794_
                                                   _xarg231184231796_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231178231794_))
                                                (let ((_e231181231799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231178231794_))))
                                                  (let ((_lp-tl231183231804_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231181231799_)))
                                                        (_lp-hd231182231802_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231181231799_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd231182231802_))
                                                        (let ((_e231188231807_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd231182231802_))))
                  (let ((_tl231186231812_
                         (let () (declare (not safe)) (##cdr _e231188231807_)))
                        (_hd231187231810_
                         (let ()
                           (declare (not safe))
                           (##car _e231188231807_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231187231810_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231187231810_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231186231812_))
                                (let ((_e231191231815_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231186231812_))))
                                  (let ((_tl231189231820_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231191231815_)))
                                        (_hd231190231818_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231191231815_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231189231820_))
                                        (let ((__tmp241354
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd231190231818_
                                                       _xarg231184231796_))))
                                          (declare (not safe))
                                          (_loop231180231791_
                                           _lp-tl231183231804_
                                           __tmp241354))
                                        (___match239991239992_
                                         _e231152231714_
                                         _hd231151231717_
                                         _tl231150231719_
                                         ___splice239952239953_
                                         _target231153231722_
                                         _tl231155231724_))))
                                (___match239991239992_
                                 _e231152231714_
                                 _hd231151231717_
                                 _tl231150231719_
                                 ___splice239952239953_
                                 _target231153231722_
                                 _tl231155231724_))
                            (___match239991239992_
                             _e231152231714_
                             _hd231151231717_
                             _tl231150231719_
                             ___splice239952239953_
                             _target231153231722_
                             _tl231155231724_))
                        (___match239991239992_
                         _e231152231714_
                         _hd231151231717_
                         _tl231150231719_
                         ___splice239952239953_
                         _target231153231722_
                         _tl231155231724_))))
                (___match239991239992_
                 _e231152231714_
                 _hd231151231717_
                 _tl231150231719_
                 ___splice239952239953_
                 _target231153231722_
                 _tl231155231724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg231185231823_
                                                       (reverse _xarg231184231796_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231162231751_))
                                                      (let ((_L231826_
                                                             _xarg231185231823_)
                                                            (_L231827_
                                                             _hd231175231781_)
                                                            (_L231828_
                                                             _arg231161231743_))
                                                        (if (and (let ((__tmp241352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp241353
                                       (lambda (_g231856231859_
                                                _g231857231861_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231856231859_
                                                 _g231857231861_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241353 '() _L231828_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp241352))
                         (fx= (length (let ((__tmp241350
                                             (lambda (_g231863231866_
                                                      _g231864231868_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231863231866_
                                                       _g231864231868_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241350 '() _L231828_)))
                              (length (let ((__tmp241351
                                             (lambda (_g231870231873_
                                                      _g231871231875_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231870231873_
                                                       _g231871231875_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241351 '() _L231826_))))
                         (let ((__tmp241348
                                (let ((__tmp241349
                                       (lambda (_g231877231880_
                                                _g231878231882_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231877231880_
                                                 _g231878231882_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241349 '() _L231828_)))
                               (__tmp241346
                                (let ((__tmp241347
                                       (lambda (_g231884231887_
                                                _g231885231889_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231884231887_
                                                 _g231885231889_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241347 '() _L231826_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp241348
                                    __tmp241346))
                         (let ((__tmp241342
                                (let ((__tmp241345
                                       (lambda (_g231891231893_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231891231893_
                                            _L231827_))))
                                      (__tmp241343
                                       (let ((__tmp241344
                                              (lambda (_g231895231898_
                                                       _g231896231900_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231895231898_
                                                        _g231896231900_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp241344 '() _L231828_))))
                                  (declare (not safe))
                                  (find __tmp241345 __tmp241343))))
                           (declare (not safe))
                           (not __tmp241342)))
                    (___kont239950239951_ _L231826_ _L231827_ _L231828_)
                    (___match239991239992_
                     _e231152231714_
                     _hd231151231717_
                     _tl231150231719_
                     ___splice239952239953_
                     _target231153231722_
                     _tl231155231724_)))
              (___match239991239992_
               _e231152231714_
               _hd231151231717_
               _tl231150231719_
               ___splice239952239953_
               _target231153231722_
               _tl231155231724_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop231180231791_
                                     _target231177231786_
                                     '())))
                                (___match239991239992_
                                 _e231152231714_
                                 _hd231151231717_
                                 _tl231150231719_
                                 ___splice239952239953_
                                 _target231153231722_
                                 _tl231155231724_))))
                        (___match239991239992_
                         _e231152231714_
                         _hd231151231717_
                         _tl231150231719_
                         ___splice239952239953_
                         _target231153231722_
                         _tl231155231724_))
                    (___match239991239992_
                     _e231152231714_
                     _hd231151231717_
                     _tl231150231719_
                     ___splice239952239953_
                     _target231153231722_
                     _tl231155231724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239991239992_
                                                     _e231152231714_
                                                     _hd231151231717_
                                                     _tl231150231719_
                                                     ___splice239952239953_
                                                     _target231153231722_
                                                     _tl231155231724_))
                                                (___match239991239992_
                                                 _e231152231714_
                                                 _hd231151231717_
                                                 _tl231150231719_
                                                 ___splice239952239953_
                                                 _target231153231722_
                                                 _tl231155231724_))
                                            (___match239991239992_
                                             _e231152231714_
                                             _hd231151231717_
                                             _tl231150231719_
                                             ___splice239952239953_
                                             _target231153231722_
                                             _tl231155231724_))))
                                    (___match239991239992_
                                     _e231152231714_
                                     _hd231151231717_
                                     _tl231150231719_
                                     ___splice239952239953_
                                     _target231153231722_
                                     _tl231155231724_))))
                            (___match239991239992_
                             _e231152231714_
                             _hd231151231717_
                             _tl231150231719_
                             ___splice239952239953_
                             _target231153231722_
                             _tl231155231724_))
                        (___match239991239992_
                         _e231152231714_
                         _hd231151231717_
                         _tl231150231719_
                         ___splice239952239953_
                         _target231153231722_
                         _tl231155231724_))
                    (___match239991239992_
                     _e231152231714_
                     _hd231151231717_
                     _tl231150231719_
                     ___splice239952239953_
                     _target231153231722_
                     _tl231155231724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239991239992_
                                                     _e231152231714_
                                                     _hd231151231717_
                                                     _tl231150231719_
                                                     ___splice239952239953_
                                                     _target231153231722_
                                                     _tl231155231724_))))
                                            (___match239991239992_
                                             _e231152231714_
                                             _hd231151231717_
                                             _tl231150231719_
                                             ___splice239952239953_
                                             _target231153231722_
                                             _tl231155231724_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231156231727_ _target231153231722_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239948239949_))
                  (let ((_e231152231714_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239948239949_))))
                    (let ((_tl231150231719_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231152231714_)))
                          (_hd231151231717_
                           (let ()
                             (declare (not safe))
                             (##car _e231152231714_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd231151231717_))
                          (let ((___splice239952239953_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd231151231717_
                                    '0))))
                            (let ((_tl231155231724_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239952239953_ '1)))
                                  (_target231153231722_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239952239953_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231155231724_))
                                  (___match239979239980_
                                   _e231152231714_
                                   _hd231151231717_
                                   _tl231150231719_
                                   ___splice239952239953_
                                   _target231153231722_
                                   _tl231155231724_)
                                  (___match239991239992_
                                   _e231152231714_
                                   _hd231151231717_
                                   _tl231150231719_
                                   ___splice239952239953_
                                   _target231153231722_
                                   _tl231155231724_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231150231719_))
                              (let ((_e231267231322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231150231719_))))
                                (let ((_tl231265231327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231267231322_)))
                                      (_hd231266231325_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231267231322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231266231325_))
                                      (let ((_e231270231330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231266231325_))))
                                        (let ((_tl231268231335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231270231330_)))
                                              (_hd231269231333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231270231330_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd231269231333_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd231269231333_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231268231335_))
                                                      (let ((_e231273231338_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231268231335_))))
                (let ((_tl231271231343_
                       (let () (declare (not safe)) (##cdr _e231273231338_)))
                      (_hd231272231341_
                       (let () (declare (not safe)) (##car _e231273231338_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231272231341_))
                      (let ((_e231276231346_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231272231341_))))
                        (let ((_tl231274231351_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231276231346_)))
                              (_hd231275231349_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231276231346_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231275231349_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231275231349_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231274231351_))
                                      (let ((_e231279231354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231274231351_))))
                                        (let ((_tl231277231359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231279231354_)))
                                              (_hd231278231357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231279231354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231277231359_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231271231343_))
                                                  (let ((_e231282231362_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231271231343_))))
                                                    (let ((_tl231280231367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231282231362_)))
                                                          (_hd231281231365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231282231362_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231281231365_))
                                                          (let ((_e231285231370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231281231365_))))
                    (let ((_tl231283231375_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231285231370_)))
                          (_hd231284231373_
                           (let ()
                             (declare (not safe))
                             (##car _e231285231370_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231284231373_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231284231373_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231283231375_))
                                  (let ((_e231288231378_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231283231375_))))
                                    (let ((_tl231286231383_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231288231378_)))
                                          (_hd231287231381_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231288231378_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231286231383_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231280231367_))
                                              (let ((_e231291231386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231280231367_))))
                                                (let ((_tl231289231391_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231291231386_)))
                                                      (_hd231290231389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231291231386_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231290231389_))
                                                      (let ((_e231294231394_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231290231389_))))
                (let ((_tl231292231399_
                       (let () (declare (not safe)) (##cdr _e231294231394_)))
                      (_hd231293231397_
                       (let () (declare (not safe)) (##car _e231294231394_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231293231397_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231293231397_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231292231399_))
                              (let ((_e231297231402_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231292231399_))))
                                (let ((_tl231295231407_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231297231402_)))
                                      (_hd231296231405_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231297231402_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231295231407_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231289231391_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231265231327_))
                                              (___match240089240090_
                                               _e231152231714_
                                               _hd231151231717_
                                               _tl231150231719_
                                               _e231267231322_
                                               _hd231266231325_
                                               _tl231265231327_
                                               _e231270231330_
                                               _hd231269231333_
                                               _tl231268231335_
                                               _e231273231338_
                                               _hd231272231341_
                                               _tl231271231343_
                                               _e231276231346_
                                               _hd231275231349_
                                               _tl231274231351_
                                               _e231279231354_
                                               _hd231278231357_
                                               _tl231277231359_
                                               _e231282231362_
                                               _hd231281231365_
                                               _tl231280231367_
                                               _e231285231370_
                                               _hd231284231373_
                                               _tl231283231375_
                                               _e231288231378_
                                               _hd231287231381_
                                               _tl231286231383_
                                               _e231291231386_
                                               _hd231290231389_
                                               _tl231289231391_
                                               _e231294231394_
                                               _hd231293231397_
                                               _tl231292231399_
                                               _e231297231402_
                                               _hd231296231405_
                                               _tl231295231407_)
                                              (___kont239964239965_))
                                          (___kont239964239965_))
                                      (___kont239964239965_))))
                              (___kont239964239965_))
                          (___kont239964239965_))
                      (___kont239964239965_))))
              (___kont239964239965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239964239965_))
                                          (___kont239964239965_))))
                                  (___kont239964239965_))
                              (___kont239964239965_))
                          (___kont239964239965_))))
                  (___kont239964239965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239964239965_))
                                              (___kont239964239965_))))
                                      (___kont239964239965_))
                                  (___kont239964239965_))
                              (___kont239964239965_))))
                      (___kont239964239965_))))
              (___kont239964239965_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239964239965_))
                                              (___kont239964239965_))))
                                      (___kont239964239965_))))
                              (___kont239964239965_)))))
                  (___kont239964239965_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230608_)
        (let* ((___stx240092240093_ _form230608_)
               (_g230612230736_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240092240093_)))))
          (let ((___kont240094240095_
                 (lambda (_L231106_ _L231107_ _L231108_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L231107_))))
                (___kont240100240101_
                 (lambda (_L230954_ _L230955_ _L230956_ _L230957_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230954_))))
                (___kont240104240105_
                 (lambda (_L230821_ _L230822_ _L230823_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230821_)))))
            (let* ((___match240201240202_
                    (lambda (_e230704230741_
                             _hd230703230744_
                             _tl230702230746_
                             _e230707230749_
                             _hd230706230752_
                             _tl230705230754_
                             _e230710230757_
                             _hd230709230760_
                             _tl230708230762_
                             _e230713230765_
                             _hd230712230768_
                             _tl230711230770_
                             _e230716230773_
                             _hd230715230776_
                             _tl230714230778_
                             _e230719230781_
                             _hd230718230784_
                             _tl230717230786_
                             _e230722230789_
                             _hd230721230792_
                             _tl230720230794_
                             _e230725230797_
                             _hd230724230800_
                             _tl230723230802_
                             _e230728230805_
                             _hd230727230808_
                             _tl230726230810_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230720230794_))
                          (let ((_e230731230813_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230720230794_))))
                            (let ((_tl230729230818_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230731230813_)))
                                  (_hd230730230816_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230731230813_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230729230818_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230705230754_))
                                      (___kont240104240105_
                                       _hd230727230808_
                                       _hd230718230784_
                                       _hd230703230744_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230612230736_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230612230736_)))))
                          (let () (declare (not safe)) (_g230612230736_)))))
                   (___match240131240132_
                    (lambda (_e230665230858_
                             _hd230664230861_
                             _tl230663230863_
                             ___splice240102240103_
                             _target230666230866_
                             _tl230668230868_)
                      (letrec ((_loop230669230871_
                                (lambda (_hd230667230874_ _arg230673230876_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230667230874_))
                                      (let ((_e230670230879_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230667230874_))))
                                        (let ((_lp-tl230672230884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230670230879_)))
                                              (_lp-hd230671230882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230670230879_))))
                                          (let ((__tmp241356
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230671230882_
                                                         _arg230673230876_))))
                                            (declare (not safe))
                                            (_loop230669230871_
                                             _lp-tl230672230884_
                                             __tmp241356))))
                                      (let ((_arg230674230887_
                                             (reverse _arg230673230876_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230663230863_))
                                            (let ((_e230677230890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230663230863_))))
                                              (let ((_tl230675230895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230677230890_)))
                                                    (_hd230676230893_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230677230890_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230676230893_))
                                                    (let ((_e230680230898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230676230893_))))
                                                      (let ((_tl230678230903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230680230898_)))
                    (_hd230679230901_
                     (let () (declare (not safe)) (##car _e230680230898_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230679230901_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230679230901_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230678230903_))
                            (let ((_e230683230906_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230678230903_))))
                              (let ((_tl230681230911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230683230906_)))
                                    (_hd230682230909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230683230906_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230682230909_))
                                    (let ((_e230686230914_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230682230909_))))
                                      (let ((_tl230684230919_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230686230914_)))
                                            (_hd230685230917_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230686230914_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230685230917_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230685230917_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230684230919_))
                                                    (let ((_e230689230922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230684230919_))))
                                                      (let ((_tl230687230927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230689230922_)))
                    (_hd230688230925_
                     (let () (declare (not safe)) (##car _e230689230922_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230687230927_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230681230911_))
                        (let ((_e230692230930_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230681230911_))))
                          (let ((_tl230690230935_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230692230930_)))
                                (_hd230691230933_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230692230930_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230691230933_))
                                (let ((_e230695230938_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230691230933_))))
                                  (let ((_tl230693230943_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230695230938_)))
                                        (_hd230694230941_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230695230938_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230694230941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230694230941_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230693230943_))
                                                (let ((_e230698230946_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230693230943_))))
                                                  (let ((_tl230696230951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230698230946_)))
                                                        (_hd230697230949_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230698230946_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230696230951_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230675230895_))
                                                            (___kont240100240101_
                                                             _hd230697230949_
                                                             _hd230688230925_
                                                             _tl230668230868_
                                                             _arg230674230887_)
                                                            (___match240201240202_
                                                             _e230665230858_
                                                             _hd230664230861_
                                                             _tl230663230863_
                                                             _e230677230890_
                                                             _hd230676230893_
                                                             _tl230675230895_
                                                             _e230680230898_
                                                             _hd230679230901_
                                                             _tl230678230903_
                                                             _e230683230906_
                                                             _hd230682230909_
                                                             _tl230681230911_
                                                             _e230686230914_
                                                             _hd230685230917_
                                                             _tl230684230919_
                                                             _e230689230922_
                                                             _hd230688230925_
                                                             _tl230687230927_
                                                             _e230692230930_
                                                             _hd230691230933_
                                                             _tl230690230935_
                                                             _e230695230938_
                                                             _hd230694230941_
                                                             _tl230693230943_
                                                             _e230698230946_
                                                             _hd230697230949_
                                                             _tl230696230951_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230612230736_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230612230736_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230612230736_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230612230736_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230612230736_)))))
                        (let () (declare (not safe)) (_g230612230736_)))
                    (let () (declare (not safe)) (_g230612230736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230612230736_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230612230736_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230612230736_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230612230736_)))))
                            (let () (declare (not safe)) (_g230612230736_)))
                        (let () (declare (not safe)) (_g230612230736_)))
                    (let () (declare (not safe)) (_g230612230736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230612230736_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230612230736_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230669230871_ _target230666230866_ '())))))
                   (___match240119240120_
                    (lambda (_e230619230994_
                             _hd230618230997_
                             _tl230617230999_
                             ___splice240096240097_
                             _target230620231002_
                             _tl230622231004_)
                      (letrec ((_loop230623231007_
                                (lambda (_hd230621231010_ _arg230627231012_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230621231010_))
                                      (let ((_e230624231015_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230621231010_))))
                                        (let ((_lp-tl230626231020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230624231015_)))
                                              (_lp-hd230625231018_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230624231015_))))
                                          (let ((__tmp241358
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230625231018_
                                                         _arg230627231012_))))
                                            (declare (not safe))
                                            (_loop230623231007_
                                             _lp-tl230626231020_
                                             __tmp241358))))
                                      (let ((_arg230628231023_
                                             (reverse _arg230627231012_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230617230999_))
                                            (let ((_e230631231026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230617230999_))))
                                              (let ((_tl230629231031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230631231026_)))
                                                    (_hd230630231029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230631231026_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230630231029_))
                                                    (let ((_e230634231034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230630231029_))))
                                                      (let ((_tl230632231039_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230634231034_)))
                    (_hd230633231037_
                     (let () (declare (not safe)) (##car _e230634231034_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230633231037_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230633231037_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230632231039_))
                            (let ((_e230637231042_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230632231039_))))
                              (let ((_tl230635231047_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230637231042_)))
                                    (_hd230636231045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230637231042_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230636231045_))
                                    (let ((_e230640231050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230636231045_))))
                                      (let ((_tl230638231055_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230640231050_)))
                                            (_hd230639231053_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230640231050_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230639231053_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230639231053_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230638231055_))
                                                    (let ((_e230643231058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230638231055_))))
                                                      (let ((_tl230641231063_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230643231058_)))
                    (_hd230642231061_
                     (let () (declare (not safe)) (##car _e230643231058_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230641231063_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230635231047_))
                        (let ((___splice240098240099_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230635231047_
                                  '0))))
                          (let ((_tl230646231068_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice240098240099_ '1)))
                                (_target230644231066_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice240098240099_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230646231068_))
                                (letrec ((_loop230647231071_
                                          (lambda (_hd230645231074_
                                                   _xarg230651231076_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230645231074_))
                                                (let ((_e230648231079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230645231074_))))
                                                  (let ((_lp-tl230650231084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230648231079_)))
                                                        (_lp-hd230649231082_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230648231079_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230649231082_))
                                                        (let ((_e230655231087_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230649231082_))))
                  (let ((_tl230653231092_
                         (let () (declare (not safe)) (##cdr _e230655231087_)))
                        (_hd230654231090_
                         (let ()
                           (declare (not safe))
                           (##car _e230655231087_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230654231090_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230654231090_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230653231092_))
                                (let ((_e230658231095_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230653231092_))))
                                  (let ((_tl230656231100_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230658231095_)))
                                        (_hd230657231098_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230658231095_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230656231100_))
                                        (let ((__tmp241357
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230657231098_
                                                       _xarg230651231076_))))
                                          (declare (not safe))
                                          (_loop230647231071_
                                           _lp-tl230650231084_
                                           __tmp241357))
                                        (___match240131240132_
                                         _e230619230994_
                                         _hd230618230997_
                                         _tl230617230999_
                                         ___splice240096240097_
                                         _target230620231002_
                                         _tl230622231004_))))
                                (___match240131240132_
                                 _e230619230994_
                                 _hd230618230997_
                                 _tl230617230999_
                                 ___splice240096240097_
                                 _target230620231002_
                                 _tl230622231004_))
                            (___match240131240132_
                             _e230619230994_
                             _hd230618230997_
                             _tl230617230999_
                             ___splice240096240097_
                             _target230620231002_
                             _tl230622231004_))
                        (___match240131240132_
                         _e230619230994_
                         _hd230618230997_
                         _tl230617230999_
                         ___splice240096240097_
                         _target230620231002_
                         _tl230622231004_))))
                (___match240131240132_
                 _e230619230994_
                 _hd230618230997_
                 _tl230617230999_
                 ___splice240096240097_
                 _target230620231002_
                 _tl230622231004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230652231103_
                                                       (reverse _xarg230651231076_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230629231031_))
                                                      (___kont240094240095_
                                                       _xarg230652231103_
                                                       _hd230642231061_
                                                       _arg230628231023_)
                                                      (___match240131240132_
                                                       _e230619230994_
                                                       _hd230618230997_
                                                       _tl230617230999_
                                                       ___splice240096240097_
                                                       _target230620231002_
                                                       _tl230622231004_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230647231071_
                                     _target230644231066_
                                     '())))
                                (___match240131240132_
                                 _e230619230994_
                                 _hd230618230997_
                                 _tl230617230999_
                                 ___splice240096240097_
                                 _target230620231002_
                                 _tl230622231004_))))
                        (___match240131240132_
                         _e230619230994_
                         _hd230618230997_
                         _tl230617230999_
                         ___splice240096240097_
                         _target230620231002_
                         _tl230622231004_))
                    (___match240131240132_
                     _e230619230994_
                     _hd230618230997_
                     _tl230617230999_
                     ___splice240096240097_
                     _target230620231002_
                     _tl230622231004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240131240132_
                                                     _e230619230994_
                                                     _hd230618230997_
                                                     _tl230617230999_
                                                     ___splice240096240097_
                                                     _target230620231002_
                                                     _tl230622231004_))
                                                (___match240131240132_
                                                 _e230619230994_
                                                 _hd230618230997_
                                                 _tl230617230999_
                                                 ___splice240096240097_
                                                 _target230620231002_
                                                 _tl230622231004_))
                                            (___match240131240132_
                                             _e230619230994_
                                             _hd230618230997_
                                             _tl230617230999_
                                             ___splice240096240097_
                                             _target230620231002_
                                             _tl230622231004_))))
                                    (___match240131240132_
                                     _e230619230994_
                                     _hd230618230997_
                                     _tl230617230999_
                                     ___splice240096240097_
                                     _target230620231002_
                                     _tl230622231004_))))
                            (___match240131240132_
                             _e230619230994_
                             _hd230618230997_
                             _tl230617230999_
                             ___splice240096240097_
                             _target230620231002_
                             _tl230622231004_))
                        (___match240131240132_
                         _e230619230994_
                         _hd230618230997_
                         _tl230617230999_
                         ___splice240096240097_
                         _target230620231002_
                         _tl230622231004_))
                    (___match240131240132_
                     _e230619230994_
                     _hd230618230997_
                     _tl230617230999_
                     ___splice240096240097_
                     _target230620231002_
                     _tl230622231004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240131240132_
                                                     _e230619230994_
                                                     _hd230618230997_
                                                     _tl230617230999_
                                                     ___splice240096240097_
                                                     _target230620231002_
                                                     _tl230622231004_))))
                                            (___match240131240132_
                                             _e230619230994_
                                             _hd230618230997_
                                             _tl230617230999_
                                             ___splice240096240097_
                                             _target230620231002_
                                             _tl230622231004_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230623231007_ _target230620231002_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240092240093_))
                  (let ((_e230619230994_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240092240093_))))
                    (let ((_tl230617230999_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230619230994_)))
                          (_hd230618230997_
                           (let ()
                             (declare (not safe))
                             (##car _e230619230994_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230618230997_))
                          (let ((___splice240096240097_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230618230997_
                                    '0))))
                            (let ((_tl230622231004_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice240096240097_ '1)))
                                  (_target230620231002_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice240096240097_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230622231004_))
                                  (___match240119240120_
                                   _e230619230994_
                                   _hd230618230997_
                                   _tl230617230999_
                                   ___splice240096240097_
                                   _target230620231002_
                                   _tl230622231004_)
                                  (___match240131240132_
                                   _e230619230994_
                                   _hd230618230997_
                                   _tl230617230999_
                                   ___splice240096240097_
                                   _target230620231002_
                                   _tl230622231004_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230617230999_))
                              (let ((_e230707230749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230617230999_))))
                                (let ((_tl230705230754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230707230749_)))
                                      (_hd230706230752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230707230749_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230706230752_))
                                      (let ((_e230710230757_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230706230752_))))
                                        (let ((_tl230708230762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230710230757_)))
                                              (_hd230709230760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230710230757_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230709230760_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230709230760_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230708230762_))
                                                      (let ((_e230713230765_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230708230762_))))
                (let ((_tl230711230770_
                       (let () (declare (not safe)) (##cdr _e230713230765_)))
                      (_hd230712230768_
                       (let () (declare (not safe)) (##car _e230713230765_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230712230768_))
                      (let ((_e230716230773_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230712230768_))))
                        (let ((_tl230714230778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230716230773_)))
                              (_hd230715230776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230716230773_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230715230776_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230715230776_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230714230778_))
                                      (let ((_e230719230781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230714230778_))))
                                        (let ((_tl230717230786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230719230781_)))
                                              (_hd230718230784_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230719230781_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230717230786_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230711230770_))
                                                  (let ((_e230722230789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230711230770_))))
                                                    (let ((_tl230720230794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230722230789_)))
                                                          (_hd230721230792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230722230789_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230721230792_))
                                                          (let ((_e230725230797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230721230792_))))
                    (let ((_tl230723230802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230725230797_)))
                          (_hd230724230800_
                           (let ()
                             (declare (not safe))
                             (##car _e230725230797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230724230800_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230724230800_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230723230802_))
                                  (let ((_e230728230805_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230723230802_))))
                                    (let ((_tl230726230810_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230728230805_)))
                                          (_hd230727230808_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230728230805_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230726230810_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230720230794_))
                                              (let ((_e230731230813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230720230794_))))
                                                (let ((_tl230729230818_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230731230813_)))
                                                      (_hd230730230816_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230731230813_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230729230818_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230705230754_))
                                                          (___kont240104240105_
                                                           _hd230727230808_
                                                           _hd230718230784_
                                                           _hd230618230997_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230612230736_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230612230736_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230612230736_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230612230736_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230612230736_)))
                              (let () (declare (not safe)) (_g230612230736_)))
                          (let () (declare (not safe)) (_g230612230736_)))))
                  (let () (declare (not safe)) (_g230612230736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230612230736_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230612230736_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230612230736_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230612230736_)))
                              (let ()
                                (declare (not safe))
                                (_g230612230736_)))))
                      (let () (declare (not safe)) (_g230612230736_)))))
              (let () (declare (not safe)) (_g230612230736_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230612230736_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230612230736_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230612230736_)))))
                              (let ()
                                (declare (not safe))
                                (_g230612230736_))))))
                  (let () (declare (not safe)) (_g230612230736_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form230412_)
        (let* ((_g230414230428_
                (lambda (_g230415230425_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230415230425_))))
               (_g230413230605_
                (lambda (_g230415230431_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230415230431_))
                      (let ((_e230420230433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230415230431_))))
                        (let ((_hd230419230436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230420230433_)))
                              (_tl230418230438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230420230433_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230418230438_))
                              (let ((_e230423230441_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230418230438_))))
                                (let ((_hd230422230444_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230423230441_)))
                                      (_tl230421230446_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230423230441_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230421230446_))
                                      ((lambda (_L230449_ _L230450_)
                                         (let* ((___stx240214240215_ _L230450_)
                                                (_g230465230493_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx240214240215_)))))
                                           (let ((___kont240216240217_
                                                  (lambda (_L230584_)
                                                    (length (let ((__tmp241359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230594230597_ _g230595230599_)
                             (let ()
                               (declare (not safe))
                               (cons _g230594230597_ _g230595230599_)))))
                      (declare (not safe))
                      (foldr1 __tmp241359 '() _L230584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240220240221_
                                                  (lambda (_L230535_ _L230536_)
                                                    (let ((__tmp241360
                                                           (length (let ((__tmp241361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230547230550_ _g230548230552_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230547230550_
                                            _g230548230552_)))))
                             (declare (not safe))
                             (foldr1 __tmp241361 '() _L230536_)))))
              (declare (not safe))
              (cons __tmp241360 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240224240225_
                                                  (lambda (_L230498_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match240239240240_
                                                     (lambda (___splice240222240223_
                                                              _target230479230511_
                                                              _tl230481230513_)
                                                       (letrec ((_loop230482230516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230480230519_ _arg230486230521_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230480230519_))
                               (let ((_e230483230524_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230480230519_))))
                                 (let ((_lp-tl230485230529_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230483230524_)))
                                       (_lp-hd230484230527_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230483230524_))))
                                   (let ((__tmp241362
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230484230527_
                                                  _arg230486230521_))))
                                     (declare (not safe))
                                     (_loop230482230516_
                                      _lp-tl230485230529_
                                      __tmp241362))))
                               (let ((_arg230487230532_
                                      (reverse _arg230486230521_)))
                                 (___kont240220240221_
                                  _tl230481230513_
                                  _arg230487230532_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230482230516_ _target230479230511_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240233240234_
                                                     (lambda (___splice240218240219_
                                                              _target230468230560_
                                                              _tl230470230562_)
                                                       (letrec ((_loop230471230565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230469230568_ _arg230475230570_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230469230568_))
                               (let ((_e230472230573_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230469230568_))))
                                 (let ((_lp-tl230474230578_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230472230573_)))
                                       (_lp-hd230473230576_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230472230573_))))
                                   (let ((__tmp241363
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230473230576_
                                                  _arg230475230570_))))
                                     (declare (not safe))
                                     (_loop230471230565_
                                      _lp-tl230474230578_
                                      __tmp241363))))
                               (let ((_arg230476230581_
                                      (reverse _arg230475230570_)))
                                 (___kont240216240217_ _arg230476230581_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230471230565_ _target230468230560_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx240214240215_))
                                                   (let ((___splice240218240219_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx240214240215_
                                                             '0))))
                                                     (let ((_tl230470230562_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice240218240219_
                                                               '1)))
                                                           (_target230468230560_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice240218240219_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230470230562_))
                                                           (___match240233240234_
                                                            ___splice240218240219_
                                                            _target230468230560_
                                                            _tl230470230562_)
                                                           (___match240239240240_
                                                            ___splice240218240219_
                                                            _target230468230560_
                                                            _tl230470230562_))))
                                                   (___kont240224240225_
                                                    ___stx240214240215_))))))
                                       _hd230422230444_
                                       _hd230419230436_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230414230428_ _g230415230431_)))))
                              (let ()
                                (declare (not safe))
                                (_g230414230428_ _g230415230431_)))))
                      (let ()
                        (declare (not safe))
                        (_g230414230428_ _g230415230431_))))))
          (declare (not safe))
          (_g230413230605_ _form230412_))))
    (define gxc#lambda-expr?
      (lambda (_expr230365_)
        (let* ((___stx240242240243_ _expr230365_)
               (_g230368230378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240242240243_)))))
          (let ((___kont240244240245_ (lambda (_L230398_) '#t))
                (___kont240246240247_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240242240243_))
                (let ((_e230373230390_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240242240243_))))
                  (let ((_tl230371230395_
                         (let () (declare (not safe)) (##cdr _e230373230390_)))
                        (_hd230372230393_
                         (let ()
                           (declare (not safe))
                           (##car _e230373230390_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230372230393_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd230372230393_))
                            (___kont240244240245_ _tl230371230395_)
                            (___kont240246240247_))
                        (___kont240246240247_))))
                (___kont240246240247_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr230318_)
        (let* ((___stx240260240261_ _expr230318_)
               (_g230321230331_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240260240261_)))))
          (let ((___kont240262240263_ (lambda (_L230351_) '#t))
                (___kont240264240265_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240260240261_))
                (let ((_e230326230343_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240260240261_))))
                  (let ((_tl230324230348_
                         (let () (declare (not safe)) (##cdr _e230326230343_)))
                        (_hd230325230346_
                         (let ()
                           (declare (not safe))
                           (##car _e230326230343_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230325230346_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd230325230346_))
                            (___kont240262240263_ _tl230324230348_)
                            (___kont240264240265_))
                        (___kont240264240265_))))
                (___kont240264240265_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr230187_)
        (let* ((___stx240278240279_ _expr230187_)
               (_g230190230220_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240278240279_)))))
          (let ((___kont240280240281_
                 (lambda (_L230288_ _L230289_ _L230290_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230290_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L230289_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L230288_))
                           '#f)
                       '#f)))
                (___kont240282240283_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240278240279_))
                (let ((_e230197230232_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240278240279_))))
                  (let ((_tl230195230237_
                         (let () (declare (not safe)) (##cdr _e230197230232_)))
                        (_hd230196230235_
                         (let ()
                           (declare (not safe))
                           (##car _e230197230232_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230196230235_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd230196230235_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230195230237_))
                                (let ((_e230200230240_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230195230237_))))
                                  (let ((_tl230198230245_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230200230240_)))
                                        (_hd230199230243_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230200230240_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd230199230243_))
                                        (let ((_e230203230248_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd230199230243_))))
                                          (let ((_tl230201230253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230203230248_)))
                                                (_hd230202230251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230203230248_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230202230251_))
                                                (let ((_e230206230256_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230202230251_))))
                                                  (let ((_tl230204230261_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230206230256_)))
                                                        (_hd230205230259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230206230256_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd230205230259_))
                                                        (let ((_e230209230264_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd230205230259_))))
                  (let ((_tl230207230269_
                         (let () (declare (not safe)) (##cdr _e230209230264_)))
                        (_hd230208230267_
                         (let ()
                           (declare (not safe))
                           (##car _e230209230264_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl230207230269_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230204230261_))
                            (let ((_e230212230272_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230204230261_))))
                              (let ((_tl230210230277_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230212230272_)))
                                    (_hd230211230275_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230212230272_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl230210230277_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230201230253_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230198230245_))
                                            (let ((_e230215230280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230198230245_))))
                                              (let ((_tl230213230285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230215230280_)))
                                                    (_hd230214230283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230215230280_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl230213230285_))
                                                    (___kont240280240281_
                                                     _hd230214230283_
                                                     _hd230211230275_
                                                     _hd230208230267_)
                                                    (___kont240282240283_))))
                                            (___kont240282240283_))
                                        (___kont240282240283_))
                                    (___kont240282240283_))))
                            (___kont240282240283_))
                        (___kont240282240283_))))
                (___kont240282240283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240282240283_))))
                                        (___kont240282240283_))))
                                (___kont240282240283_))
                            (___kont240282240283_))
                        (___kont240282240283_))))
                (___kont240282240283_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr229512_)
        (let* ((___stx240340240341_ _expr229512_)
               (_g229515229673_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240340240341_)))))
          (let ((___kont240342240343_
                 (lambda (_L230061_
                          _L230062_
                          _L230063_
                          _L230064_
                          _L230065_
                          _L230066_
                          _L230067_
                          _L230068_
                          _L230069_
                          _L230070_
                          _L230071_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L230068_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L230064_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L230063_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L230071_
                                      _L230062_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L230070_
                                          _L230067_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L230065_
                                              _L230061_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L230069_
                                              _L230066_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont240344240345_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240340240341_))
                (let ((_e229530229685_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240340240341_))))
                  (let ((_tl229528229690_
                         (let () (declare (not safe)) (##cdr _e229530229685_)))
                        (_hd229529229688_
                         (let ()
                           (declare (not safe))
                           (##car _e229530229685_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229529229688_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229529229688_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229528229690_))
                                (let ((_e229533229693_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229528229690_))))
                                  (let ((_tl229531229698_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229533229693_)))
                                        (_hd229532229696_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229533229693_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229532229696_))
                                        (let ((_e229536229701_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229532229696_))))
                                          (let ((_tl229534229706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229536229701_)))
                                                (_hd229535229704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229536229701_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229535229704_))
                                                (let ((_e229539229709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229535229704_))))
                                                  (let ((_tl229537229714_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229539229709_)))
                                                        (_hd229538229712_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229539229709_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229538229712_))
                                                        (let ((_e229542229717_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229538229712_))))
                  (let ((_tl229540229722_
                         (let () (declare (not safe)) (##cdr _e229542229717_)))
                        (_hd229541229720_
                         (let ()
                           (declare (not safe))
                           (##car _e229542229717_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229540229722_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229537229714_))
                            (let ((_e229545229725_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229537229714_))))
                              (let ((_tl229543229730_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229545229725_)))
                                    (_hd229544229728_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229545229725_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229544229728_))
                                    (let ((_e229548229733_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229544229728_))))
                                      (let ((_tl229546229738_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229548229733_)))
                                            (_hd229547229736_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229548229733_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229547229736_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229547229736_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229546229738_))
                                                    (let ((_e229551229741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229546229738_))))
                                                      (let ((_tl229549229746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229551229741_)))
                    (_hd229550229744_
                     (let () (declare (not safe)) (##car _e229551229741_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229550229744_))
                    (let ((_e229554229749_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229550229744_))))
                      (let ((_tl229552229754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229554229749_)))
                            (_hd229553229752_
                             (let ()
                               (declare (not safe))
                               (##car _e229554229749_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229553229752_))
                            (let ((_e229557229757_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229553229752_))))
                              (let ((_tl229555229762_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229557229757_)))
                                    (_hd229556229760_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229557229757_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229556229760_))
                                    (let ((_e229560229765_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229556229760_))))
                                      (let ((_tl229558229770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229560229765_)))
                                            (_hd229559229768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229560229765_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229558229770_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229555229762_))
                                                (let ((_e229563229773_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229555229762_))))
                                                  (let ((_tl229561229778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229563229773_)))
                                                        (_hd229562229776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229563229773_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229561229778_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229552229754_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229549229746_))
                        (let ((_e229566229781_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229549229746_))))
                          (let ((_tl229564229786_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229566229781_)))
                                (_hd229565229784_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229566229781_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229565229784_))
                                (let ((_e229569229789_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229565229784_))))
                                  (let ((_tl229567229794_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229569229789_)))
                                        (_hd229568229792_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229569229789_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229568229792_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229568229792_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229567229794_))
                                                (let ((_e229572229797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229567229794_))))
                                                  (let ((_tl229570229802_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229572229797_)))
                                                        (_hd229571229800_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229572229797_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229571229800_))
                                                        (let ((_e229575229805_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229571229800_))))
                  (let ((_tl229573229810_
                         (let () (declare (not safe)) (##cdr _e229575229805_)))
                        (_hd229574229808_
                         (let ()
                           (declare (not safe))
                           (##car _e229575229805_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229570229802_))
                        (let ((_e229578229813_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229570229802_))))
                          (let ((_tl229576229818_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229578229813_)))
                                (_hd229577229816_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229578229813_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229577229816_))
                                (let ((_e229581229821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229577229816_))))
                                  (let ((_tl229579229826_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229581229821_)))
                                        (_hd229580229824_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229581229821_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229580229824_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229580229824_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229579229826_))
                                                (let ((_e229584229829_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229579229826_))))
                                                  (let ((_tl229582229834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229584229829_)))
                                                        (_hd229583229832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229584229829_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229583229832_))
                                                        (let ((_e229587229837_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229583229832_))))
                  (let ((_tl229585229842_
                         (let () (declare (not safe)) (##cdr _e229587229837_)))
                        (_hd229586229840_
                         (let ()
                           (declare (not safe))
                           (##car _e229587229837_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229586229840_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229586229840_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229585229842_))
                                (let ((_e229590229845_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229585229842_))))
                                  (let ((_tl229588229850_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229590229845_)))
                                        (_hd229589229848_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229590229845_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229588229850_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229582229834_))
                                            (let ((_e229593229853_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229582229834_))))
                                              (let ((_tl229591229858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229593229853_)))
                                                    (_hd229592229856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229593229853_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229592229856_))
                                                    (let ((_e229596229861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229592229856_))))
                                                      (let ((_tl229594229866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229596229861_)))
                    (_hd229595229864_
                     (let () (declare (not safe)) (##car _e229596229861_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229595229864_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229595229864_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229594229866_))
                            (let ((_e229599229869_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229594229866_))))
                              (let ((_tl229597229874_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229599229869_)))
                                    (_hd229598229872_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229599229869_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229597229874_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229591229858_))
                                        (let ((_e229602229877_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229591229858_))))
                                          (let ((_tl229600229882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229602229877_)))
                                                (_hd229601229880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229602229877_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229601229880_))
                                                (let ((_e229605229885_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229601229880_))))
                                                  (let ((_tl229603229890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229605229885_)))
                                                        (_hd229604229888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229605229885_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229604229888_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229604229888_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229603229890_))
                        (let ((_e229608229893_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229603229890_))))
                          (let ((_tl229606229898_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229608229893_)))
                                (_hd229607229896_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229608229893_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229606229898_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229576229818_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229564229786_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229543229730_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229534229706_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229531229698_))
                                                    (let ((_e229611229901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229531229698_))))
                                                      (let ((_tl229609229906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229611229901_)))
                    (_hd229610229904_
                     (let () (declare (not safe)) (##car _e229611229901_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229610229904_))
                    (let ((_e229614229909_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229610229904_))))
                      (let ((_tl229612229914_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229614229909_)))
                            (_hd229613229912_
                             (let ()
                               (declare (not safe))
                               (##car _e229614229909_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229613229912_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229613229912_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229612229914_))
                                    (let ((_e229617229917_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229612229914_))))
                                      (let ((_tl229615229922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229617229917_)))
                                            (_hd229616229920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229617229917_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229615229922_))
                                            (let ((_e229620229925_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229615229922_))))
                                              (let ((_tl229618229930_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229620229925_)))
                                                    (_hd229619229928_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229620229925_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229619229928_))
                                                    (let ((_e229623229933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229619229928_))))
                                                      (let ((_tl229621229938_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229623229933_)))
                    (_hd229622229936_
                     (let () (declare (not safe)) (##car _e229623229933_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229622229936_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229622229936_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229621229938_))
                            (let ((_e229626229941_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229621229938_))))
                              (let ((_tl229624229946_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229626229941_)))
                                    (_hd229625229944_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229626229941_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229625229944_))
                                    (let ((_e229629229949_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229625229944_))))
                                      (let ((_tl229627229954_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229629229949_)))
                                            (_hd229628229952_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229629229949_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229628229952_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229628229952_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229627229954_))
                                                    (let ((_e229632229957_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229627229954_))))
                                                      (let ((_tl229630229962_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229632229957_)))
                    (_hd229631229960_
                     (let () (declare (not safe)) (##car _e229632229957_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229630229962_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229624229946_))
                        (let ((_e229635229965_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229624229946_))))
                          (let ((_tl229633229970_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229635229965_)))
                                (_hd229634229968_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229635229965_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229634229968_))
                                (let ((_e229638229973_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229634229968_))))
                                  (let ((_tl229636229978_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229638229973_)))
                                        (_hd229637229976_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229638229973_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229637229976_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229637229976_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229636229978_))
                                                (let ((_e229641229981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229636229978_))))
                                                  (let ((_tl229639229986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229641229981_)))
                                                        (_hd229640229984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229641229981_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229639229986_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229633229970_))
                                                            (let ((_e229644229989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229633229970_))))
                      (let ((_tl229642229994_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229644229989_)))
                            (_hd229643229992_
                             (let ()
                               (declare (not safe))
                               (##car _e229644229989_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229643229992_))
                            (let ((_e229647229997_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229643229992_))))
                              (let ((_tl229645230002_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229647229997_)))
                                    (_hd229646230000_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229647229997_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229646230000_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229646230000_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229645230002_))
                                            (let ((_e229650230005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229645230002_))))
                                              (let ((_tl229648230010_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229650230005_)))
                                                    (_hd229649230008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229650230005_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229648230010_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229642229994_))
                                                        (let ((_e229653230013_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229642229994_))))
                  (let ((_tl229651230018_
                         (let () (declare (not safe)) (##cdr _e229653230013_)))
                        (_hd229652230016_
                         (let ()
                           (declare (not safe))
                           (##car _e229653230013_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229652230016_))
                        (let ((_e229656230021_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229652230016_))))
                          (let ((_tl229654230026_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229656230021_)))
                                (_hd229655230024_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229656230021_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229655230024_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229655230024_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229654230026_))
                                        (let ((_e229659230029_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229654230026_))))
                                          (let ((_tl229657230034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229659230029_)))
                                                (_hd229658230032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229659230029_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229657230034_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229651230018_))
                                                    (let ((_e229662230037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229651230018_))))
                                                      (let ((_tl229660230042_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229662230037_)))
                    (_hd229661230040_
                     (let () (declare (not safe)) (##car _e229662230037_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229661230040_))
                    (let ((_e229665230045_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229661230040_))))
                      (let ((_tl229663230050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229665230045_)))
                            (_hd229664230048_
                             (let ()
                               (declare (not safe))
                               (##car _e229665230045_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229664230048_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229664230048_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229663230050_))
                                    (let ((_e229668230053_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229663230050_))))
                                      (let ((_tl229666230058_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229668230053_)))
                                            (_hd229667230056_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229668230053_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229666230058_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229660230042_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229618229930_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229609229906_))
                                                        (___kont240342240343_
                                                         _hd229667230056_
                                                         _hd229658230032_
                                                         _hd229640229984_
                                                         _hd229631229960_
                                                         _hd229616229920_
                                                         _hd229607229896_
                                                         _hd229598229872_
                                                         _hd229589229848_
                                                         _hd229574229808_
                                                         _hd229559229768_
                                                         _hd229541229720_)
                                                        (___kont240344240345_))
                                                    (___kont240344240345_))
                                                (___kont240344240345_))
                                            (___kont240344240345_))))
                                    (___kont240344240345_))
                                (___kont240344240345_))
                            (___kont240344240345_))))
                    (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))
                                                (___kont240344240345_))))
                                        (___kont240344240345_))
                                    (___kont240344240345_))
                                (___kont240344240345_))))
                        (___kont240344240345_))))
                (___kont240344240345_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))))
                                            (___kont240344240345_))
                                        (___kont240344240345_))
                                    (___kont240344240345_))))
                            (___kont240344240345_))))
                    (___kont240344240345_))
                (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240344240345_))
                                            (___kont240344240345_))
                                        (___kont240344240345_))))
                                (___kont240344240345_))))
                        (___kont240344240345_))
                    (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))
                                                (___kont240344240345_))
                                            (___kont240344240345_))))
                                    (___kont240344240345_))))
                            (___kont240344240345_))
                        (___kont240344240345_))
                    (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))))
                                            (___kont240344240345_))))
                                    (___kont240344240345_))
                                (___kont240344240345_))
                            (___kont240344240345_))))
                    (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))
                                                (___kont240344240345_))
                                            (___kont240344240345_))
                                        (___kont240344240345_))
                                    (___kont240344240345_))
                                (___kont240344240345_))))
                        (___kont240344240345_))
                    (___kont240344240345_))
                (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240344240345_))))
                                        (___kont240344240345_))
                                    (___kont240344240345_))))
                            (___kont240344240345_))
                        (___kont240344240345_))
                    (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))))
                                            (___kont240344240345_))
                                        (___kont240344240345_))))
                                (___kont240344240345_))
                            (___kont240344240345_))
                        (___kont240344240345_))))
                (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240344240345_))
                                            (___kont240344240345_))
                                        (___kont240344240345_))))
                                (___kont240344240345_))))
                        (___kont240344240345_))))
                (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240344240345_))
                                            (___kont240344240345_))
                                        (___kont240344240345_))))
                                (___kont240344240345_))))
                        (___kont240344240345_))
                    (___kont240344240345_))
                (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240344240345_))
                                            (___kont240344240345_))))
                                    (___kont240344240345_))))
                            (___kont240344240345_))))
                    (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240344240345_))
                                                (___kont240344240345_))
                                            (___kont240344240345_))))
                                    (___kont240344240345_))))
                            (___kont240344240345_))
                        (___kont240344240345_))))
                (___kont240344240345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240344240345_))))
                                        (___kont240344240345_))))
                                (___kont240344240345_))
                            (___kont240344240345_))
                        (___kont240344240345_))))
                (___kont240344240345_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx229254_ _id229255_ _clauses229256_ _gensym?229257_)
        (let _lp229259_ ((_rest229261_ _clauses229256_)
                         (_ids229262_ '())
                         (_impls229263_ '())
                         (_clauses229264_ '()))
          (let* ((_rest229265229273_ _rest229261_)
                 (_else229267229281_
                  (lambda ()
                    (values (reverse _ids229262_)
                            (reverse _impls229263_)
                            (reverse _clauses229264_))))
                 (_K229269229486_
                  (lambda (_rest229284_ _clause229285_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause229285_))
                        (let ((__tmp241419
                               (let ()
                                 (declare (not safe))
                                 (cons _clause229285_ _clauses229264_))))
                          (declare (not safe))
                          (_lp229259_
                           _rest229284_
                           _ids229262_
                           _impls229263_
                           __tmp241419))
                        (let* ((_g229287229298_
                                (lambda (_g229288229295_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g229288229295_))))
                               (_g229286229483_
                                (lambda (_g229288229301_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g229288229301_))
                                      (let ((_e229293229303_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g229288229301_))))
                                        (let ((_hd229292229306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229293229303_)))
                                              (_tl229291229308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229293229303_))))
                                          ((lambda (_L229311_ _L229312_)
                                             (let* ((_id229329_
                                                     (let ((__tmp241366
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id229255_)))
                                                           (__tmp241365
                                                            (length _clauses229264_))
                                                           (__tmp241364
                                                            (if _gensym?229257_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp241366
                                                        '"__"
                                                        __tmp241365
                                                        __tmp241364)))
                                                    (_id229331_
                                                     (let ((__tmp241367
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx229254_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id229329_
                                                        __tmp241367)))
                                                    (_impl229333_
                                                     (let ((__tmp241368
                                                            (let ((__tmp241370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp241369
                           (let ()
                             (declare (not safe))
                             (cons _L229312_ _L229311_))))
                      (declare (not safe))
                      (cons __tmp241370 __tmp241369))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp241368 _stx229254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause229480_
                                                     (let* ((___stx240724240725_
                                                             _L229312_)
                                                            (_g229337229365_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240724240725_)))))
               (let ((___kont240726240727_
                      (lambda (_L229459_)
                        (let ((__tmp241371
                               (let ((__tmp241372
                                      (let ((__tmp241373
                                             (let ((__tmp241374
                                                    (let ((__tmp241380
                                                           (let ((__tmp241381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id229331_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241381)))
                  (__tmp241375
                   (let ((__tmp241376
                          (lambda (_g229469229472_ _g229470229474_)
                            (let ((__tmp241377
                                   (let ((__tmp241379
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp241378
                                          (let ()
                                            (declare (not safe))
                                            (cons _g229469229472_ '()))))
                                     (declare (not safe))
                                     (cons __tmp241379 __tmp241378))))
                              (declare (not safe))
                              (cons __tmp241377 _g229470229474_)))))
                     (declare (not safe))
                     (foldr1 __tmp241376 '() _L229459_))))
              (declare (not safe))
              (cons __tmp241380 __tmp241375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241374))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241373
                                         _stx229254_))))
                                 (declare (not safe))
                                 (cons __tmp241372 '()))))
                          (declare (not safe))
                          (cons _L229312_ __tmp241371))))
                     (___kont240730240731_
                      (lambda (_L229410_ _L229411_)
                        (let ((__tmp241382
                               (let ((__tmp241383
                                      (let ((__tmp241384
                                             (let ((__tmp241385
                                                    (let ((__tmp241399
                                                           (let ((__tmp241400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241400)))
                  (__tmp241386
                   (let ((__tmp241397
                          (let ((__tmp241398
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229331_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241398)))
                         (__tmp241387
                          (let ((__tmp241393
                                 (let ((__tmp241394
                                        (let ((__tmp241396
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp241395
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L229410_ '()))))
                                          (declare (not safe))
                                          (cons __tmp241396 __tmp241395))))
                                   (declare (not safe))
                                   (cons __tmp241394 '())))
                                (__tmp241388
                                 (let ((__tmp241389
                                        (lambda (_g229422229425_
                                                 _g229423229427_)
                                          (let ((__tmp241390
                                                 (let ((__tmp241392
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp241391
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g229422229425_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp241392
                                                         __tmp241391))))
                                            (declare (not safe))
                                            (cons __tmp241390
                                                  _g229423229427_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp241389 '() _L229411_))))
                            (declare (not safe))
                            (foldr1 cons __tmp241393 __tmp241388))))
                     (declare (not safe))
                     (cons __tmp241397 __tmp241387))))
              (declare (not safe))
              (cons __tmp241399 __tmp241386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241385))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241384
                                         _stx229254_))))
                                 (declare (not safe))
                                 (cons __tmp241383 '()))))
                          (declare (not safe))
                          (cons _L229312_ __tmp241382))))
                     (___kont240734240735_
                      (lambda (_L229370_)
                        (let ((__tmp241401
                               (let ((__tmp241402
                                      (let ((__tmp241403
                                             (let ((__tmp241404
                                                    (let ((__tmp241412
                                                           (let ((__tmp241413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241413)))
                  (__tmp241405
                   (let ((__tmp241410
                          (let ((__tmp241411
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229331_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241411)))
                         (__tmp241406
                          (let ((__tmp241407
                                 (let ((__tmp241409
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp241408
                                        (let ()
                                          (declare (not safe))
                                          (cons _L229370_ '()))))
                                   (declare (not safe))
                                   (cons __tmp241409 __tmp241408))))
                            (declare (not safe))
                            (cons __tmp241407 '()))))
                     (declare (not safe))
                     (cons __tmp241410 __tmp241406))))
              (declare (not safe))
              (cons __tmp241412 __tmp241405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241404))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241403
                                         _stx229254_))))
                                 (declare (not safe))
                                 (cons __tmp241402 '()))))
                          (declare (not safe))
                          (cons _L229312_ __tmp241401)))))
                 (let* ((___match240749240750_
                         (lambda (___splice240732240733_
                                  _target229351229386_
                                  _tl229353229388_)
                           (letrec ((_loop229354229391_
                                     (lambda (_hd229352229394_
                                              _arg229358229396_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229352229394_))
                                           (let ((_e229355229399_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229352229394_))))
                                             (let ((_lp-tl229357229404_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229355229399_)))
                                                   (_lp-hd229356229402_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229355229399_))))
                                               (let ((__tmp241414
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229356229402_
                                                              _arg229358229396_))))
                                                 (declare (not safe))
                                                 (_loop229354229391_
                                                  _lp-tl229357229404_
                                                  __tmp241414))))
                                           (let ((_arg229359229407_
                                                  (reverse _arg229358229396_)))
                                             (___kont240730240731_
                                              _tl229353229388_
                                              _arg229359229407_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229354229391_
                                _target229351229386_
                                '())))))
                        (___match240743240744_
                         (lambda (___splice240728240729_
                                  _target229340229435_
                                  _tl229342229437_)
                           (letrec ((_loop229343229440_
                                     (lambda (_hd229341229443_
                                              _arg229347229445_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229341229443_))
                                           (let ((_e229344229448_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229341229443_))))
                                             (let ((_lp-tl229346229453_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229344229448_)))
                                                   (_lp-hd229345229451_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229344229448_))))
                                               (let ((__tmp241415
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229345229451_
                                                              _arg229347229445_))))
                                                 (declare (not safe))
                                                 (_loop229343229440_
                                                  _lp-tl229346229453_
                                                  __tmp241415))))
                                           (let ((_arg229348229456_
                                                  (reverse _arg229347229445_)))
                                             (___kont240726240727_
                                              _arg229348229456_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229343229440_
                                _target229340229435_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240724240725_))
                       (let ((___splice240728240729_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240724240725_
                                 '0))))
                         (let ((_tl229342229437_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240728240729_ '1)))
                               (_target229340229435_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240728240729_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229342229437_))
                               (___match240743240744_
                                ___splice240728240729_
                                _target229340229435_
                                _tl229342229437_)
                               (___match240749240750_
                                ___splice240728240729_
                                _target229340229435_
                                _tl229342229437_))))
                       (___kont240734240735_ ___stx240724240725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp241418
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id229331_
                                                              _ids229262_)))
                                                     (__tmp241417
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl229333_
                                                              _impls229263_)))
                                                     (__tmp241416
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause229480_
                                                              _clauses229264_))))
                                                 (declare (not safe))
                                                 (_lp229259_
                                                  _rest229284_
                                                  __tmp241418
                                                  __tmp241417
                                                  __tmp241416))))
                                           _tl229291229308_
                                           _hd229292229306_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g229287229298_ _g229288229301_))))))
                          (declare (not safe))
                          (_g229286229483_ _clause229285_))))))
            (if (let () (declare (not safe)) (##pair? _rest229265229273_))
                (let ((_hd229270229489_
                       (let ()
                         (declare (not safe))
                         (##car _rest229265229273_)))
                      (_tl229271229491_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest229265229273_))))
                  (let* ((_clause229494_ _hd229270229489_)
                         (_rest229496_ _tl229271229491_))
                    (declare (not safe))
                    (_K229269229486_ _rest229496_ _clause229494_)))
                (let () (declare (not safe)) (_else229267229281_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx229501_ _id229502_ _clauses229503_)
        (let ((_gensym?229505_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx229501_
           _id229502_
           _clauses229503_
           _gensym?229505_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g241421_
        (let ((_g241420_ (let () (declare (not safe)) (##length _g241421_))))
          (cond ((let () (declare (not safe)) (##fx= _g241420_ 3))
                 (apply (lambda (_stx229501_ _id229502_ _clauses229503_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx229501_
                             _id229502_
                             _clauses229503_)))
                        _g241421_))
                ((let () (declare (not safe)) (##fx= _g241420_ 4))
                 (apply (lambda (_stx229507_
                                 _id229508_
                                 _clauses229509_
                                 _gensym?229510_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx229507_
                             _id229508_
                             _clauses229509_
                             _gensym?229510_)))
                        _g241421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g241421_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228531_)
        (letrec ((_case-lambda-clause-def228533_
                  (lambda (_id229250_ _impl229251_)
                    (let ((__tmp241422
                           (let ((__tmp241423
                                  (let ((__tmp241426
                                         (let ()
                                           (declare (not safe))
                                           (cons _id229250_ '())))
                                        (__tmp241424
                                         (let ((__tmp241425
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl229251_))))
                                           (declare (not safe))
                                           (cons __tmp241425 '()))))
                                    (declare (not safe))
                                    (cons __tmp241426 __tmp241424))))
                             (declare (not safe))
                             (cons '%#define-values __tmp241423))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241422 _stx228531_))))
                 (_opt-lambda-dispatch-name228534_
                  (lambda (_id229246_)
                    (if (uninterned-symbol? _id229246_)
                        (let ((_str229248_ (symbol->string _id229246_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str229248_))
                              '"%"
                              _id229246_))
                        _id229246_)))
                 (_kw-lambda-dispatch-name228535_
                  (lambda (_id229241_ _name229242_)
                    (if (uninterned-symbol? _id229241_)
                        (let ((_str229244_ (symbol->string _id229241_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str229244_))
                              _name229242_
                              _id229241_))
                        _id229241_))))
          (let* ((___stx240772240773_ _stx228531_)
                 (_g228540228599_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240772240773_)))))
            (let ((___kont240774240775_
                   (lambda (_L229150_ _L229151_)
                     (let* ((___stx240752240753_ _L229150_)
                            (_g229168229182_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240752240753_)))))
                       (let ((___kont240754240755_
                              (lambda (_L229226_) _stx228531_))
                             (___kont240756240757_
                              (lambda (_L229195_)
                                (let ((_g241427_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228531_
                                          _L229151_
                                          _L229195_))))
                                  (begin
                                    (let ((_g241428_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g241427_)
                                                 (##vector-length _g241427_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g241428_ 3)))
                                          (error "Context expects 3 values"
                                                 _g241428_)))
                                    (let ((_ids229205_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241427_ 0)))
                                          (_impls229206_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241427_ 1)))
                                          (_clauses229207_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241427_ 2))))
                                      (let* ((_g241429_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids229205_))
                                             (_defs229210_
                                              (map _case-lambda-clause-def228533_
                                                   _ids229205_
                                                   _impls229206_)))
                                        (let ((__tmp241431
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L229151_)))
                                              (__tmp241430
                                               (map gxc#identifier-symbol
                                                    _ids229205_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp241431
                                           '" => "
                                           __tmp241430))
                                        (let ((__tmp241432
                                               (let ((__tmp241433
                                                      (let ((__tmp241434
                                                             (let ((__tmp241435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241436
                                   (let ((__tmp241437
                                          (let ((__tmp241442
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L229151_ '())))
                                                (__tmp241438
                                                 (let ((__tmp241439
                                                        (let ((__tmp241441
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses229207_)))
                      (__tmp241440
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp241441 __tmp241440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241439 '()))))
                                            (declare (not safe))
                                            (cons __tmp241442 __tmp241438))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp241437))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241436
                               _stx228531_))))
                       (declare (not safe))
                       (cons __tmp241435 '()))))
                (declare (not safe))
                (foldr1 cons __tmp241434 _defs229210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp241433))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp241432
                                           _stx228531_)))))))))
                         (let ((___match240763240764_
                                (lambda (_e229173229218_
                                         _hd229172229221_
                                         _tl229171229223_)
                                  (let ((_L229226_ _tl229171229223_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L229226_))
                                        (___kont240754240755_ _L229226_)
                                        (___kont240756240757_
                                         _tl229171229223_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240752240753_))
                               (let ((_e229173229218_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240752240753_))))
                                 (let ((_tl229171229223_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e229173229218_)))
                                       (_hd229172229221_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e229173229218_))))
                                   (___match240763240764_
                                    _e229173229218_
                                    _hd229172229221_
                                    _tl229171229223_)))
                               (let ()
                                 (declare (not safe))
                                 (_g229168229182_))))))))
                  (___kont240776240777_
                   (lambda (_L228968_ _L228969_)
                     (let* ((_g228985229015_
                             (lambda (_g228986229012_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228986229012_))))
                            (_g228984229110_
                             (lambda (_g228986229018_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228986229018_))
                                   (let ((_e228992229020_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228986229018_))))
                                     (let ((_hd228991229023_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228992229020_)))
                                           (_tl228990229025_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228992229020_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228990229025_))
                                           (let ((_e228995229028_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228990229025_))))
                                             (let ((_hd228994229031_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228995229028_)))
                                                   (_tl228993229033_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228995229028_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228994229031_))
                                                   (let ((_e228998229036_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228994229031_))))
                                                     (let ((_hd228997229039_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228998229036_)))
                                                           (_tl228996229041_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228998229036_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228997229039_))
                                                           (let ((_e229001229044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228997229039_))))
                     (let ((_hd229000229047_
                            (let ()
                              (declare (not safe))
                              (##car _e229001229044_)))
                           (_tl228999229049_
                            (let ()
                              (declare (not safe))
                              (##cdr _e229001229044_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd229000229047_))
                           (let ((_e229004229052_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd229000229047_))))
                             (let ((_hd229003229055_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e229004229052_)))
                                   (_tl229002229057_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e229004229052_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl229002229057_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228999229049_))
                                       (let ((_e229007229060_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228999229049_))))
                                         (let ((_hd229006229063_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229007229060_)))
                                               (_tl229005229065_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229007229060_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl229005229065_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl228996229041_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228993229033_))
                                                       (let ((_e229010229068_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228993229033_))))
                 (let ((_hd229009229071_
                        (let () (declare (not safe)) (##car _e229010229068_)))
                       (_tl229008229073_
                        (let () (declare (not safe)) (##cdr _e229010229068_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229008229073_))
                       ((lambda (_L229076_ _L229077_ _L229078_)
                          (let* ((_lambda-id229102_
                                  (let ((__tmp241445
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228969_)))
                                        (__tmp241443
                                         (let ((__tmp241444
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L229078_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228534_
                                            __tmp241444))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp241445
                                     '"__"
                                     __tmp241443)))
                                 (_lambda-id229104_
                                  (let ((__tmp241446
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228531_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id229102_
                                     __tmp241446)))
                                 (_g241447_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id229104_)))
                                 (_new-case-lambda-expr229107_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L229076_
                                     _L229078_
                                     _lambda-id229104_))))
                            (let ((__tmp241449
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228969_)))
                                  (__tmp241448
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id229104_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp241449
                               '" => "
                               __tmp241448))
                            (let ((__tmp241450
                                   (let ((__tmp241451
                                          (let ((__tmp241459
                                                 (let ((__tmp241460
                                                        (let ((__tmp241461
                                                               (let ((__tmp241464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id229104_ '())))
                             (__tmp241462
                              (let ((__tmp241463
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L229077_))))
                                (declare (not safe))
                                (cons __tmp241463 '()))))
                         (declare (not safe))
                         (cons __tmp241464 __tmp241462))))
                  (declare (not safe))
                  (cons '%#define-values __tmp241461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp241460
                                                    _stx228531_)))
                                                (__tmp241452
                                                 (let ((__tmp241453
                                                        (let ((__tmp241454
                                                               (let ((__tmp241455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp241456
                                     (let ((__tmp241458
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228969_ '())))
                                           (__tmp241457
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr229107_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp241458 __tmp241457))))
                                (declare (not safe))
                                (cons '%#define-values __tmp241456))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp241455 _stx228531_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp241454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241453 '()))))
                                            (declare (not safe))
                                            (cons __tmp241459 __tmp241452))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp241451))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241450
                               _stx228531_))))
                        _hd229009229071_
                        _hd229006229063_
                        _hd229003229055_)
                       (let ()
                         (declare (not safe))
                         (_g228985229015_ _g228986229018_)))))
               (let () (declare (not safe)) (_g228985229015_ _g228986229018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228985229015_
                                                      _g228986229018_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228985229015_
                                                  _g228986229018_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228985229015_ _g228986229018_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228985229015_ _g228986229018_)))))
                           (let ()
                             (declare (not safe))
                             (_g228985229015_ _g228986229018_)))))
                   (let ()
                     (declare (not safe))
                     (_g228985229015_ _g228986229018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228985229015_
                                                      _g228986229018_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228985229015_
                                              _g228986229018_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228985229015_ _g228986229018_))))))
                       (declare (not safe))
                       (_g228984229110_ _L228968_))))
                  (___kont240778240779_
                   (lambda (_L228682_ _L228683_)
                     (let* ((_g228699228752_
                             (lambda (_g228700228749_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228700228749_))))
                            (_g228698228928_
                             (lambda (_g228700228755_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228700228755_))
                                   (let ((_e228708228757_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228700228755_))))
                                     (let ((_hd228707228760_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228708228757_)))
                                           (_tl228706228762_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228708228757_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228706228762_))
                                           (let ((_e228711228765_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228706228762_))))
                                             (let ((_hd228710228768_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228711228765_)))
                                                   (_tl228709228770_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228711228765_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228710228768_))
                                                   (let ((_e228714228773_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228710228768_))))
                                                     (let ((_hd228713228776_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228714228773_)))
                                                           (_tl228712228778_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228714228773_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228713228776_))
                                                           (let ((_e228717228781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228713228776_))))
                     (let ((_hd228716228784_
                            (let ()
                              (declare (not safe))
                              (##car _e228717228781_)))
                           (_tl228715228786_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228717228781_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228716228784_))
                           (let ((_e228720228789_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228716228784_))))
                             (let ((_hd228719228792_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228720228789_)))
                                   (_tl228718228794_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228720228789_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228718228794_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228715228786_))
                                       (let ((_e228723228797_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228715228786_))))
                                         (let ((_hd228722228800_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228723228797_)))
                                               (_tl228721228802_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228723228797_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228722228800_))
                                               (let ((_e228726228805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228722228800_))))
                                                 (let ((_hd228725228808_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228726228805_)))
                                                       (_tl228724228810_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228726228805_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228724228810_))
                                                       (let ((_e228729228813_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228724228810_))))
                 (let ((_hd228728228816_
                        (let () (declare (not safe)) (##car _e228729228813_)))
                       (_tl228727228818_
                        (let () (declare (not safe)) (##cdr _e228729228813_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228728228816_))
                       (let ((_e228732228821_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228728228816_))))
                         (let ((_hd228731228824_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228732228821_)))
                               (_tl228730228826_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228732228821_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228731228824_))
                               (let ((_e228735228829_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228731228824_))))
                                 (let ((_hd228734228832_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228735228829_)))
                                       (_tl228733228834_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228735228829_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228734228832_))
                                       (let ((_e228738228837_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228734228832_))))
                                         (let ((_hd228737228840_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228738228837_)))
                                               (_tl228736228842_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228738228837_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228736228842_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228733228834_))
                                                   (let ((_e228741228845_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228733228834_))))
                                                     (let ((_hd228740228848_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228741228845_)))
                                                           (_tl228739228850_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228741228845_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228739228850_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228730228826_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228727228818_))
                           (let ((_e228744228853_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228727228818_))))
                             (let ((_hd228743228856_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228744228853_)))
                                   (_tl228742228858_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228744228853_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228742228858_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228721228802_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228712228778_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228709228770_))
                                               (let ((_e228747228861_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228709228770_))))
                                                 (let ((_hd228746228864_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228747228861_)))
                                                       (_tl228745228866_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228747228861_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228745228866_))
                                                       ((lambda (_L228869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228870_
                         _L228871_
                         _L228872_
                         _L228873_)
                  (let* ((_get-kws-id228913_
                          (let ((__tmp241467
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228683_)))
                                (__tmp241465
                                 (let ((__tmp241466
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228873_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228535_
                                    __tmp241466
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241467 '"__" __tmp241465)))
                         (_get-kws-id228915_
                          (let ((__tmp241468
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228531_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228913_
                             __tmp241468)))
                         (_main-id228917_
                          (let ((__tmp241471
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228683_)))
                                (__tmp241469
                                 (let ((__tmp241470
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228872_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228535_
                                    __tmp241470
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241471 '"__" __tmp241469)))
                         (_main-id228919_
                          (let ((__tmp241472
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228531_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228917_
                             __tmp241472)))
                         (_g241473_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228915_)))
                         (_g241474_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228919_)))
                         (_new-kw-dispatch228923_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228869_
                             _L228873_
                             _get-kws-id228915_)))
                         (_new-get-kws228925_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228870_
                             _L228872_
                             _main-id228919_))))
                    (let ((__tmp241477
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228683_)))
                          (__tmp241476
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228915_)))
                          (__tmp241475
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228919_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp241477
                       '" => "
                       __tmp241476
                       '" => "
                       __tmp241475))
                    (let ((__tmp241478
                           (let ((__tmp241479
                                  (let ((__tmp241492
                                         (let ((__tmp241493
                                                (let ((__tmp241494
                                                       (let ((__tmp241495
                                                              (let ((__tmp241497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228919_ '())))
                            (__tmp241496
                             (let ()
                               (declare (not safe))
                               (cons _L228871_ '()))))
                        (declare (not safe))
                        (cons __tmp241497 __tmp241496))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241494
                                                   _stx228531_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp241493)))
                                        (__tmp241480
                                         (let ((__tmp241487
                                                (let ((__tmp241488
                                                       (let ((__tmp241489
                                                              (let ((__tmp241491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228915_ '())))
                            (__tmp241490
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228925_ '()))))
                        (declare (not safe))
                        (cons __tmp241491 __tmp241490))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241488
                                                   _stx228531_)))
                                               (__tmp241481
                                                (let ((__tmp241482
                                                       (let ((__tmp241483
                                                              (let ((__tmp241484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp241486
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228683_ '())))
                                   (__tmp241485
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228923_ '()))))
                               (declare (not safe))
                               (cons __tmp241486 __tmp241485))))
                        (declare (not safe))
                        (cons '%#define-values __tmp241484))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp241483 _stx228531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp241482 '()))))
                                           (declare (not safe))
                                           (cons __tmp241487 __tmp241481))))
                                    (declare (not safe))
                                    (cons __tmp241492 __tmp241480))))
                             (declare (not safe))
                             (cons '%#begin __tmp241479))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241478 _stx228531_))))
                _hd228746228864_
                _hd228743228856_
                _hd228740228848_
                _hd228737228840_
                _hd228719228792_)
               (let ()
                 (declare (not safe))
                 (_g228699228752_ _g228700228755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228699228752_
                                                  _g228700228755_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228699228752_
                                              _g228700228755_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228699228752_ _g228700228755_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228699228752_ _g228700228755_)))))
                           (let ()
                             (declare (not safe))
                             (_g228699228752_ _g228700228755_)))
                       (let ()
                         (declare (not safe))
                         (_g228699228752_ _g228700228755_)))
                   (let ()
                     (declare (not safe))
                     (_g228699228752_ _g228700228755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228699228752_
                                                      _g228700228755_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228699228752_
                                                  _g228700228755_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228699228752_ _g228700228755_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228699228752_ _g228700228755_)))))
                       (let ()
                         (declare (not safe))
                         (_g228699228752_ _g228700228755_)))))
               (let ()
                 (declare (not safe))
                 (_g228699228752_ _g228700228755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228699228752_
                                                  _g228700228755_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228699228752_ _g228700228755_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228699228752_ _g228700228755_)))))
                           (let ()
                             (declare (not safe))
                             (_g228699228752_ _g228700228755_)))))
                   (let ()
                     (declare (not safe))
                     (_g228699228752_ _g228700228755_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228699228752_
                                                      _g228700228755_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228699228752_
                                              _g228700228755_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228699228752_ _g228700228755_))))))
                       (declare (not safe))
                       (_g228698228928_ _L228682_))))
                  (___kont240780240781_
                   (lambda (_L228628_ _L228629_)
                     (let ((__tmp241498
                            (let ((__tmp241499
                                   (let ((__tmp241500
                                          (let ((__tmp241501
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228628_))))
                                            (declare (not safe))
                                            (cons __tmp241501 '()))))
                                     (declare (not safe))
                                     (cons _L228629_ __tmp241500))))
                              (declare (not safe))
                              (cons '%#define-values __tmp241499))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp241498 _stx228531_)))))
              (let* ((___match240865240866_
                      (lambda (_e228574228650_
                               _hd228573228653_
                               _tl228572228655_
                               _e228577228658_
                               _hd228576228661_
                               _tl228575228663_
                               _e228580228666_
                               _hd228579228669_
                               _tl228578228671_
                               _e228583228674_
                               _hd228582228677_
                               _tl228581228679_)
                        (let ((_L228682_ _hd228582228677_)
                              (_L228683_ _hd228579228669_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228683_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228682_)))
                              (___kont240778240779_ _L228682_ _L228683_)
                              (___kont240780240781_
                               _hd228582228677_
                               _hd228576228661_)))))
                     (___match240837240838_
                      (lambda (_e228560228936_
                               _hd228559228939_
                               _tl228558228941_
                               _e228563228944_
                               _hd228562228947_
                               _tl228561228949_
                               _e228566228952_
                               _hd228565228955_
                               _tl228564228957_
                               _e228569228960_
                               _hd228568228963_
                               _tl228567228965_)
                        (let ((_L228968_ _hd228568228963_)
                              (_L228969_ _hd228565228955_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228969_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228968_)))
                              (___kont240776240777_ _L228968_ _L228969_)
                              (___match240865240866_
                               _e228560228936_
                               _hd228559228939_
                               _tl228558228941_
                               _e228563228944_
                               _hd228562228947_
                               _tl228561228949_
                               _e228566228952_
                               _hd228565228955_
                               _tl228564228957_
                               _e228569228960_
                               _hd228568228963_
                               _tl228567228965_)))))
                     (___match240809240810_
                      (lambda (_e228546229118_
                               _hd228545229121_
                               _tl228544229123_
                               _e228549229126_
                               _hd228548229129_
                               _tl228547229131_
                               _e228552229134_
                               _hd228551229137_
                               _tl228550229139_
                               _e228555229142_
                               _hd228554229145_
                               _tl228553229147_)
                        (let ((_L229150_ _hd228554229145_)
                              (_L229151_ _hd228551229137_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L229151_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L229150_)))
                              (___kont240774240775_ _L229150_ _L229151_)
                              (___match240837240838_
                               _e228546229118_
                               _hd228545229121_
                               _tl228544229123_
                               _e228549229126_
                               _hd228548229129_
                               _tl228547229131_
                               _e228552229134_
                               _hd228551229137_
                               _tl228550229139_
                               _e228555229142_
                               _hd228554229145_
                               _tl228553229147_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240772240773_))
                    (let ((_e228546229118_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240772240773_))))
                      (let ((_tl228544229123_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228546229118_)))
                            (_hd228545229121_
                             (let ()
                               (declare (not safe))
                               (##car _e228546229118_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228544229123_))
                            (let ((_e228549229126_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228544229123_))))
                              (let ((_tl228547229131_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228549229126_)))
                                    (_hd228548229129_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228549229126_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228548229129_))
                                    (let ((_e228552229134_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228548229129_))))
                                      (let ((_tl228550229139_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228552229134_)))
                                            (_hd228551229137_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228552229134_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228550229139_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228547229131_))
                                                (let ((_e228555229142_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228547229131_))))
                                                  (let ((_tl228553229147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228555229142_)))
                                                        (_hd228554229145_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228555229142_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228553229147_))
                                                        (___match240809240810_
                                                         _e228546229118_
                                                         _hd228545229121_
                                                         _tl228544229123_
                                                         _e228549229126_
                                                         _hd228548229129_
                                                         _tl228547229131_
                                                         _e228552229134_
                                                         _hd228551229137_
                                                         _tl228550229139_
                                                         _e228555229142_
                                                         _hd228554229145_
                                                         _tl228553229147_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228540228599_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228540228599_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228547229131_))
                                                (let ((_e228594228620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228547229131_))))
                                                  (let ((_tl228592228625_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228594228620_)))
                                                        (_hd228593228623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228594228620_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228592228625_))
                                                        (___kont240780240781_
                                                         _hd228593228623_
                                                         _hd228548229129_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228540228599_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228540228599_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228547229131_))
                                        (let ((_e228594228620_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228547229131_))))
                                          (let ((_tl228592228625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228594228620_)))
                                                (_hd228593228623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228594228620_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228592228625_))
                                                (___kont240780240781_
                                                 _hd228593228623_
                                                 _hd228548229129_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228540228599_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228540228599_))))))
                            (let () (declare (not safe)) (_g228540228599_)))))
                    (let () (declare (not safe)) (_g228540228599_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx227463_)
        (letrec* ((_bind-e__239168239169_
                   (lambda (_id228515_ _expr228516_ _compile?228517_)
                     (let ((__tmp241504
                            (let ()
                              (declare (not safe))
                              (cons _id228515_ '())))
                           (__tmp241502
                            (let ((__tmp241503
                                   (if _compile?228517_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr228516_))
                                       _expr228516_)))
                              (declare (not safe))
                              (cons __tmp241503 '()))))
                       (declare (not safe))
                       (cons __tmp241504 __tmp241502))))
                  (_bind-e__0__239170239171_
                   (lambda (_id228522_ _expr228523_)
                     (let ((_compile?228525_ '#t))
                       (declare (not safe))
                       (_bind-e__239168239169_
                        _id228522_
                        _expr228523_
                        _compile?228525_))))
                  (_bind-e227465_
                   (lambda _g241506_
                     (let ((_g241505_
                            (let ()
                              (declare (not safe))
                              (##length _g241506_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241505_ 2))
                              (apply (lambda (_id228522_ _expr228523_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__239170239171_
                                          _id228522_
                                          _expr228523_)))
                                     _g241506_))
                             ((let () (declare (not safe)) (##fx= _g241505_ 3))
                              (apply (lambda (_id228527_
                                              _expr228528_
                                              _compile?228529_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__239168239169_
                                          _id228527_
                                          _expr228528_
                                          _compile?228529_)))
                                     _g241506_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241506_))))))
                  (_compile-bindings227466_
                   (lambda (_bindings228099_)
                     (let _lp228101_ ((_rest228103_ _bindings228099_)
                                      (_lift1228104_ '())
                                      (_lift2228105_ '())
                                      (_bind228106_ '()))
                       (let* ((_rest228107228115_ _rest228103_)
                              (_else228109228123_
                               (lambda ()
                                 (values (reverse _lift1228104_)
                                         (reverse _lift2228105_)
                                         (reverse _bind228106_))))
                              (_K228111228502_
                               (lambda (_rest228126_ _hd228127_)
                                 (let* ((___stx240908240909_ _hd228127_)
                                        (_g228131228167_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240908240909_)))))
                                   (let ((___kont240910240911_
                                          (lambda (_L228409_ _L228410_)
                                            (let* ((___stx240888240889_
                                                    _L228409_)
                                                   (_g228425228439_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240888240889_)))))
                                              (let ((___kont240890240891_
                                                     (lambda (_L228487_)
                                                       (let ((__tmp241507
                                                              (let ((__tmp241508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__239168239169_
                                _L228410_
                                _L228409_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241508 _bind228106_))))
                 (declare (not safe))
                 (_lp228101_
                  _rest228126_
                  _lift1228104_
                  _lift2228105_
                  __tmp241507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240892240893_
                                                     (lambda (_L228452_)
                                                       (let ((_g241509_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx227463_
                         _L228410_
                         _L228452_
                         '#t))))
                 (begin
                   (let ((_g241510_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241509_)
                                (##vector-length _g241509_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241510_ 3)))
                         (error "Context expects 3 values" _g241510_)))
                   (let ((_ids228462_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241509_ 0)))
                         (_impls228463_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241509_ 1)))
                         (_clauses228464_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241509_ 2))))
                     (let* ((_g241511_
                             (for-each gx#core-bind-runtime! _ids228462_))
                            (_xbind228467_
                             (map _bind-e227465_ _ids228462_ _impls228463_))
                            (_expr*228469_
                             (let ((__tmp241513
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228464_)))
                                   (__tmp241512
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241513
                                __tmp241512)))
                            (_bind*228471_
                             (let ()
                               (declare (not safe))
                               (_bind-e__239168239169_
                                _L228410_
                                _expr*228469_
                                '#f))))
                       (let ((__tmp241515
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228410_)))
                             (__tmp241514
                              (map gxc#identifier-symbol _ids228462_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241515
                          '" => "
                          __tmp241514))
                       (let ((__tmp241517
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2228105_ _xbind228467_)))
                             (__tmp241516
                              (let ()
                                (declare (not safe))
                                (cons _bind*228471_ _bind228106_))))
                         (declare (not safe))
                         (_lp228101_
                          _rest228126_
                          _lift1228104_
                          __tmp241517
                          __tmp241516)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240899240900_
                                                       (lambda (_e228430228479_
                                                                _hd228429228482_
                                                                _tl228428228484_)
                                                         (let ((_L228487_
                                                                _tl228428228484_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L228487_))
                       (___kont240890240891_ _L228487_)
                       (___kont240892240893_ _tl228428228484_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240888240889_))
                                                      (let ((_e228430228479_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240888240889_))))
                (let ((_tl228428228484_
                       (let () (declare (not safe)) (##cdr _e228430228479_)))
                      (_hd228429228482_
                       (let () (declare (not safe)) (##car _e228430228479_))))
                  (___match240899240900_
                   _e228430228479_
                   _hd228429228482_
                   _tl228428228484_)))
              (let () (declare (not safe)) (_g228425228439_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240912240913_
                                          (lambda (_L228237_ _L228238_)
                                            (let* ((_g228252228282_
                                                    (lambda (_g228253228279_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g228253228279_))))
                                                   (_g228251228377_
                                                    (lambda (_g228253228285_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g228253228285_))
                                                          (let ((_e228259228287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g228253228285_))))
                    (let ((_hd228258228290_
                           (let ()
                             (declare (not safe))
                             (##car _e228259228287_)))
                          (_tl228257228292_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228259228287_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228257228292_))
                          (let ((_e228262228295_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228257228292_))))
                            (let ((_hd228261228298_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228262228295_)))
                                  (_tl228260228300_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228262228295_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228261228298_))
                                  (let ((_e228265228303_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228261228298_))))
                                    (let ((_hd228264228306_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228265228303_)))
                                          (_tl228263228308_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228265228303_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228264228306_))
                                          (let ((_e228268228311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228264228306_))))
                                            (let ((_hd228267228314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228268228311_)))
                                                  (_tl228266228316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228268228311_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228267228314_))
                                                  (let ((_e228271228319_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228267228314_))))
                                                    (let ((_hd228270228322_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228271228319_)))
                                                          (_tl228269228324_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228271228319_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228269228324_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228266228316_))
                      (let ((_e228274228327_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228266228316_))))
                        (let ((_hd228273228330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228274228327_)))
                              (_tl228272228332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228274228327_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228272228332_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228263228308_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228260228300_))
                                      (let ((_e228277228335_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228260228300_))))
                                        (let ((_hd228276228338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228277228335_)))
                                              (_tl228275228340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228277228335_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228275228340_))
                                              ((lambda (_L228343_
                                                        _L228344_
                                                        _L228345_)
                                                 (let* ((_lambda-id228369_
                                                         (let ((__tmp241519
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L228238_)))
                       (__tmp241518 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241519 __tmp241518)))
                (_lambda-id228371_
                 (let ((__tmp241520
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx227463_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id228369_ __tmp241520)))
                (_g241521_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id228371_)))
                (_new-case-lambda-expr228374_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L228343_
                    _L228345_
                    _lambda-id228371_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241523
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L228238_)))
                                                         (__tmp241522
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id228371_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241523
                                                      '" => "
                                                      __tmp241522))
                                                   (let ((__tmp241526
                                                          (let ((__tmp241527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__239168239169_
                            _L228238_
                            _new-case-lambda-expr228374_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241527 _rest228126_)))
                 (__tmp241524
                  (let ((__tmp241525
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__239170239171_
                            _lambda-id228371_
                            _L228344_))))
                    (declare (not safe))
                    (cons __tmp241525 _lift1228104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp228101_
                                                      __tmp241526
                                                      __tmp241524
                                                      _lift2228105_
                                                      _bind228106_))))
                                               _hd228276228338_
                                               _hd228273228330_
                                               _hd228270228322_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228252228282_
                                                 _g228253228285_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228252228282_ _g228253228285_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g228252228282_ _g228253228285_)))
                              (let ()
                                (declare (not safe))
                                (_g228252228282_ _g228253228285_)))))
                      (let ()
                        (declare (not safe))
                        (_g228252228282_ _g228253228285_)))
                  (let ()
                    (declare (not safe))
                    (_g228252228282_ _g228253228285_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228252228282_
                                                     _g228253228285_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g228252228282_
                                             _g228253228285_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228252228282_ _g228253228285_)))))
                          (let ()
                            (declare (not safe))
                            (_g228252228282_ _g228253228285_)))))
                  (let ()
                    (declare (not safe))
                    (_g228252228282_ _g228253228285_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g228251228377_ _L228237_))))
                                         (___kont240914240915_
                                          (lambda (_L228188_ _L228189_)
                                            (let ((__tmp241528
                                                   (let ((__tmp241529
                                                          (let ((__tmp241530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241531
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L228188_))))
                           (declare (not safe))
                           (cons __tmp241531 '()))))
                    (declare (not safe))
                    (cons _L228189_ __tmp241530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241529
                                                           _bind228106_))))
                                              (declare (not safe))
                                              (_lp228101_
                                               _rest228126_
                                               _lift1228104_
                                               _lift2228105_
                                               __tmp241528)))))
                                     (let* ((___match240959240960_
                                             (lambda (_e228148228213_
                                                      _hd228147228216_
                                                      _tl228146228218_
                                                      _e228151228221_
                                                      _hd228150228224_
                                                      _tl228149228226_
                                                      _e228154228229_
                                                      _hd228153228232_
                                                      _tl228152228234_)
                                               (let ((_L228237_
                                                      _hd228153228232_)
                                                     (_L228238_
                                                      _hd228150228224_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228238_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L228237_)))
                                                     (___kont240912240913_
                                                      _L228237_
                                                      _L228238_)
                                                     (___kont240914240915_
                                                      _hd228153228232_
                                                      _hd228147228216_)))))
                                            (___match240937240938_
                                             (lambda (_e228137228385_
                                                      _hd228136228388_
                                                      _tl228135228390_
                                                      _e228140228393_
                                                      _hd228139228396_
                                                      _tl228138228398_
                                                      _e228143228401_
                                                      _hd228142228404_
                                                      _tl228141228406_)
                                               (let ((_L228409_
                                                      _hd228142228404_)
                                                     (_L228410_
                                                      _hd228139228396_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228410_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228409_)))
                                                     (___kont240910240911_
                                                      _L228409_
                                                      _L228410_)
                                                     (___match240959240960_
                                                      _e228137228385_
                                                      _hd228136228388_
                                                      _tl228135228390_
                                                      _e228140228393_
                                                      _hd228139228396_
                                                      _tl228138228398_
                                                      _e228143228401_
                                                      _hd228142228404_
                                                      _tl228141228406_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240908240909_))
                                           (let ((_e228137228385_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240908240909_))))
                                             (let ((_tl228135228390_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228137228385_)))
                                                   (_hd228136228388_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228137228385_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228136228388_))
                                                   (let ((_e228140228393_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228136228388_))))
                                                     (let ((_tl228138228398_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228140228393_)))
                                                           (_hd228139228396_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228140228393_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228138228398_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl228135228390_))
                       (let ((_e228143228401_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228135228390_))))
                         (let ((_tl228141228406_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228143228401_)))
                               (_hd228142228404_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228143228401_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228141228406_))
                               (___match240937240938_
                                _e228137228385_
                                _hd228136228388_
                                _tl228135228390_
                                _e228140228393_
                                _hd228139228396_
                                _tl228138228398_
                                _e228143228401_
                                _hd228142228404_
                                _tl228141228406_)
                               (let ()
                                 (declare (not safe))
                                 (_g228131228167_)))))
                       (let () (declare (not safe)) (_g228131228167_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl228135228390_))
                       (let ((_e228162228180_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228135228390_))))
                         (let ((_tl228160228185_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228162228180_)))
                               (_hd228161228183_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228162228180_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228160228185_))
                               (___kont240914240915_
                                _hd228161228183_
                                _hd228136228388_)
                               (let ()
                                 (declare (not safe))
                                 (_g228131228167_)))))
                       (let () (declare (not safe)) (_g228131228167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228135228390_))
                                                       (let ((_e228162228180_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228135228390_))))
                 (let ((_tl228160228185_
                        (let () (declare (not safe)) (##cdr _e228162228180_)))
                       (_hd228161228183_
                        (let () (declare (not safe)) (##car _e228162228180_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228160228185_))
                       (___kont240914240915_ _hd228161228183_ _hd228136228388_)
                       (let () (declare (not safe)) (_g228131228167_)))))
               (let () (declare (not safe)) (_g228131228167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g228131228167_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest228107228115_))
                             (let ((_hd228112228505_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest228107228115_)))
                                   (_tl228113228507_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest228107228115_))))
                               (let* ((_hd228510_ _hd228112228505_)
                                      (_rest228512_ _tl228113228507_))
                                 (declare (not safe))
                                 (_K228111228502_ _rest228512_ _hd228510_)))
                             (let ()
                               (declare (not safe))
                               (_else228109228123_)))))))
                  (_lift-kw-lambda?227467_
                   (lambda (_bind228023_)
                     (let* ((___stx240976240977_ _bind228023_)
                            (_g228026228043_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240976240977_)))))
                       (let ((___kont240978240979_
                              (lambda (_L228079_ _L228080_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L228080_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L228079_))
                                    '#f)))
                             (___kont240980240981_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240976240977_))
                             (let ((_e228032228055_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240976240977_))))
                               (let ((_tl228030228060_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e228032228055_)))
                                     (_hd228031228058_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e228032228055_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd228031228058_))
                                     (let ((_e228035228063_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd228031228058_))))
                                       (let ((_tl228033228068_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e228035228063_)))
                                             (_hd228034228066_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e228035228063_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl228033228068_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl228030228060_))
                                                 (let ((_e228038228071_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl228030228060_))))
                                                   (let ((_tl228036228076_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e228038228071_)))
                                                         (_hd228037228074_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e228038228071_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl228036228076_))
                                                         (___kont240978240979_
                                                          _hd228037228074_
                                                          _hd228034228066_)
                                                         (___kont240980240981_))))
                                                 (___kont240980240981_))
                                             (___kont240980240981_))))
                                     (___kont240980240981_))))
                             (___kont240980240981_))))))
                  (_lift-kw-lambda-bindings227468_
                   (lambda (_bindings227635_)
                     (let _lp227637_ ((_rest227639_ _bindings227635_)
                                      (_lift1227640_ '())
                                      (_lift2227641_ '())
                                      (_bind227642_ '()))
                       (let* ((_rest227643227651_ _rest227639_)
                              (_else227645227659_
                               (lambda ()
                                 (values (reverse _lift1227640_)
                                         (reverse _lift2227641_)
                                         (reverse _bind227642_))))
                              (_K227647228011_
                               (lambda (_rest227662_ _hd227663_)
                                 (let* ((___stx241006241007_ _hd227663_)
                                        (_g227666227691_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx241006241007_)))))
                                   (let ((___kont241008241009_
                                          (lambda (_L227761_ _L227762_)
                                            (let* ((_g227776227829_
                                                    (lambda (_g227777227826_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227777227826_))))
                                                   (_g227775228005_
                                                    (lambda (_g227777227832_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227777227832_))
                                                          (let ((_e227785227834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227777227832_))))
                    (let ((_hd227784227837_
                           (let ()
                             (declare (not safe))
                             (##car _e227785227834_)))
                          (_tl227783227839_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227785227834_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227783227839_))
                          (let ((_e227788227842_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227783227839_))))
                            (let ((_hd227787227845_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227788227842_)))
                                  (_tl227786227847_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227788227842_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227787227845_))
                                  (let ((_e227791227850_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227787227845_))))
                                    (let ((_hd227790227853_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227791227850_)))
                                          (_tl227789227855_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227791227850_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227790227853_))
                                          (let ((_e227794227858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227790227853_))))
                                            (let ((_hd227793227861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227794227858_)))
                                                  (_tl227792227863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227794227858_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227793227861_))
                                                  (let ((_e227797227866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227793227861_))))
                                                    (let ((_hd227796227869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227797227866_)))
                                                          (_tl227795227871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227797227866_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227795227871_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227792227863_))
                      (let ((_e227800227874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227792227863_))))
                        (let ((_hd227799227877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227800227874_)))
                              (_tl227798227879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227800227874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227799227877_))
                              (let ((_e227803227882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227799227877_))))
                                (let ((_hd227802227885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227803227882_)))
                                      (_tl227801227887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227803227882_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227801227887_))
                                      (let ((_e227806227890_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227801227887_))))
                                        (let ((_hd227805227893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227806227890_)))
                                              (_tl227804227895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227806227890_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227805227893_))
                                              (let ((_e227809227898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227805227893_))))
                                                (let ((_hd227808227901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227809227898_)))
                                                      (_tl227807227903_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227809227898_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227808227901_))
                                                      (let ((_e227812227906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227808227901_))))
                (let ((_hd227811227909_
                       (let () (declare (not safe)) (##car _e227812227906_)))
                      (_tl227810227911_
                       (let () (declare (not safe)) (##cdr _e227812227906_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227811227909_))
                      (let ((_e227815227914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227811227909_))))
                        (let ((_hd227814227917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227815227914_)))
                              (_tl227813227919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227815227914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227813227919_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227810227911_))
                                  (let ((_e227818227922_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227810227911_))))
                                    (let ((_hd227817227925_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227818227922_)))
                                          (_tl227816227927_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227818227922_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227816227927_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227807227903_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227804227895_))
                                                  (let ((_e227821227930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227804227895_))))
                                                    (let ((_hd227820227933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227821227930_)))
                                                          (_tl227819227935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227821227930_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227819227935_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227798227879_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227789227855_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227786227847_))
                              (let ((_e227824227938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227786227847_))))
                                (let ((_hd227823227941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227824227938_)))
                                      (_tl227822227943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227824227938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227822227943_))
                                      ((lambda (_L227946_
                                                _L227947_
                                                _L227948_
                                                _L227949_
                                                _L227950_)
                                         (let* ((_get-kws-id227990_
                                                 (let ((__tmp241533
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227762_)))
                                                       (__tmp241532
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241533
                                                    __tmp241532)))
                                                (_get-kws-id227992_
                                                 (let ((__tmp241534
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227463_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227990_
                                                    __tmp241534)))
                                                (_main-id227994_
                                                 (let ((__tmp241536
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227762_)))
                                                       (__tmp241535
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241536
                                                    __tmp241535)))
                                                (_main-id227996_
                                                 (let ((__tmp241537
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227463_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227994_
                                                    __tmp241537)))
                                                (_g241538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227992_)))
                                                (_g241539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227996_)))
                                                (_new-kw-dispatch228000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227946_
                                                    _L227950_
                                                    _get-kws-id227992_)))
                                                (_new-get-kws228002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227947_
                                                    _L227949_
                                                    _main-id227996_))))
                                           (let ((__tmp241542
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227762_)))
                                                 (__tmp241541
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227992_)))
                                                 (__tmp241540
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227996_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241542
                                              '" => "
                                              __tmp241541
                                              '" => "
                                              __tmp241540))
                                           (let ((__tmp241547
                                                  (let ((__tmp241548
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239168239169_
                                                            _main-id227996_
                                                            _L227948_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241548
                                                          _lift1227640_)))
                                                 (__tmp241545
                                                  (let ((__tmp241546
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239168239169_
                                                            _get-kws-id227992_
                                                            _new-get-kws228002_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241546
                                                          _lift2227641_)))
                                                 (__tmp241543
                                                  (let ((__tmp241544
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239168239169_
                                                            _L227762_
                                                            _new-kw-dispatch228000_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241544
                                                          _bind227642_))))
                                             (declare (not safe))
                                             (_lp227637_
                                              _rest227662_
                                              __tmp241547
                                              __tmp241545
                                              __tmp241543))))
                                       _hd227823227941_
                                       _hd227820227933_
                                       _hd227817227925_
                                       _hd227814227917_
                                       _hd227796227869_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227776227829_ _g227777227832_)))))
                              (let ()
                                (declare (not safe))
                                (_g227776227829_ _g227777227832_)))
                          (let ()
                            (declare (not safe))
                            (_g227776227829_ _g227777227832_)))
                      (let ()
                        (declare (not safe))
                        (_g227776227829_ _g227777227832_)))
                  (let ()
                    (declare (not safe))
                    (_g227776227829_ _g227777227832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227776227829_
                                                     _g227777227832_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227776227829_
                                                 _g227777227832_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227776227829_
                                             _g227777227832_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227776227829_ _g227777227832_)))
                              (let ()
                                (declare (not safe))
                                (_g227776227829_ _g227777227832_)))))
                      (let ()
                        (declare (not safe))
                        (_g227776227829_ _g227777227832_)))))
              (let ()
                (declare (not safe))
                (_g227776227829_ _g227777227832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227776227829_
                                                 _g227777227832_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227776227829_ _g227777227832_)))))
                              (let ()
                                (declare (not safe))
                                (_g227776227829_ _g227777227832_)))))
                      (let ()
                        (declare (not safe))
                        (_g227776227829_ _g227777227832_)))
                  (let ()
                    (declare (not safe))
                    (_g227776227829_ _g227777227832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227776227829_
                                                     _g227777227832_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227776227829_
                                             _g227777227832_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227776227829_ _g227777227832_)))))
                          (let ()
                            (declare (not safe))
                            (_g227776227829_ _g227777227832_)))))
                  (let ()
                    (declare (not safe))
                    (_g227776227829_ _g227777227832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227775228005_ _L227761_))))
                                         (___kont241010241011_
                                          (lambda (_L227712_ _L227713_)
                                            (let ((__tmp241549
                                                   (let ((__tmp241550
                                                          (let ((__tmp241551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227712_ '()))))
                    (declare (not safe))
                    (cons _L227713_ __tmp241551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241550
                                                           _bind227642_))))
                                              (declare (not safe))
                                              (_lp227637_
                                               _rest227662_
                                               _lift1227640_
                                               _lift2227641_
                                               __tmp241549)))))
                                     (let ((___match241033241034_
                                            (lambda (_e227672227737_
                                                     _hd227671227740_
                                                     _tl227670227742_
                                                     _e227675227745_
                                                     _hd227674227748_
                                                     _tl227673227750_
                                                     _e227678227753_
                                                     _hd227677227756_
                                                     _tl227676227758_)
                                              (let ((_L227761_
                                                     _hd227677227756_)
                                                    (_L227762_
                                                     _hd227674227748_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227762_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227761_)))
                                                    (___kont241008241009_
                                                     _L227761_
                                                     _L227762_)
                                                    (___kont241010241011_
                                                     _hd227677227756_
                                                     _hd227671227740_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx241006241007_))
                                           (let ((_e227672227737_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx241006241007_))))
                                             (let ((_tl227670227742_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227672227737_)))
                                                   (_hd227671227740_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227672227737_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227671227740_))
                                                   (let ((_e227675227745_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227671227740_))))
                                                     (let ((_tl227673227750_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227675227745_)))
                                                           (_hd227674227748_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227675227745_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227673227750_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227670227742_))
                       (let ((_e227678227753_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227670227742_))))
                         (let ((_tl227676227758_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227678227753_)))
                               (_hd227677227756_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227678227753_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227676227758_))
                               (___match241033241034_
                                _e227672227737_
                                _hd227671227740_
                                _tl227670227742_
                                _e227675227745_
                                _hd227674227748_
                                _tl227673227750_
                                _e227678227753_
                                _hd227677227756_
                                _tl227676227758_)
                               (let ()
                                 (declare (not safe))
                                 (_g227666227691_)))))
                       (let () (declare (not safe)) (_g227666227691_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227670227742_))
                       (let ((_e227686227704_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227670227742_))))
                         (let ((_tl227684227709_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227686227704_)))
                               (_hd227685227707_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227686227704_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227684227709_))
                               (___kont241010241011_
                                _hd227685227707_
                                _hd227671227740_)
                               (let ()
                                 (declare (not safe))
                                 (_g227666227691_)))))
                       (let () (declare (not safe)) (_g227666227691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227670227742_))
                                                       (let ((_e227686227704_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227670227742_))))
                 (let ((_tl227684227709_
                        (let () (declare (not safe)) (##cdr _e227686227704_)))
                       (_hd227685227707_
                        (let () (declare (not safe)) (##car _e227686227704_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227684227709_))
                       (___kont241010241011_ _hd227685227707_ _hd227671227740_)
                       (let () (declare (not safe)) (_g227666227691_)))))
               (let () (declare (not safe)) (_g227666227691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227666227691_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227643227651_))
                             (let ((_hd227648228014_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227643227651_)))
                                   (_tl227649228016_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227643227651_))))
                               (let* ((_hd228019_ _hd227648228014_)
                                      (_rest228021_ _tl227649228016_))
                                 (declare (not safe))
                                 (_K227647228011_ _rest228021_ _hd228019_)))
                             (let ()
                               (declare (not safe))
                               (_else227645227659_))))))))
          (let* ((___stx241050241051_ _stx227463_)
                 (_g227471227497_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241050241051_)))))
            (let ((___kont241052241053_
                   (lambda (_L227557_ _L227558_)
                     (let ((__tmp241553
                            (lambda ()
                              (if (let ((__tmp241580
                                         (let ((__tmp241581
                                                (lambda (_g227586227589_
                                                         _g227587227591_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227586227589_
                                                          _g227587227591_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241581
                                                   '()
                                                   _L227558_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?227467_
                                            __tmp241580))
                                  (let ((_g241567_
                                         (let ((__tmp241569
                                                (let ((__tmp241570
                                                       (lambda (_g227593227596_
                                                                _g227594227598_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227593227596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227594227598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241570
                                                          '()
                                                          _L227558_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings227468_
                                            __tmp241569))))
                                    (begin
                                      (let ((_g241568_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241567_)
                                                   (##vector-length _g241567_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241568_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241568_)))
                                      (let ((_lift1227601_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241567_ 0)))
                                            (_lift2227602_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241567_ 1)))
                                            (_hd227603_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241567_ 2))))
                                        (let* ((_expr227605_
                                                (let ((__tmp241571
                                                       (let ((__tmp241572
                                                              (let ((__tmp241573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227557_ '()))))
                        (declare (not safe))
                        (cons _hd227603_ __tmp241573))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241571
                                                   _stx227463_)))
                                               (_expr227607_
                                                (let ((__tmp241574
                                                       (let ((__tmp241575
                                                              (let ((__tmp241576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227605_ '()))))
                        (declare (not safe))
                        (cons _lift2227602_ __tmp241576))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241574
                                                   _stx227463_)))
                                               (_expr227609_
                                                (let ((__tmp241577
                                                       (let ((__tmp241578
                                                              (let ((__tmp241579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227607_ '()))))
                        (declare (not safe))
                        (cons _lift1227601_ __tmp241579))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241577
                                                   _stx227463_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227609_))))))
                                  (let ((_g241554_
                                         (let ((__tmp241556
                                                (let ((__tmp241557
                                                       (lambda (_g227611227614_
                                                                _g227612227616_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227611227614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227612227616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241557
                                                          '()
                                                          _L227558_))))
                                           (declare (not safe))
                                           (_compile-bindings227466_
                                            __tmp241556))))
                                    (begin
                                      (let ((_g241555_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241554_)
                                                   (##vector-length _g241554_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241555_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241555_)))
                                      (let ((_lift1227619_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241554_ 0)))
                                            (_lift2227620_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241554_ 1)))
                                            (_hd227621_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241554_ 2))))
                                        (let* ((_body227623_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227557_)))
                                               (_expr227625_
                                                (let ((__tmp241558
                                                       (let ((__tmp241559
                                                              (let ((__tmp241560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227623_ '()))))
                        (declare (not safe))
                        (cons _hd227621_ __tmp241560))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241558
                                                   _stx227463_)))
                                               (_expr227627_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227620_))
                                                    _expr227625_
                                                    (let ((__tmp241561
                                                           (let ((__tmp241562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241563
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227625_ '()))))
                            (declare (not safe))
                            (cons _lift2227620_ __tmp241563))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241562))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241561 _stx227463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227629_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227619_))
                                                    _expr227627_
                                                    (let ((__tmp241564
                                                           (let ((__tmp241565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241566
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227627_ '()))))
                            (declare (not safe))
                            (cons _lift1227619_ __tmp241566))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241565))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241564 _stx227463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227629_)))))))
                           (__tmp241552
                            (let ((__obj241256
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241256)
                              __obj241256)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241553
                        gx#current-expander-context
                        __tmp241552))))
                  (___kont241056241057_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx227463_)))))
              (let ((___match241077241078_
                     (lambda (_e227477227509_
                              _hd227476227512_
                              _tl227475227514_
                              _e227480227517_
                              _hd227479227520_
                              _tl227478227522_
                              ___splice241054241055_
                              _target227481227525_
                              _tl227483227527_)
                       (letrec ((_loop227484227530_
                                 (lambda (_hd227482227533_ _bind227488227535_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd227482227533_))
                                       (let ((_e227485227538_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd227482227533_))))
                                         (let ((_lp-tl227487227543_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e227485227538_)))
                                               (_lp-hd227486227541_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e227485227538_))))
                                           (let ((__tmp241584
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd227486227541_
                                                          _bind227488227535_))))
                                             (declare (not safe))
                                             (_loop227484227530_
                                              _lp-tl227487227543_
                                              __tmp241584))))
                                       (let ((_bind227489227546_
                                              (reverse _bind227488227535_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl227478227522_))
                                             (let ((_e227492227549_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl227478227522_))))
                                               (let ((_tl227490227554_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e227492227549_)))
                                                     (_hd227491227552_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e227492227549_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl227490227554_))
                                                     (let ((_L227557_
                                                            _hd227491227552_)
                                                           (_L227558_
                                                            _bind227489227546_))
                                                       (if (let ((__tmp241582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241583
                                 (lambda (_g227578227581_ _g227579227583_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227578227581_ _g227579227583_)))))
                            (declare (not safe))
                            (foldr1 __tmp241583 '() _L227558_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241582))
                   (___kont241052241053_ _L227557_ _L227558_)
                   (___kont241056241057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont241056241057_))))
                                             (___kont241056241057_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop227484227530_ _target227481227525_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241050241051_))
                    (let ((_e227477227509_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241050241051_))))
                      (let ((_tl227475227514_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227477227509_)))
                            (_hd227476227512_
                             (let ()
                               (declare (not safe))
                               (##car _e227477227509_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227475227514_))
                            (let ((_e227480227517_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227475227514_))))
                              (let ((_tl227478227522_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227480227517_)))
                                    (_hd227479227520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227480227517_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd227479227520_))
                                    (let ((___splice241054241055_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd227479227520_
                                              '0))))
                                      (let ((_tl227483227527_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241054241055_
                                                '1)))
                                            (_target227481227525_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241054241055_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl227483227527_))
                                            (___match241077241078_
                                             _e227477227509_
                                             _hd227476227512_
                                             _tl227475227514_
                                             _e227480227517_
                                             _hd227479227520_
                                             _tl227478227522_
                                             ___splice241054241055_
                                             _target227481227525_
                                             _tl227483227527_)
                                            (___kont241056241057_))))
                                    (___kont241056241057_))))
                            (___kont241056241057_))))
                    (___kont241056241057_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226607_)
        (letrec* ((_bind-e__239173239174_
                   (lambda (_id227447_ _expr227448_ _compile?227449_)
                     (let ((__tmp241587
                            (let ()
                              (declare (not safe))
                              (cons _id227447_ '())))
                           (__tmp241585
                            (let ((__tmp241586
                                   (if _compile?227449_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227448_))
                                       _expr227448_)))
                              (declare (not safe))
                              (cons __tmp241586 '()))))
                       (declare (not safe))
                       (cons __tmp241587 __tmp241585))))
                  (_bind-e__0__239175239176_
                   (lambda (_id227454_ _expr227455_)
                     (let ((_compile?227457_ '#t))
                       (declare (not safe))
                       (_bind-e__239173239174_
                        _id227454_
                        _expr227455_
                        _compile?227457_))))
                  (_bind-e226609_
                   (lambda _g241589_
                     (let ((_g241588_
                            (let ()
                              (declare (not safe))
                              (##length _g241589_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241588_ 2))
                              (apply (lambda (_id227454_ _expr227455_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__239175239176_
                                          _id227454_
                                          _expr227455_)))
                                     _g241589_))
                             ((let () (declare (not safe)) (##fx= _g241588_ 3))
                              (apply (lambda (_id227459_
                                              _expr227460_
                                              _compile?227461_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__239173239174_
                                          _id227459_
                                          _expr227460_
                                          _compile?227461_)))
                                     _g241589_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241589_))))))
                  (_compile-bindings226610_
                   (lambda (_rest226745_)
                     (let _lp226747_ ((_rest226749_ _rest226745_)
                                      (_bind226750_ '()))
                       (let* ((_rest226751226759_ _rest226749_)
                              (_else226753226767_
                               (lambda () (reverse _bind226750_)))
                              (_K226755227434_
                               (lambda (_rest226770_ _hd226771_)
                                 (let* ((___stx241100241101_ _hd226771_)
                                        (_g226776226823_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx241100241101_)))))
                                   (let ((___kont241102241103_
                                          (lambda (_L227341_ _L227342_)
                                            (let* ((___stx241080241081_
                                                    _L227341_)
                                                   (_g227357227371_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx241080241081_)))))
                                              (let ((___kont241082241083_
                                                     (lambda (_L227419_)
                                                       (let ((__tmp241590
                                                              (let ((__tmp241591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__239173239174_
                                _L227342_
                                _L227341_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241591 _bind226750_))))
                 (declare (not safe))
                 (_lp226747_ _rest226770_ __tmp241590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241084241085_
                                                     (lambda (_L227384_)
                                                       (let ((_g241592_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226607_
                         _L227342_
                         _L227384_
                         '#t))))
                 (begin
                   (let ((_g241593_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241592_)
                                (##vector-length _g241592_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241593_ 3)))
                         (error "Context expects 3 values" _g241593_)))
                   (let ((_ids227394_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241592_ 0)))
                         (_impls227395_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241592_ 1)))
                         (_clauses227396_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241592_ 2))))
                     (let* ((_g241594_
                             (for-each gx#core-bind-runtime! _ids227394_))
                            (_xbind227399_
                             (map _bind-e226609_ _ids227394_ _impls227395_))
                            (_expr*227401_
                             (let ((__tmp241596
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227396_)))
                                   (__tmp241595
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241596
                                __tmp241595)))
                            (_bind*227403_
                             (let ()
                               (declare (not safe))
                               (_bind-e__239173239174_
                                _L227342_
                                _expr*227401_
                                '#f))))
                       (let ((__tmp241598
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L227342_)))
                             (__tmp241597
                              (map gxc#identifier-symbol _ids227394_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241598
                          '" => "
                          __tmp241597))
                       (let ((__tmp241599
                              (let ((__tmp241600
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226750_
                                               _xbind227399_))))
                                (declare (not safe))
                                (cons _bind*227403_ __tmp241600))))
                         (declare (not safe))
                         (_lp226747_ _rest226770_ __tmp241599)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match241091241092_
                                                       (lambda (_e227362227411_
                                                                _hd227361227414_
                                                                _tl227360227416_)
                                                         (let ((_L227419_
                                                                _tl227360227416_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227419_))
                       (___kont241082241083_ _L227419_)
                       (___kont241084241085_ _tl227360227416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx241080241081_))
                                                      (let ((_e227362227411_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx241080241081_))))
                (let ((_tl227360227416_
                       (let () (declare (not safe)) (##cdr _e227362227411_)))
                      (_hd227361227414_
                       (let () (declare (not safe)) (##car _e227362227411_))))
                  (___match241091241092_
                   _e227362227411_
                   _hd227361227414_
                   _tl227360227416_)))
              (let () (declare (not safe)) (_g227357227371_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont241104241105_
                                          (lambda (_L227169_ _L227170_)
                                            (let* ((_g227184227214_
                                                    (lambda (_g227185227211_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227185227211_))))
                                                   (_g227183227309_
                                                    (lambda (_g227185227217_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227185227217_))
                                                          (let ((_e227191227219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227185227217_))))
                    (let ((_hd227190227222_
                           (let ()
                             (declare (not safe))
                             (##car _e227191227219_)))
                          (_tl227189227224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227191227219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227189227224_))
                          (let ((_e227194227227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227189227224_))))
                            (let ((_hd227193227230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227194227227_)))
                                  (_tl227192227232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227194227227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227193227230_))
                                  (let ((_e227197227235_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227193227230_))))
                                    (let ((_hd227196227238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227197227235_)))
                                          (_tl227195227240_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227197227235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227196227238_))
                                          (let ((_e227200227243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227196227238_))))
                                            (let ((_hd227199227246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227200227243_)))
                                                  (_tl227198227248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227200227243_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227199227246_))
                                                  (let ((_e227203227251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227199227246_))))
                                                    (let ((_hd227202227254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227203227251_)))
                                                          (_tl227201227256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227203227251_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227201227256_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227198227248_))
                      (let ((_e227206227259_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227198227248_))))
                        (let ((_hd227205227262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227206227259_)))
                              (_tl227204227264_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227206227259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227204227264_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227195227240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227192227232_))
                                      (let ((_e227209227267_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227192227232_))))
                                        (let ((_hd227208227270_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227209227267_)))
                                              (_tl227207227272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227209227267_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227207227272_))
                                              ((lambda (_L227275_
                                                        _L227276_
                                                        _L227277_)
                                                 (let* ((_lambda-id227301_
                                                         (let ((__tmp241602
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L227170_)))
                       (__tmp241601 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241602 __tmp241601)))
                (_lambda-id227303_
                 (let ((__tmp241603
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226607_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227301_ __tmp241603)))
                (_g241604_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227303_)))
                (_new-case-lambda-expr227306_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227275_
                    _L227277_
                    _lambda-id227303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241606
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L227170_)))
                                                         (__tmp241605
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227303_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241606
                                                      '" => "
                                                      __tmp241605))
                                                   (let ((__tmp241609
                                                          (let ((__tmp241610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__239173239174_
                            _L227170_
                            _new-case-lambda-expr227306_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241610 _rest226770_)))
                 (__tmp241607
                  (let ((__tmp241608
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__239175239176_
                            _lambda-id227303_
                            _L227276_))))
                    (declare (not safe))
                    (cons __tmp241608 _bind226750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226747_
                                                      __tmp241609
                                                      __tmp241607))))
                                               _hd227208227270_
                                               _hd227205227262_
                                               _hd227202227254_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227184227214_
                                                 _g227185227217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227184227214_ _g227185227217_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g227184227214_ _g227185227217_)))
                              (let ()
                                (declare (not safe))
                                (_g227184227214_ _g227185227217_)))))
                      (let ()
                        (declare (not safe))
                        (_g227184227214_ _g227185227217_)))
                  (let ()
                    (declare (not safe))
                    (_g227184227214_ _g227185227217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227184227214_
                                                     _g227185227217_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227184227214_
                                             _g227185227217_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227184227214_ _g227185227217_)))))
                          (let ()
                            (declare (not safe))
                            (_g227184227214_ _g227185227217_)))))
                  (let ()
                    (declare (not safe))
                    (_g227184227214_ _g227185227217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227183227309_ _L227169_))))
                                         (___kont241106241107_
                                          (lambda (_L226893_ _L226894_)
                                            (let* ((_g226908226961_
                                                    (lambda (_g226909226958_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226909226958_))))
                                                   (_g226907227137_
                                                    (lambda (_g226909226964_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226909226964_))
                                                          (let ((_e226917226966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226909226964_))))
                    (let ((_hd226916226969_
                           (let ()
                             (declare (not safe))
                             (##car _e226917226966_)))
                          (_tl226915226971_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226917226966_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226915226971_))
                          (let ((_e226920226974_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226915226971_))))
                            (let ((_hd226919226977_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226920226974_)))
                                  (_tl226918226979_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226920226974_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226919226977_))
                                  (let ((_e226923226982_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226919226977_))))
                                    (let ((_hd226922226985_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226923226982_)))
                                          (_tl226921226987_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226923226982_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226922226985_))
                                          (let ((_e226926226990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226922226985_))))
                                            (let ((_hd226925226993_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226926226990_)))
                                                  (_tl226924226995_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226926226990_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226925226993_))
                                                  (let ((_e226929226998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226925226993_))))
                                                    (let ((_hd226928227001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226929226998_)))
                                                          (_tl226927227003_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226929226998_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226927227003_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226924226995_))
                      (let ((_e226932227006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226924226995_))))
                        (let ((_hd226931227009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226932227006_)))
                              (_tl226930227011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226932227006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226931227009_))
                              (let ((_e226935227014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226931227009_))))
                                (let ((_hd226934227017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226935227014_)))
                                      (_tl226933227019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226935227014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226933227019_))
                                      (let ((_e226938227022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226933227019_))))
                                        (let ((_hd226937227025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226938227022_)))
                                              (_tl226936227027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226938227022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226937227025_))
                                              (let ((_e226941227030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226937227025_))))
                                                (let ((_hd226940227033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226941227030_)))
                                                      (_tl226939227035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226941227030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226940227033_))
                                                      (let ((_e226944227038_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226940227033_))))
                (let ((_hd226943227041_
                       (let () (declare (not safe)) (##car _e226944227038_)))
                      (_tl226942227043_
                       (let () (declare (not safe)) (##cdr _e226944227038_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226943227041_))
                      (let ((_e226947227046_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226943227041_))))
                        (let ((_hd226946227049_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226947227046_)))
                              (_tl226945227051_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226947227046_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226945227051_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226942227043_))
                                  (let ((_e226950227054_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226942227043_))))
                                    (let ((_hd226949227057_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226950227054_)))
                                          (_tl226948227059_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226950227054_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226948227059_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226939227035_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226936227027_))
                                                  (let ((_e226953227062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226936227027_))))
                                                    (let ((_hd226952227065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226953227062_)))
                                                          (_tl226951227067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226953227062_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226951227067_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226930227011_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226921226987_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226918226979_))
                              (let ((_e226956227070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226918226979_))))
                                (let ((_hd226955227073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226956227070_)))
                                      (_tl226954227075_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226956227070_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226954227075_))
                                      ((lambda (_L227078_
                                                _L227079_
                                                _L227080_
                                                _L227081_
                                                _L227082_)
                                         (let* ((_get-kws-id227122_
                                                 (let ((__tmp241612
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226894_)))
                                                       (__tmp241611
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241612
                                                    __tmp241611)))
                                                (_get-kws-id227124_
                                                 (let ((__tmp241613
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226607_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227122_
                                                    __tmp241613)))
                                                (_main-id227126_
                                                 (let ((__tmp241615
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226894_)))
                                                       (__tmp241614
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241615
                                                    __tmp241614)))
                                                (_main-id227128_
                                                 (let ((__tmp241616
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226607_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227126_
                                                    __tmp241616)))
                                                (_g241617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227124_)))
                                                (_g241618_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227128_)))
                                                (_new-kw-dispatch227132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227078_
                                                    _L227082_
                                                    _get-kws-id227124_)))
                                                (_new-get-kws227134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227079_
                                                    _L227081_
                                                    _main-id227128_))))
                                           (let ((__tmp241621
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226894_)))
                                                 (__tmp241620
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227124_)))
                                                 (__tmp241619
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227128_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241621
                                              '" => "
                                              __tmp241620
                                              '" => "
                                              __tmp241619))
                                           (let ((__tmp241622
                                                  (let ((__tmp241627
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239173239174_
                                                            _main-id227128_
                                                            _L227080_
                                                            '#f)))
                                                        (__tmp241623
                                                         (let ((__tmp241626
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__239173239174_
                           _get-kws-id227124_
                           _new-get-kws227134_
                           '#f)))
                       (__tmp241624
                        (let ((__tmp241625
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__239173239174_
                                  _L226894_
                                  _new-kw-dispatch227132_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241625 _rest226770_))))
                   (declare (not safe))
                   (cons __tmp241626 __tmp241624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241627
                                                          __tmp241623))))
                                             (declare (not safe))
                                             (_lp226747_
                                              __tmp241622
                                              _bind226750_))))
                                       _hd226955227073_
                                       _hd226952227065_
                                       _hd226949227057_
                                       _hd226946227049_
                                       _hd226928227001_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226908226961_ _g226909226964_)))))
                              (let ()
                                (declare (not safe))
                                (_g226908226961_ _g226909226964_)))
                          (let ()
                            (declare (not safe))
                            (_g226908226961_ _g226909226964_)))
                      (let ()
                        (declare (not safe))
                        (_g226908226961_ _g226909226964_)))
                  (let ()
                    (declare (not safe))
                    (_g226908226961_ _g226909226964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226908226961_
                                                     _g226909226964_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226908226961_
                                                 _g226909226964_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226908226961_
                                             _g226909226964_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226908226961_ _g226909226964_)))
                              (let ()
                                (declare (not safe))
                                (_g226908226961_ _g226909226964_)))))
                      (let ()
                        (declare (not safe))
                        (_g226908226961_ _g226909226964_)))))
              (let ()
                (declare (not safe))
                (_g226908226961_ _g226909226964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226908226961_
                                                 _g226909226964_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226908226961_ _g226909226964_)))))
                              (let ()
                                (declare (not safe))
                                (_g226908226961_ _g226909226964_)))))
                      (let ()
                        (declare (not safe))
                        (_g226908226961_ _g226909226964_)))
                  (let ()
                    (declare (not safe))
                    (_g226908226961_ _g226909226964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226908226961_
                                                     _g226909226964_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226908226961_
                                             _g226909226964_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226908226961_ _g226909226964_)))))
                          (let ()
                            (declare (not safe))
                            (_g226908226961_ _g226909226964_)))))
                  (let ()
                    (declare (not safe))
                    (_g226908226961_ _g226909226964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226907227137_ _L226893_))))
                                         (___kont241108241109_
                                          (lambda (_L226844_ _L226845_)
                                            (let ((__tmp241628
                                                   (let ((__tmp241629
                                                          (let ((__tmp241630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241631
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226844_))))
                           (declare (not safe))
                           (cons __tmp241631 '()))))
                    (declare (not safe))
                    (cons _L226845_ __tmp241630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241629
                                                           _bind226750_))))
                                              (declare (not safe))
                                              (_lp226747_
                                               _rest226770_
                                               __tmp241628)))))
                                     (let* ((___match241175241176_
                                             (lambda (_e226804226869_
                                                      _hd226803226872_
                                                      _tl226802226874_
                                                      _e226807226877_
                                                      _hd226806226880_
                                                      _tl226805226882_
                                                      _e226810226885_
                                                      _hd226809226888_
                                                      _tl226808226890_)
                                               (let ((_L226893_
                                                      _hd226809226888_)
                                                     (_L226894_
                                                      _hd226806226880_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226894_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226893_)))
                                                     (___kont241106241107_
                                                      _L226893_
                                                      _L226894_)
                                                     (___kont241108241109_
                                                      _hd226809226888_
                                                      _hd226803226872_)))))
                                            (___match241153241154_
                                             (lambda (_e226793227145_
                                                      _hd226792227148_
                                                      _tl226791227150_
                                                      _e226796227153_
                                                      _hd226795227156_
                                                      _tl226794227158_
                                                      _e226799227161_
                                                      _hd226798227164_
                                                      _tl226797227166_)
                                               (let ((_L227169_
                                                      _hd226798227164_)
                                                     (_L227170_
                                                      _hd226795227156_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227170_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L227169_)))
                                                     (___kont241104241105_
                                                      _L227169_
                                                      _L227170_)
                                                     (___match241175241176_
                                                      _e226793227145_
                                                      _hd226792227148_
                                                      _tl226791227150_
                                                      _e226796227153_
                                                      _hd226795227156_
                                                      _tl226794227158_
                                                      _e226799227161_
                                                      _hd226798227164_
                                                      _tl226797227166_)))))
                                            (___match241131241132_
                                             (lambda (_e226782227317_
                                                      _hd226781227320_
                                                      _tl226780227322_
                                                      _e226785227325_
                                                      _hd226784227328_
                                                      _tl226783227330_
                                                      _e226788227333_
                                                      _hd226787227336_
                                                      _tl226786227338_)
                                               (let ((_L227341_
                                                      _hd226787227336_)
                                                     (_L227342_
                                                      _hd226784227328_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227342_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L227341_)))
                                                     (___kont241102241103_
                                                      _L227341_
                                                      _L227342_)
                                                     (___match241153241154_
                                                      _e226782227317_
                                                      _hd226781227320_
                                                      _tl226780227322_
                                                      _e226785227325_
                                                      _hd226784227328_
                                                      _tl226783227330_
                                                      _e226788227333_
                                                      _hd226787227336_
                                                      _tl226786227338_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx241100241101_))
                                           (let ((_e226782227317_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx241100241101_))))
                                             (let ((_tl226780227322_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226782227317_)))
                                                   (_hd226781227320_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226782227317_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226781227320_))
                                                   (let ((_e226785227325_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226781227320_))))
                                                     (let ((_tl226783227330_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226785227325_)))
                                                           (_hd226784227328_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226785227325_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226783227330_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226780227322_))
                       (let ((_e226788227333_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226780227322_))))
                         (let ((_tl226786227338_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226788227333_)))
                               (_hd226787227336_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226788227333_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226786227338_))
                               (___match241131241132_
                                _e226782227317_
                                _hd226781227320_
                                _tl226780227322_
                                _e226785227325_
                                _hd226784227328_
                                _tl226783227330_
                                _e226788227333_
                                _hd226787227336_
                                _tl226786227338_)
                               (let ()
                                 (declare (not safe))
                                 (_g226776226823_)))))
                       (let () (declare (not safe)) (_g226776226823_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226780227322_))
                       (let ((_e226818226836_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226780227322_))))
                         (let ((_tl226816226841_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226818226836_)))
                               (_hd226817226839_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226818226836_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226816226841_))
                               (___kont241108241109_
                                _hd226817226839_
                                _hd226781227320_)
                               (let ()
                                 (declare (not safe))
                                 (_g226776226823_)))))
                       (let () (declare (not safe)) (_g226776226823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226780227322_))
                                                       (let ((_e226818226836_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226780227322_))))
                 (let ((_tl226816226841_
                        (let () (declare (not safe)) (##cdr _e226818226836_)))
                       (_hd226817226839_
                        (let () (declare (not safe)) (##car _e226818226836_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226816226841_))
                       (___kont241108241109_ _hd226817226839_ _hd226781227320_)
                       (let () (declare (not safe)) (_g226776226823_)))))
               (let () (declare (not safe)) (_g226776226823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226776226823_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226751226759_))
                             (let ((_hd226756227437_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226751226759_)))
                                   (_tl226757227439_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226751226759_))))
                               (let* ((_hd227442_ _hd226756227437_)
                                      (_rest227444_ _tl226757227439_))
                                 (declare (not safe))
                                 (_K226755227434_ _rest227444_ _hd227442_)))
                             (let ()
                               (declare (not safe))
                               (_else226753226767_))))))))
          (let* ((___stx241192241193_ _stx226607_)
                 (_g226613226640_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241192241193_)))))
            (let ((___kont241194241195_
                   (lambda (_L226700_ _L226701_ _L226702_)
                     (let ((__tmp241633
                            (lambda ()
                              (let ((_hd226739_
                                     (let ((__tmp241634
                                            (let ((__tmp241635
                                                   (lambda (_g226731226734_
                                                            _g226732226736_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226731226734_
                                                             _g226732226736_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241635
                                                      '()
                                                      _L226701_))))
                                       (declare (not safe))
                                       (_compile-bindings226610_ __tmp241634)))
                                    (_body226740_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226700_))))
                                (let ((__tmp241636
                                       (let ((__tmp241637
                                              (let ((__tmp241638
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226740_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226739_
                                                      __tmp241638))))
                                         (declare (not safe))
                                         (cons _L226702_ __tmp241637))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241636
                                   _stx226607_)))))
                           (__tmp241632
                            (let ((__obj241257
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241257)
                              __obj241257)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241633
                        gx#current-expander-context
                        __tmp241632))))
                  (___kont241198241199_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226607_)))))
              (let ((___match241219241220_
                     (lambda (_e226620226652_
                              _hd226619226655_
                              _tl226618226657_
                              _e226623226660_
                              _hd226622226663_
                              _tl226621226665_
                              ___splice241196241197_
                              _target226624226668_
                              _tl226626226670_)
                       (letrec ((_loop226627226673_
                                 (lambda (_hd226625226676_ _bind226631226678_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226625226676_))
                                       (let ((_e226628226681_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226625226676_))))
                                         (let ((_lp-tl226630226686_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226628226681_)))
                                               (_lp-hd226629226684_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226628226681_))))
                                           (let ((__tmp241641
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226629226684_
                                                          _bind226631226678_))))
                                             (declare (not safe))
                                             (_loop226627226673_
                                              _lp-tl226630226686_
                                              __tmp241641))))
                                       (let ((_bind226632226689_
                                              (reverse _bind226631226678_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226621226665_))
                                             (let ((_e226635226692_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226621226665_))))
                                               (let ((_tl226633226697_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226635226692_)))
                                                     (_hd226634226695_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226635226692_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226633226697_))
                                                     (let ((_L226700_
                                                            _hd226634226695_)
                                                           (_L226701_
                                                            _bind226632226689_)
                                                           (_L226702_
                                                            _hd226619226655_))
                                                       (if (let ((__tmp241639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241640
                                 (lambda (_g226723226726_ _g226724226728_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226723226726_ _g226724226728_)))))
                            (declare (not safe))
                            (foldr1 __tmp241640 '() _L226701_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241639))
                   (___kont241194241195_ _L226700_ _L226701_ _L226702_)
                   (___kont241198241199_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont241198241199_))))
                                             (___kont241198241199_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226627226673_ _target226624226668_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241192241193_))
                    (let ((_e226620226652_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241192241193_))))
                      (let ((_tl226618226657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226620226652_)))
                            (_hd226619226655_
                             (let ()
                               (declare (not safe))
                               (##car _e226620226652_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226618226657_))
                            (let ((_e226623226660_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226618226657_))))
                              (let ((_tl226621226665_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226623226660_)))
                                    (_hd226622226663_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226623226660_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226622226663_))
                                    (let ((___splice241196241197_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226622226663_
                                              '0))))
                                      (let ((_tl226626226670_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241196241197_
                                                '1)))
                                            (_target226624226668_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241196241197_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226626226670_))
                                            (___match241219241220_
                                             _e226620226652_
                                             _hd226619226655_
                                             _tl226618226657_
                                             _e226623226660_
                                             _hd226622226663_
                                             _tl226621226665_
                                             ___splice241196241197_
                                             _target226624226668_
                                             _tl226626226670_)
                                            (___kont241198241199_))))
                                    (___kont241198241199_))))
                            (___kont241198241199_))))
                    (___kont241198241199_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226525_)
        (let* ((___stx241222241223_ _bind226525_)
               (_g226528226545_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241222241223_)))))
          (let ((___kont241224241225_
                 (lambda (_L226581_ _L226582_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226582_))
                       (let ((_$e226598_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226581_))))
                         (if _$e226598_
                             _$e226598_
                             (let ((_$e226601_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226581_))))
                               (if _$e226601_
                                   _$e226601_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226581_))))))
                       '#f)))
                (___kont241226241227_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241222241223_))
                (let ((_e226534226557_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241222241223_))))
                  (let ((_tl226532226562_
                         (let () (declare (not safe)) (##cdr _e226534226557_)))
                        (_hd226533226560_
                         (let ()
                           (declare (not safe))
                           (##car _e226534226557_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226533226560_))
                        (let ((_e226537226565_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226533226560_))))
                          (let ((_tl226535226570_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226537226565_)))
                                (_hd226536226568_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226537226565_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226535226570_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226532226562_))
                                    (let ((_e226540226573_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226532226562_))))
                                      (let ((_tl226538226578_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226540226573_)))
                                            (_hd226539226576_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226540226573_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226538226578_))
                                            (___kont241224241225_
                                             _hd226539226576_
                                             _hd226536226568_)
                                            (___kont241226241227_))))
                                    (___kont241226241227_))
                                (___kont241226241227_))))
                        (___kont241226241227_))))
                (___kont241226241227_))))))))
