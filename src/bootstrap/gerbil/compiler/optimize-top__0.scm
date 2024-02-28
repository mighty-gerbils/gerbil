(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709111637)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126303_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128396 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126303_ __tmp128396))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126303_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126303_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126303_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126303_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126303_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126286_ . _args126288_)
        (let ((__tmp128398
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126288_)
                     (gxc#compile-e__0 _stx126286_)
                     (let ((_arg1126293_ (car _args126288_))
                           (_rest126295_ (cdr _args126288_)))
                       (if (null? _rest126295_)
                           (gxc#compile-e__1 _stx126286_ _arg1126293_)
                           (let ((_arg2126298_ (car _rest126295_))
                                 (_rest126300_ (cdr _rest126295_)))
                             (if (null? _rest126300_)
                                 (gxc#compile-e__2
                                  _stx126286_
                                  _arg1126293_
                                  _arg2126298_)
                                 (apply gxc#compile-e
                                        _stx126286_
                                        _arg1126293_
                                        _arg2126298_
                                        _rest126300_))))))))
              (__tmp128397 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128398
           gxc#current-compile-methods
           __tmp128397))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126283_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128399 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126283_ __tmp128399))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126283_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126283_ '%#call gxc#basic-expression-type-call%))
           _tbl126283_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126266_ . _args126268_)
        (let ((__tmp128401
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126268_)
                     (gxc#compile-e__0 _stx126266_)
                     (let ((_arg1126273_ (car _args126268_))
                           (_rest126275_ (cdr _args126268_)))
                       (if (null? _rest126275_)
                           (gxc#compile-e__1 _stx126266_ _arg1126273_)
                           (let ((_arg2126278_ (car _rest126275_))
                                 (_rest126280_ (cdr _rest126275_)))
                             (if (null? _rest126280_)
                                 (gxc#compile-e__2
                                  _stx126266_
                                  _arg1126273_
                                  _arg2126278_)
                                 (apply gxc#compile-e
                                        _stx126266_
                                        _arg1126273_
                                        _arg2126278_
                                        _rest126280_))))))))
              (__tmp128400 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128401
           gxc#current-compile-methods
           __tmp128400))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126263_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128402 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126263_ __tmp128402))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126263_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126263_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126263_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126263_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126263_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126263_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126263_ '%#set! gxc#collect-body-setq%))
           _tbl126263_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126246_ . _args126248_)
        (let ((__tmp128404
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126248_)
                     (gxc#compile-e__0 _stx126246_)
                     (let ((_arg1126253_ (car _args126248_))
                           (_rest126255_ (cdr _args126248_)))
                       (if (null? _rest126255_)
                           (gxc#compile-e__1 _stx126246_ _arg1126253_)
                           (let ((_arg2126258_ (car _rest126255_))
                                 (_rest126260_ (cdr _rest126255_)))
                             (if (null? _rest126260_)
                                 (gxc#compile-e__2
                                  _stx126246_
                                  _arg1126253_
                                  _arg2126258_)
                                 (apply gxc#compile-e
                                        _stx126246_
                                        _arg1126253_
                                        _arg2126258_
                                        _rest126260_))))))))
              (__tmp128403 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128404
           gxc#current-compile-methods
           __tmp128403))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126243_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128405 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126243_ __tmp128405))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126243_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126243_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126243_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126243_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126243_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126243_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126243_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126243_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126243_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126243_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126226_ . _args126228_)
        (let ((__tmp128407
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126228_)
                     (gxc#compile-e__0 _stx126226_)
                     (let ((_arg1126233_ (car _args126228_))
                           (_rest126235_ (cdr _args126228_)))
                       (if (null? _rest126235_)
                           (gxc#compile-e__1 _stx126226_ _arg1126233_)
                           (let ((_arg2126238_ (car _rest126235_))
                                 (_rest126240_ (cdr _rest126235_)))
                             (if (null? _rest126240_)
                                 (gxc#compile-e__2
                                  _stx126226_
                                  _arg1126233_
                                  _arg2126238_)
                                 (apply gxc#compile-e
                                        _stx126226_
                                        _arg1126233_
                                        _arg2126238_
                                        _rest126240_))))))))
              (__tmp128406 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128407
           gxc#current-compile-methods
           __tmp128406))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126223_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128408 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126223_ __tmp128408))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126223_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126223_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126223_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126223_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126223_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126206_ . _args126208_)
        (let ((__tmp128410
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126208_)
                     (gxc#compile-e__0 _stx126206_)
                     (let ((_arg1126213_ (car _args126208_))
                           (_rest126215_ (cdr _args126208_)))
                       (if (null? _rest126215_)
                           (gxc#compile-e__1 _stx126206_ _arg1126213_)
                           (let ((_arg2126218_ (car _rest126215_))
                                 (_rest126220_ (cdr _rest126215_)))
                             (if (null? _rest126220_)
                                 (gxc#compile-e__2
                                  _stx126206_
                                  _arg1126213_
                                  _arg2126218_)
                                 (apply gxc#compile-e
                                        _stx126206_
                                        _arg1126213_
                                        _arg2126218_
                                        _rest126220_))))))))
              (__tmp128409 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128410
           gxc#current-compile-methods
           __tmp128409))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126109_)
        (let* ((___stx126316126317_ _stx126109_)
               (_g126112126132_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126316126317_)))))
          (let ((___kont126318126319_
                 (lambda (_L126176_ _L126177_)
                   (let ((_sym126195_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126177_))))
                     (if (let ((__tmp128411 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128411 _sym126195_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126195_))
                         (let ((_type126196126198_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126176_))))
                           (if _type126196126198_
                               (let ((_type126201_ _type126196126198_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126195_
                                  _type126201_))
                               '#f))))))
                (___kont126320126321_ (lambda () '#!void)))
            (let ((___match126349126350_
                   (lambda (_e126118126144_
                            _hd126117126147_
                            _tl126116126149_
                            _e126121126152_
                            _hd126120126155_
                            _tl126119126157_
                            _e126124126160_
                            _hd126123126163_
                            _tl126122126165_
                            _e126127126168_
                            _hd126126126171_
                            _tl126125126173_)
                     (let ((_L126176_ _hd126126126171_)
                           (_L126177_ _hd126123126163_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126177_))
                           (___kont126318126319_ _L126176_ _L126177_)
                           (___kont126320126321_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126316126317_))
                  (let ((_e126118126144_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126316126317_))))
                    (let ((_tl126116126149_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126118126144_)))
                          (_hd126117126147_
                           (let ()
                             (declare (not safe))
                             (##car _e126118126144_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126116126149_))
                          (let ((_e126121126152_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126116126149_))))
                            (let ((_tl126119126157_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126121126152_)))
                                  (_hd126120126155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126121126152_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126120126155_))
                                  (let ((_e126124126160_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126120126155_))))
                                    (let ((_tl126122126165_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126124126160_)))
                                          (_hd126123126163_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126124126160_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126122126165_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126119126157_))
                                              (let ((_e126127126168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126119126157_))))
                                                (let ((_tl126125126173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126127126168_)))
                                                      (_hd126126126171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126127126168_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126125126173_))
                                                      (___match126349126350_
                                                       _e126118126144_
                                                       _hd126117126147_
                                                       _tl126116126149_
                                                       _e126121126152_
                                                       _hd126120126155_
                                                       _tl126119126157_
                                                       _e126124126160_
                                                       _hd126123126163_
                                                       _tl126122126165_
                                                       _e126127126168_
                                                       _hd126126126171_
                                                       _tl126125126173_)
                                                      (___kont126320126321_))))
                                              (___kont126320126321_))
                                          (___kont126320126321_))))
                                  (___kont126320126321_))))
                          (___kont126320126321_))))
                  (___kont126320126321_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx125965_)
        (let* ((___stx126352126353_ _stx125965_)
               (_g125968125999_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126352126353_)))))
          (let ((___kont126354126355_
                 (lambda (_L126081_ _L126082_)
                   (let ((_sym126098_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126082_))))
                     (if (let ((__tmp128412 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128412 _sym126098_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126098_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126098_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126098_))
                             (let ((_type126099126101_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126081_))))
                               (if _type126099126101_
                                   (let ((_type126104_ _type126099126101_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126098_
                                      _type126104_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126081_)))))
                (___kont126356126357_
                 (lambda (_L126028_ _L126029_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126028_)))))
            (let ((___match126385126386_
                   (lambda (_e125974126049_
                            _hd125973126052_
                            _tl125972126054_
                            _e125977126057_
                            _hd125976126060_
                            _tl125975126062_
                            _e125980126065_
                            _hd125979126068_
                            _tl125978126070_
                            _e125983126073_
                            _hd125982126076_
                            _tl125981126078_)
                     (let ((_L126081_ _hd125982126076_)
                           (_L126082_ _hd125979126068_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126082_))
                           (___kont126354126355_ _L126081_ _L126082_)
                           (___kont126356126357_
                            _hd125982126076_
                            _hd125976126060_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126352126353_))
                  (let ((_e125974126049_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126352126353_))))
                    (let ((_tl125972126054_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125974126049_)))
                          (_hd125973126052_
                           (let ()
                             (declare (not safe))
                             (##car _e125974126049_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125972126054_))
                          (let ((_e125977126057_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125972126054_))))
                            (let ((_tl125975126062_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125977126057_)))
                                  (_hd125976126060_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125977126057_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125976126060_))
                                  (let ((_e125980126065_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125976126060_))))
                                    (let ((_tl125978126070_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125980126065_)))
                                          (_hd125979126068_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125980126065_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125978126070_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125975126062_))
                                              (let ((_e125983126073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125975126062_))))
                                                (let ((_tl125981126078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125983126073_)))
                                                      (_hd125982126076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125983126073_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125981126078_))
                                                      (___match126385126386_
                                                       _e125974126049_
                                                       _hd125973126052_
                                                       _tl125972126054_
                                                       _e125977126057_
                                                       _hd125976126060_
                                                       _tl125975126062_
                                                       _e125980126065_
                                                       _hd125979126068_
                                                       _tl125978126070_
                                                       _e125983126073_
                                                       _hd125982126076_
                                                       _tl125981126078_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125968125999_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125968125999_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125975126062_))
                                              (let ((_e125994126020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125975126062_))))
                                                (let ((_tl125992126025_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125994126020_)))
                                                      (_hd125993126023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125994126020_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125992126025_))
                                                      (___kont126356126357_
                                                       _hd125993126023_
                                                       _hd125976126060_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125968125999_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125968125999_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125975126062_))
                                      (let ((_e125994126020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125975126062_))))
                                        (let ((_tl125992126025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125994126020_)))
                                              (_hd125993126023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125994126020_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125992126025_))
                                              (___kont126356126357_
                                               _hd125993126023_
                                               _hd125976126060_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125968125999_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125968125999_))))))
                          (let () (declare (not safe)) (_g125968125999_)))))
                  (let () (declare (not safe)) (_g125968125999_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx125750_)
        (letrec ((_collect-e125752_
                  (lambda (_hd125909_ _expr125910_)
                    (let* ((___stx126408126409_ _hd125909_)
                           (_g125913125923_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126408126409_)))))
                      (let ((___kont126410126411_
                             (lambda (_L125943_)
                               (let ((_sym125954_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125943_))))
                                 (if (let ((__tmp128413
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128413 _sym125954_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125954_))
                                     (let ((_type125955125957_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125910_))))
                                       (if _type125955125957_
                                           (let ((_type125960_
                                                  _type125955125957_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125954_
                                              _type125960_
                                              '#t))
                                           '#f))))))
                            (___kont126412126413_ (lambda () '#!void)))
                        (let ((___match126421126422_
                               (lambda (_e125918125935_
                                        _hd125917125938_
                                        _tl125916125940_)
                                 (let ((_L125943_ _hd125917125938_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125943_))
                                       (___kont126410126411_ _L125943_)
                                       (___kont126412126413_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126408126409_))
                              (let ((_e125918125935_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126408126409_))))
                                (let ((_tl125916125940_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125918125935_)))
                                      (_hd125917125938_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125918125935_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125916125940_))
                                      (___match126421126422_
                                       _e125918125935_
                                       _hd125917125938_
                                       _tl125916125940_)
                                      (___kont126412126413_))))
                              (___kont126412126413_))))))))
          (let* ((_g125754125789_
                  (lambda (_g125755125786_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125755125786_))))
                 (_g125753125906_
                  (lambda (_g125755125792_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125755125792_))
                        (let ((_e125761125794_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125755125792_))))
                          (let ((_hd125760125797_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125761125794_)))
                                (_tl125759125799_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125761125794_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125759125799_))
                                (let ((_e125764125802_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125759125799_))))
                                  (let ((_hd125763125805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125764125802_)))
                                        (_tl125762125807_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125764125802_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125763125805_))
                                        (let ((_g128414_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125763125805_
                                                  '0))))
                                          (begin
                                            (let ((_g128415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128414_)
                                                         (##vector-length
                                                          _g128414_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128415_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128415_)))
                                            (let ((_target125765125810_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128414_
                                                      0)))
                                                  (_tl125767125812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128414_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125767125812_))
                                                  (letrec ((_loop125768125815_
                                                            (lambda (_hd125766125818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125772125820_
                             _hd125773125822_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125766125818_))
                          (let ((_e125769125825_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125766125818_))))
                            (let ((_lp-hd125770125828_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125769125825_)))
                                  (_lp-tl125771125830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125769125825_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125770125828_))
                                  (let ((_e125778125833_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125770125828_))))
                                    (let ((_hd125777125836_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125778125833_)))
                                          (_tl125776125838_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125778125833_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125776125838_))
                                          (let ((_e125781125841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125776125838_))))
                                            (let ((_hd125780125844_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125781125841_)))
                                                  (_tl125779125846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125781125841_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125779125846_))
                                                  (let ((__tmp128420
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125780125844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125772125820_)))
                (__tmp128419
                 (let ()
                   (declare (not safe))
                   (cons _hd125777125836_ _hd125773125822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125768125815_
                                                     _lp-tl125771125830_
                                                     __tmp128420
                                                     __tmp128419))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125754125789_
                                                     _g125755125792_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125754125789_
                                             _g125755125792_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125754125789_ _g125755125792_)))))
                          (let ((_expr125774125849_
                                 (reverse _expr125772125820_))
                                (_hd125775125851_ (reverse _hd125773125822_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125762125807_))
                                (let ((_e125784125854_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125762125807_))))
                                  (let ((_hd125783125857_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125784125854_)))
                                        (_tl125782125859_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125784125854_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125782125859_))
                                        ((lambda (_L125862_
                                                  _L125863_
                                                  _L125864_)
                                           (for-each
                                            _collect-e125752_
                                            (let ((__tmp128416
                                                   (lambda (_g125884125887_
                                                            _g125885125889_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125884125887_
                                                             _g125885125889_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128416
                                                      '()
                                                      _L125864_))
                                            (let ((__tmp128417
                                                   (lambda (_g125891125894_
                                                            _g125892125896_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125891125894_
                                                             _g125892125896_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128417
                                                      '()
                                                      _L125863_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128418
                                                   (lambda (_g125898125901_
                                                            _g125899125903_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125898125901_
                                                             _g125899125903_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128418
                                                      '()
                                                      _L125863_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L125862_)))
                                         _hd125783125857_
                                         _expr125774125849_
                                         _hd125775125851_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125754125789_ _g125755125792_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125754125789_ _g125755125792_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125768125815_
                                                       _target125765125810_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125754125789_
                                                     _g125755125792_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125754125789_ _g125755125792_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125754125789_ _g125755125792_)))))
                        (let ()
                          (declare (not safe))
                          (_g125754125789_ _g125755125792_))))))
            (declare (not safe))
            (_g125753125906_ _stx125750_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125242_)
        (let* ((___stx126424126425_ _stx125242_)
               (_g125246125361_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126424126425_)))))
          (let ((___kont126426126427_
                 (lambda (_L125700_ _L125701_ _L125702_ _L125703_ _L125704_)
                   (let ((__tmp128424
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125703_)))
                         (__tmp128423
                          (let () (declare (not safe)) (gx#stx-e _L125702_)))
                         (__tmp128422
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125701_)))
                         (__tmp128421
                          (let () (declare (not safe)) (gx#stx-e _L125700_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128424
                      __tmp128423
                      __tmp128422
                      __tmp128421))))
                (___kont126428126429_
                 (lambda (_L125528_ _L125529_ _L125530_ _L125531_)
                   (let ((__tmp128427
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125530_)))
                         (__tmp128426
                          (let () (declare (not safe)) (gx#stx-e _L125529_)))
                         (__tmp128425
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125528_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128427
                      __tmp128426
                      __tmp128425
                      '#f))))
                (___kont126430126431_
                 (lambda (_L125398_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128428
                           (lambda (_g125411125414_ _g125412125416_)
                             (let ()
                               (declare (not safe))
                               (cons _g125411125414_ _g125412125416_)))))
                      (declare (not safe))
                      (foldr1 __tmp128428 '() _L125398_))))))
            (let* ((___match126681126682_
                    (lambda (_e125347125366_
                             _hd125346125369_
                             _tl125345125371_
                             ___splice126432126433_
                             _target125348125374_
                             _tl125350125376_)
                      (letrec ((_loop125351125379_
                                (lambda (_hd125349125382_ _expr125355125384_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125349125382_))
                                      (let ((_e125352125387_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125349125382_))))
                                        (let ((_lp-tl125354125392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125352125387_)))
                                              (_lp-hd125353125390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125352125387_))))
                                          (let ((__tmp128429
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125353125390_
                                                         _expr125355125384_))))
                                            (declare (not safe))
                                            (_loop125351125379_
                                             _lp-tl125354125392_
                                             __tmp128429))))
                                      (let ((_expr125356125395_
                                             (reverse _expr125355125384_)))
                                        (___kont126430126431_
                                         _expr125356125395_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125351125379_ _target125348125374_ '())))))
                   (___match126561126562_
                    (lambda (_e125255125572_
                             _hd125254125575_
                             _tl125253125577_
                             _e125258125580_
                             _hd125257125583_
                             _tl125256125585_
                             _e125261125588_
                             _hd125260125591_
                             _tl125259125593_
                             _e125264125596_
                             _hd125263125599_
                             _tl125262125601_
                             _e125267125604_
                             _hd125266125607_
                             _tl125265125609_
                             _e125270125612_
                             _hd125269125615_
                             _tl125268125617_
                             _e125273125620_
                             _hd125272125623_
                             _tl125271125625_
                             _e125276125628_
                             _hd125275125631_
                             _tl125274125633_
                             _e125279125636_
                             _hd125278125639_
                             _tl125277125641_
                             _e125282125644_
                             _hd125281125647_
                             _tl125280125649_
                             _e125285125652_
                             _hd125284125655_
                             _tl125283125657_
                             _e125288125660_
                             _hd125287125663_
                             _tl125286125665_
                             _e125291125668_
                             _hd125290125671_
                             _tl125289125673_
                             _e125294125676_
                             _hd125293125679_
                             _tl125292125681_
                             _e125297125684_
                             _hd125296125687_
                             _tl125295125689_
                             _e125300125692_
                             _hd125299125695_
                             _tl125298125697_)
                      (let ((_L125700_ _hd125299125695_)
                            (_L125701_ _hd125290125671_)
                            (_L125702_ _hd125281125647_)
                            (_L125703_ _hd125272125623_)
                            (_L125704_ _hd125263125599_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L125704_
                               'bind-method!))
                            (___kont126426126427_
                             _L125700_
                             _L125701_
                             _L125702_
                             _L125703_
                             _L125704_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125253125577_))
                                (let ((___splice126432126433_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125253125577_
                                          '0))))
                                  (let ((_tl125350125376_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126432126433_
                                            '1)))
                                        (_target125348125374_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126432126433_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125350125376_))
                                        (___match126681126682_
                                         _e125255125572_
                                         _hd125254125575_
                                         _tl125253125577_
                                         ___splice126432126433_
                                         _target125348125374_
                                         _tl125350125376_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125246125361_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125246125361_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126424126425_))
                  (let ((_e125255125572_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126424126425_))))
                    (let ((_tl125253125577_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125255125572_)))
                          (_hd125254125575_
                           (let ()
                             (declare (not safe))
                             (##car _e125255125572_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125253125577_))
                          (let ((_e125258125580_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125253125577_))))
                            (let ((_tl125256125585_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125258125580_)))
                                  (_hd125257125583_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125258125580_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125257125583_))
                                  (let ((_e125261125588_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125257125583_))))
                                    (let ((_tl125259125593_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125261125588_)))
                                          (_hd125260125591_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125261125588_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125260125591_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125260125591_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125259125593_))
                                                  (let ((_e125264125596_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125259125593_))))
                                                    (let ((_tl125262125601_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125264125596_)))
                                                          (_hd125263125599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125264125596_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125262125601_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125256125585_))
                      (let ((_e125267125604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125256125585_))))
                        (let ((_tl125265125609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125267125604_)))
                              (_hd125266125607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125267125604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125266125607_))
                              (let ((_e125270125612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125266125607_))))
                                (let ((_tl125268125617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125270125612_)))
                                      (_hd125269125615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125270125612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125269125615_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125269125615_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125268125617_))
                                              (let ((_e125273125620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125268125617_))))
                                                (let ((_tl125271125625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125273125620_)))
                                                      (_hd125272125623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125273125620_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125271125625_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125265125609_))
                                                          (let ((_e125276125628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125265125609_))))
                    (let ((_tl125274125633_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125276125628_)))
                          (_hd125275125631_
                           (let ()
                             (declare (not safe))
                             (##car _e125276125628_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125275125631_))
                          (let ((_e125279125636_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125275125631_))))
                            (let ((_tl125277125641_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125279125636_)))
                                  (_hd125278125639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125279125636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125278125639_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125278125639_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125277125641_))
                                          (let ((_e125282125644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125277125641_))))
                                            (let ((_tl125280125649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125282125644_)))
                                                  (_hd125281125647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125282125644_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125280125649_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125274125633_))
                                                      (let ((_e125285125652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125274125633_))))
                (let ((_tl125283125657_
                       (let () (declare (not safe)) (##cdr _e125285125652_)))
                      (_hd125284125655_
                       (let () (declare (not safe)) (##car _e125285125652_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125284125655_))
                      (let ((_e125288125660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125284125655_))))
                        (let ((_tl125286125665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125288125660_)))
                              (_hd125287125663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125288125660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125287125663_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125287125663_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125286125665_))
                                      (let ((_e125291125668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125286125665_))))
                                        (let ((_tl125289125673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125291125668_)))
                                              (_hd125290125671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125291125668_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125289125673_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125283125657_))
                                                  (let ((_e125294125676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125283125657_))))
                                                    (let ((_tl125292125681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125294125676_)))
                                                          (_hd125293125679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125294125676_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125293125679_))
                                                          (let ((_e125297125684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125293125679_))))
                    (let ((_tl125295125689_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125297125684_)))
                          (_hd125296125687_
                           (let ()
                             (declare (not safe))
                             (##car _e125297125684_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125296125687_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125296125687_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125295125689_))
                                  (let ((_e125300125692_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125295125689_))))
                                    (let ((_tl125298125697_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125300125692_)))
                                          (_hd125299125695_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125300125692_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125298125697_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125292125681_))
                                              (___match126561126562_
                                               _e125255125572_
                                               _hd125254125575_
                                               _tl125253125577_
                                               _e125258125580_
                                               _hd125257125583_
                                               _tl125256125585_
                                               _e125261125588_
                                               _hd125260125591_
                                               _tl125259125593_
                                               _e125264125596_
                                               _hd125263125599_
                                               _tl125262125601_
                                               _e125267125604_
                                               _hd125266125607_
                                               _tl125265125609_
                                               _e125270125612_
                                               _hd125269125615_
                                               _tl125268125617_
                                               _e125273125620_
                                               _hd125272125623_
                                               _tl125271125625_
                                               _e125276125628_
                                               _hd125275125631_
                                               _tl125274125633_
                                               _e125279125636_
                                               _hd125278125639_
                                               _tl125277125641_
                                               _e125282125644_
                                               _hd125281125647_
                                               _tl125280125649_
                                               _e125285125652_
                                               _hd125284125655_
                                               _tl125283125657_
                                               _e125288125660_
                                               _hd125287125663_
                                               _tl125286125665_
                                               _e125291125668_
                                               _hd125290125671_
                                               _tl125289125673_
                                               _e125294125676_
                                               _hd125293125679_
                                               _tl125292125681_
                                               _e125297125684_
                                               _hd125296125687_
                                               _tl125295125689_
                                               _e125300125692_
                                               _hd125299125695_
                                               _tl125298125697_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125253125577_))
                                                  (let ((___splice126432126433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125253125577_
                                                            '0))))
                                                    (let ((_tl125350125376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '1)))
                                                          (_target125348125374_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125350125376_))
                                                          (___match126681126682_
                                                           _e125255125572_
                                                           _hd125254125575_
                                                           _tl125253125577_
                                                           ___splice126432126433_
                                                           _target125348125374_
                                                           _tl125350125376_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125246125361_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125253125577_))
                                              (let ((___splice126432126433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125253125577_
                                                        '0))))
                                                (let ((_tl125350125376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '1)))
                                                      (_target125348125374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125350125376_))
                                                      (___match126681126682_
                                                       _e125255125572_
                                                       _hd125254125575_
                                                       _tl125253125577_
                                                       ___splice126432126433_
                                                       _target125348125374_
                                                       _tl125350125376_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125246125361_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125253125577_))
                                      (let ((___splice126432126433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125253125577_
                                                '0))))
                                        (let ((_tl125350125376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '1)))
                                              (_target125348125374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125350125376_))
                                              (___match126681126682_
                                               _e125255125572_
                                               _hd125254125575_
                                               _tl125253125577_
                                               ___splice126432126433_
                                               _target125348125374_
                                               _tl125350125376_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125253125577_))
                                  (let ((___splice126432126433_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125253125577_
                                            '0))))
                                    (let ((_tl125350125376_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126432126433_
                                              '1)))
                                          (_target125348125374_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126432126433_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125350125376_))
                                          (___match126681126682_
                                           _e125255125572_
                                           _hd125254125575_
                                           _tl125253125577_
                                           ___splice126432126433_
                                           _target125348125374_
                                           _tl125350125376_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125246125361_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125246125361_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125253125577_))
                              (let ((___splice126432126433_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125253125577_
                                        '0))))
                                (let ((_tl125350125376_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126432126433_
                                          '1)))
                                      (_target125348125374_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126432126433_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125350125376_))
                                      (___match126681126682_
                                       _e125255125572_
                                       _hd125254125575_
                                       _tl125253125577_
                                       ___splice126432126433_
                                       _target125348125374_
                                       _tl125350125376_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_)))))
                              (let ()
                                (declare (not safe))
                                (_g125246125361_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125253125577_))
                      (let ((___splice126432126433_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125253125577_ '0))))
                        (let ((_tl125350125376_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '1)))
                              (_target125348125374_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125350125376_))
                              (___match126681126682_
                               _e125255125572_
                               _hd125254125575_
                               _tl125253125577_
                               ___splice126432126433_
                               _target125348125374_
                               _tl125350125376_)
                              (let ()
                                (declare (not safe))
                                (_g125246125361_)))))
                      (let () (declare (not safe)) (_g125246125361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125283125657_))
                                                      (if (let ((__tmp128430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128430 'bind-method!))
                  (let ((_L125528_ _hd125290125671_)
                        (_L125529_ _hd125281125647_)
                        (_L125530_ _hd125272125623_)
                        (_L125531_ _hd125263125599_))
                    (___kont126428126429_
                     _L125528_
                     _L125529_
                     _L125530_
                     _L125531_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125253125577_))
                      (let ((___splice126432126433_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125253125577_ '0))))
                        (let ((_tl125350125376_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '1)))
                              (_target125348125374_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125350125376_))
                              (___match126681126682_
                               _e125255125572_
                               _hd125254125575_
                               _tl125253125577_
                               ___splice126432126433_
                               _target125348125374_
                               _tl125350125376_)
                              (let ()
                                (declare (not safe))
                                (_g125246125361_)))))
                      (let () (declare (not safe)) (_g125246125361_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125253125577_))
                  (let ((___splice126432126433_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125253125577_ '0))))
                    (let ((_tl125350125376_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126432126433_ '1)))
                          (_target125348125374_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126432126433_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125350125376_))
                          (___match126681126682_
                           _e125255125572_
                           _hd125254125575_
                           _tl125253125577_
                           ___splice126432126433_
                           _target125348125374_
                           _tl125350125376_)
                          (let () (declare (not safe)) (_g125246125361_)))))
                  (let () (declare (not safe)) (_g125246125361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125253125577_))
                                                  (let ((___splice126432126433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125253125577_
                                                            '0))))
                                                    (let ((_tl125350125376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '1)))
                                                          (_target125348125374_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125350125376_))
                                                          (___match126681126682_
                                                           _e125255125572_
                                                           _hd125254125575_
                                                           _tl125253125577_
                                                           ___splice126432126433_
                                                           _target125348125374_
                                                           _tl125350125376_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125246125361_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125253125577_))
                                          (let ((___splice126432126433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125253125577_
                                                    '0))))
                                            (let ((_tl125350125376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126432126433_
                                                      '1)))
                                                  (_target125348125374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126432126433_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125350125376_))
                                                  (___match126681126682_
                                                   _e125255125572_
                                                   _hd125254125575_
                                                   _tl125253125577_
                                                   ___splice126432126433_
                                                   _target125348125374_
                                                   _tl125350125376_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125246125361_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125253125577_))
                                      (let ((___splice126432126433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125253125577_
                                                '0))))
                                        (let ((_tl125350125376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '1)))
                                              (_target125348125374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125350125376_))
                                              (___match126681126682_
                                               _e125255125572_
                                               _hd125254125575_
                                               _tl125253125577_
                                               ___splice126432126433_
                                               _target125348125374_
                                               _tl125350125376_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125253125577_))
                                  (let ((___splice126432126433_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125253125577_
                                            '0))))
                                    (let ((_tl125350125376_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126432126433_
                                              '1)))
                                          (_target125348125374_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126432126433_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125350125376_))
                                          (___match126681126682_
                                           _e125255125572_
                                           _hd125254125575_
                                           _tl125253125577_
                                           ___splice126432126433_
                                           _target125348125374_
                                           _tl125350125376_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125246125361_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125246125361_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125253125577_))
                          (let ((___splice126432126433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125253125577_
                                    '0))))
                            (let ((_tl125350125376_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126432126433_ '1)))
                                  (_target125348125374_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126432126433_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125350125376_))
                                  (___match126681126682_
                                   _e125255125572_
                                   _hd125254125575_
                                   _tl125253125577_
                                   ___splice126432126433_
                                   _target125348125374_
                                   _tl125350125376_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125246125361_)))))
                          (let () (declare (not safe)) (_g125246125361_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125253125577_))
                  (let ((___splice126432126433_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125253125577_ '0))))
                    (let ((_tl125350125376_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126432126433_ '1)))
                          (_target125348125374_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126432126433_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125350125376_))
                          (___match126681126682_
                           _e125255125572_
                           _hd125254125575_
                           _tl125253125577_
                           ___splice126432126433_
                           _target125348125374_
                           _tl125350125376_)
                          (let () (declare (not safe)) (_g125246125361_)))))
                  (let () (declare (not safe)) (_g125246125361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125253125577_))
                                                      (let ((___splice126432126433_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125253125577_ '0))))
                (let ((_tl125350125376_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126432126433_ '1)))
                      (_target125348125374_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126432126433_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125350125376_))
                      (___match126681126682_
                       _e125255125572_
                       _hd125254125575_
                       _tl125253125577_
                       ___splice126432126433_
                       _target125348125374_
                       _tl125350125376_)
                      (let () (declare (not safe)) (_g125246125361_)))))
              (let () (declare (not safe)) (_g125246125361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125253125577_))
                                              (let ((___splice126432126433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125253125577_
                                                        '0))))
                                                (let ((_tl125350125376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '1)))
                                                      (_target125348125374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125350125376_))
                                                      (___match126681126682_
                                                       _e125255125572_
                                                       _hd125254125575_
                                                       _tl125253125577_
                                                       ___splice126432126433_
                                                       _target125348125374_
                                                       _tl125350125376_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125246125361_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125253125577_))
                                          (let ((___splice126432126433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125253125577_
                                                    '0))))
                                            (let ((_tl125350125376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126432126433_
                                                      '1)))
                                                  (_target125348125374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126432126433_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125350125376_))
                                                  (___match126681126682_
                                                   _e125255125572_
                                                   _hd125254125575_
                                                   _tl125253125577_
                                                   ___splice126432126433_
                                                   _target125348125374_
                                                   _tl125350125376_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125246125361_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125253125577_))
                                      (let ((___splice126432126433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125253125577_
                                                '0))))
                                        (let ((_tl125350125376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '1)))
                                              (_target125348125374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125350125376_))
                                              (___match126681126682_
                                               _e125255125572_
                                               _hd125254125575_
                                               _tl125253125577_
                                               ___splice126432126433_
                                               _target125348125374_
                                               _tl125350125376_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125253125577_))
                              (let ((___splice126432126433_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125253125577_
                                        '0))))
                                (let ((_tl125350125376_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126432126433_
                                          '1)))
                                      (_target125348125374_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126432126433_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125350125376_))
                                      (___match126681126682_
                                       _e125255125572_
                                       _hd125254125575_
                                       _tl125253125577_
                                       ___splice126432126433_
                                       _target125348125374_
                                       _tl125350125376_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_)))))
                              (let ()
                                (declare (not safe))
                                (_g125246125361_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125253125577_))
                      (let ((___splice126432126433_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125253125577_ '0))))
                        (let ((_tl125350125376_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '1)))
                              (_target125348125374_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125350125376_))
                              (___match126681126682_
                               _e125255125572_
                               _hd125254125575_
                               _tl125253125577_
                               ___splice126432126433_
                               _target125348125374_
                               _tl125350125376_)
                              (let ()
                                (declare (not safe))
                                (_g125246125361_)))))
                      (let () (declare (not safe)) (_g125246125361_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125253125577_))
                  (let ((___splice126432126433_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125253125577_ '0))))
                    (let ((_tl125350125376_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126432126433_ '1)))
                          (_target125348125374_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126432126433_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125350125376_))
                          (___match126681126682_
                           _e125255125572_
                           _hd125254125575_
                           _tl125253125577_
                           ___splice126432126433_
                           _target125348125374_
                           _tl125350125376_)
                          (let () (declare (not safe)) (_g125246125361_)))))
                  (let () (declare (not safe)) (_g125246125361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125253125577_))
                                                  (let ((___splice126432126433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125253125577_
                                                            '0))))
                                                    (let ((_tl125350125376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '1)))
                                                          (_target125348125374_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125350125376_))
                                                          (___match126681126682_
                                                           _e125255125572_
                                                           _hd125254125575_
                                                           _tl125253125577_
                                                           ___splice126432126433_
                                                           _target125348125374_
                                                           _tl125350125376_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125246125361_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125253125577_))
                                              (let ((___splice126432126433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125253125577_
                                                        '0))))
                                                (let ((_tl125350125376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '1)))
                                                      (_target125348125374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125350125376_))
                                                      (___match126681126682_
                                                       _e125255125572_
                                                       _hd125254125575_
                                                       _tl125253125577_
                                                       ___splice126432126433_
                                                       _target125348125374_
                                                       _tl125350125376_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125246125361_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125253125577_))
                                          (let ((___splice126432126433_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125253125577_
                                                    '0))))
                                            (let ((_tl125350125376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126432126433_
                                                      '1)))
                                                  (_target125348125374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126432126433_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125350125376_))
                                                  (___match126681126682_
                                                   _e125255125572_
                                                   _hd125254125575_
                                                   _tl125253125577_
                                                   ___splice126432126433_
                                                   _target125348125374_
                                                   _tl125350125376_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125246125361_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125253125577_))
                                  (let ((___splice126432126433_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125253125577_
                                            '0))))
                                    (let ((_tl125350125376_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126432126433_
                                              '1)))
                                          (_target125348125374_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126432126433_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125350125376_))
                                          (___match126681126682_
                                           _e125255125572_
                                           _hd125254125575_
                                           _tl125253125577_
                                           ___splice126432126433_
                                           _target125348125374_
                                           _tl125350125376_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125246125361_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125246125361_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125253125577_))
                          (let ((___splice126432126433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125253125577_
                                    '0))))
                            (let ((_tl125350125376_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126432126433_ '1)))
                                  (_target125348125374_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126432126433_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125350125376_))
                                  (___match126681126682_
                                   _e125255125572_
                                   _hd125254125575_
                                   _tl125253125577_
                                   ___splice126432126433_
                                   _target125348125374_
                                   _tl125350125376_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125246125361_)))))
                          (let () (declare (not safe)) (_g125246125361_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125253125577_))
                      (let ((___splice126432126433_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125253125577_ '0))))
                        (let ((_tl125350125376_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '1)))
                              (_target125348125374_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126432126433_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125350125376_))
                              (___match126681126682_
                               _e125255125572_
                               _hd125254125575_
                               _tl125253125577_
                               ___splice126432126433_
                               _target125348125374_
                               _tl125350125376_)
                              (let ()
                                (declare (not safe))
                                (_g125246125361_)))))
                      (let () (declare (not safe)) (_g125246125361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125253125577_))
                                                      (let ((___splice126432126433_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125253125577_ '0))))
                (let ((_tl125350125376_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126432126433_ '1)))
                      (_target125348125374_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126432126433_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125350125376_))
                      (___match126681126682_
                       _e125255125572_
                       _hd125254125575_
                       _tl125253125577_
                       ___splice126432126433_
                       _target125348125374_
                       _tl125350125376_)
                      (let () (declare (not safe)) (_g125246125361_)))))
              (let () (declare (not safe)) (_g125246125361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125253125577_))
                                                  (let ((___splice126432126433_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125253125577_
                                                            '0))))
                                                    (let ((_tl125350125376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '1)))
                                                          (_target125348125374_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126432126433_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125350125376_))
                                                          (___match126681126682_
                                                           _e125255125572_
                                                           _hd125254125575_
                                                           _tl125253125577_
                                                           ___splice126432126433_
                                                           _target125348125374_
                                                           _tl125350125376_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125246125361_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125246125361_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125253125577_))
                                              (let ((___splice126432126433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125253125577_
                                                        '0))))
                                                (let ((_tl125350125376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '1)))
                                                      (_target125348125374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126432126433_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125350125376_))
                                                      (___match126681126682_
                                                       _e125255125572_
                                                       _hd125254125575_
                                                       _tl125253125577_
                                                       ___splice126432126433_
                                                       _target125348125374_
                                                       _tl125350125376_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125246125361_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125253125577_))
                                      (let ((___splice126432126433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125253125577_
                                                '0))))
                                        (let ((_tl125350125376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '1)))
                                              (_target125348125374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126432126433_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125350125376_))
                                              (___match126681126682_
                                               _e125255125572_
                                               _hd125254125575_
                                               _tl125253125577_
                                               ___splice126432126433_
                                               _target125348125374_
                                               _tl125350125376_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125246125361_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125253125577_))
                              (let ((___splice126432126433_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125253125577_
                                        '0))))
                                (let ((_tl125350125376_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126432126433_
                                          '1)))
                                      (_target125348125374_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126432126433_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125350125376_))
                                      (___match126681126682_
                                       _e125255125572_
                                       _hd125254125575_
                                       _tl125253125577_
                                       ___splice126432126433_
                                       _target125348125374_
                                       _tl125350125376_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125246125361_)))))
                              (let ()
                                (declare (not safe))
                                (_g125246125361_))))))
                  (let () (declare (not safe)) (_g125246125361_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125182_)
        (let* ((___stx126684126685_ _stx125182_)
               (_g125185125198_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126684126685_)))))
          (let ((___kont126686126687_
                 (lambda (_L125226_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125226_))))
                (___kont126688126689_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126684126685_))
                (let ((_e125190125210_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126684126685_))))
                  (let ((_tl125188125215_
                         (let () (declare (not safe)) (##cdr _e125190125210_)))
                        (_hd125189125213_
                         (let ()
                           (declare (not safe))
                           (##car _e125190125210_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125188125215_))
                        (let ((_e125193125218_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125188125215_))))
                          (let ((_tl125191125223_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125193125218_)))
                                (_hd125192125221_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125193125218_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125191125223_))
                                (___kont126686126687_ _hd125192125221_)
                                (___kont126688126689_))))
                        (___kont126688126689_))))
                (___kont126688126689_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125062_)
        (let* ((_g125064125081_
                (lambda (_g125065125078_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125065125078_))))
               (_g125063125179_
                (lambda (_g125065125084_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125065125084_))
                      (let ((_e125070125086_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125065125084_))))
                        (let ((_hd125069125089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125070125086_)))
                              (_tl125068125091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125070125086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125068125091_))
                              (let ((_e125073125094_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125068125091_))))
                                (let ((_hd125072125097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125073125094_)))
                                      (_tl125071125099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125073125094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125071125099_))
                                      (let ((_e125076125102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125071125099_))))
                                        (let ((_hd125075125105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125076125102_)))
                                              (_tl125074125107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125076125102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125074125107_))
                                              ((lambda (_L125110_ _L125111_)
                                                 (let* ((___stx126706126707_
                                                         _L125111_)
                                                        (_g125127125138_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx126706126707_)))))
                                                   (let ((___kont126708126709_
                                                          (lambda (_L125158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125159_)
                    (let ((_$e125171_
                           (let ((__tmp128431
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125159_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128431))))
                      (if _$e125171_
                          ((lambda (_type-e125174_)
                             (_type-e125174_ _stx125062_ _L125111_))
                           _$e125171_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125110_))))))
                 (___kont126710126711_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match126717126718_
                                                            (lambda (_e125133125150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125132125153_
                             _tl125131125155_)
                      (let ((_L125158_ _tl125131125155_)
                            (_L125159_ _hd125132125153_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125159_))
                            (___kont126708126709_ _L125158_ _L125159_)
                            (___kont126710126711_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx126706126707_))
                   (let ((_e125133125150_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx126706126707_))))
                     (let ((_tl125131125155_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125133125150_)))
                           (_hd125132125153_
                            (let ()
                              (declare (not safe))
                              (##car _e125133125150_))))
                       (___match126717126718_
                        _e125133125150_
                        _hd125132125153_
                        _tl125131125155_)))
                   (___kont126710126711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125075125105_
                                               _hd125072125097_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125064125081_
                                                 _g125065125084_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125064125081_ _g125065125084_)))))
                              (let ()
                                (declare (not safe))
                                (_g125064125081_ _g125065125084_)))))
                      (let ()
                        (declare (not safe))
                        (_g125064125081_ _g125065125084_))))))
          (declare (not safe))
          (_g125063125179_ _stx125062_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124906_ _ann124907_)
        (let* ((_g124909124946_
                (lambda (_g124910124943_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124910124943_))))
               (_g124908125059_
                (lambda (_g124910124949_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124910124949_))
                      (let ((_e124920124951_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124910124949_))))
                        (let ((_hd124919124954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124920124951_)))
                              (_tl124918124956_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124920124951_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124918124956_))
                              (let ((_e124923124959_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124918124956_))))
                                (let ((_hd124922124962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124923124959_)))
                                      (_tl124921124964_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124923124959_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124921124964_))
                                      (let ((_e124926124967_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124921124964_))))
                                        (let ((_hd124925124970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124926124967_)))
                                              (_tl124924124972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124926124967_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124924124972_))
                                              (let ((_e124929124975_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124924124972_))))
                                                (let ((_hd124928124978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124929124975_)))
                                                      (_tl124927124980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124929124975_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124927124980_))
                                                      (let ((_e124932124983_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124927124980_))))
                (let ((_hd124931124986_
                       (let () (declare (not safe)) (##car _e124932124983_)))
                      (_tl124930124988_
                       (let () (declare (not safe)) (##cdr _e124932124983_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124930124988_))
                      (let ((_e124935124991_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124930124988_))))
                        (let ((_hd124934124994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124935124991_)))
                              (_tl124933124996_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124935124991_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124933124996_))
                              (let ((_e124938124999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124933124996_))))
                                (let ((_hd124937125002_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124938124999_)))
                                      (_tl124936125004_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124938124999_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124936125004_))
                                      (let ((_e124941125007_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124936125004_))))
                                        (let ((_hd124940125010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124941125007_)))
                                              (_tl124939125012_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124941125007_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124939125012_))
                                              ((lambda (_L125015_
                                                        _L125016_
                                                        _L125017_
                                                        _L125018_
                                                        _L125019_
                                                        _L125020_
                                                        _L125021_)
                                                 (let ((_type-id125051_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125021_)))
                                                       (_super125052_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125020_)))
                                                       (_slots125053_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125019_)))
                                                       (_ctor-method125054_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125018_)))
                                                       (_struct?125055_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125017_)))
                                                       (_final?125056_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125016_)))
                                                       (_metaclass125057_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125015_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125015_))
                                                            '#f)))
                                                   (let ((__obj128389
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
                                                      __obj128389
                                                      _type-id125051_
                                                      _super125052_
                                                      _slots125053_
                                                      _ctor-method125054_
                                                      _struct?125055_
                                                      _final?125056_
                                                      _metaclass125057_)
                                                     __obj128389)))
                                               _hd124940125010_
                                               _hd124937125002_
                                               _hd124934124994_
                                               _hd124931124986_
                                               _hd124928124978_
                                               _hd124925124970_
                                               _hd124922124962_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124909124946_
                                                 _g124910124949_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124909124946_ _g124910124949_)))))
                              (let ()
                                (declare (not safe))
                                (_g124909124946_ _g124910124949_)))))
                      (let ()
                        (declare (not safe))
                        (_g124909124946_ _g124910124949_)))))
              (let ()
                (declare (not safe))
                (_g124909124946_ _g124910124949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124909124946_
                                                 _g124910124949_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124909124946_ _g124910124949_)))))
                              (let ()
                                (declare (not safe))
                                (_g124909124946_ _g124910124949_)))))
                      (let ()
                        (declare (not safe))
                        (_g124909124946_ _g124910124949_))))))
          (declare (not safe))
          (_g124908125059_ _ann124907_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124854_ _ann124855_)
        (let* ((_g124857124870_
                (lambda (_g124858124867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124858124867_))))
               (_g124856124903_
                (lambda (_g124858124873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124858124873_))
                      (let ((_e124862124875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124858124873_))))
                        (let ((_hd124861124878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124862124875_)))
                              (_tl124860124880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124862124875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124860124880_))
                              (let ((_e124865124883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124860124880_))))
                                (let ((_hd124864124886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124865124883_)))
                                      (_tl124863124888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124865124883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124863124888_))
                                      ((lambda (_L124891_)
                                         (let ((__tmp128432
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124891_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128432)))
                                       _hd124864124886_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124857124870_ _g124858124873_)))))
                              (let ()
                                (declare (not safe))
                                (_g124857124870_ _g124858124873_)))))
                      (let ()
                        (declare (not safe))
                        (_g124857124870_ _g124858124873_))))))
          (declare (not safe))
          (_g124856124903_ _ann124855_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124802_ _ann124803_)
        (let* ((_g124805124818_
                (lambda (_g124806124815_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124806124815_))))
               (_g124804124851_
                (lambda (_g124806124821_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124806124821_))
                      (let ((_e124810124823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124806124821_))))
                        (let ((_hd124809124826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124810124823_)))
                              (_tl124808124828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124810124823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124808124828_))
                              (let ((_e124813124831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124808124828_))))
                                (let ((_hd124812124834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124813124831_)))
                                      (_tl124811124836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124813124831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124811124836_))
                                      ((lambda (_L124839_)
                                         (let ((__tmp128433
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124839_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128433)))
                                       _hd124812124834_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124805124818_ _g124806124821_)))))
                              (let ()
                                (declare (not safe))
                                (_g124805124818_ _g124806124821_)))))
                      (let ()
                        (declare (not safe))
                        (_g124805124818_ _g124806124821_))))))
          (declare (not safe))
          (_g124804124851_ _ann124803_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx124718_ _ann124719_)
        (let* ((_g124721124742_
                (lambda (_g124722124739_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124722124739_))))
               (_g124720124799_
                (lambda (_g124722124745_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124722124745_))
                      (let ((_e124728124747_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124722124745_))))
                        (let ((_hd124727124750_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124728124747_)))
                              (_tl124726124752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124728124747_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124726124752_))
                              (let ((_e124731124755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124726124752_))))
                                (let ((_hd124730124758_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124731124755_)))
                                      (_tl124729124760_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124731124755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124729124760_))
                                      (let ((_e124734124763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124729124760_))))
                                        (let ((_hd124733124766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124734124763_)))
                                              (_tl124732124768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124734124763_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124732124768_))
                                              (let ((_e124737124771_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124732124768_))))
                                                (let ((_hd124736124774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124737124771_)))
                                                      (_tl124735124776_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124737124771_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124735124776_))
                                                      ((lambda (_L124779_
                                                                _L124780_
                                                                _L124781_)
                                                         (let ((__tmp128436
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124781_)))
                       (__tmp128435
                        (let () (declare (not safe)) (gx#stx-e _L124780_)))
                       (__tmp128434
                        (let () (declare (not safe)) (gx#stx-e _L124779_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128436
                    __tmp128435
                    __tmp128434)))
               _hd124736124774_
               _hd124733124766_
               _hd124730124758_)
              (let ()
                (declare (not safe))
                (_g124721124742_ _g124722124745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124721124742_
                                                 _g124722124745_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124721124742_ _g124722124745_)))))
                              (let ()
                                (declare (not safe))
                                (_g124721124742_ _g124722124745_)))))
                      (let ()
                        (declare (not safe))
                        (_g124721124742_ _g124722124745_))))))
          (declare (not safe))
          (_g124720124799_ _ann124719_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx124634_ _ann124635_)
        (let* ((_g124637124658_
                (lambda (_g124638124655_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124638124655_))))
               (_g124636124715_
                (lambda (_g124638124661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124638124661_))
                      (let ((_e124644124663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124638124661_))))
                        (let ((_hd124643124666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124644124663_)))
                              (_tl124642124668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124644124663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124642124668_))
                              (let ((_e124647124671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124642124668_))))
                                (let ((_hd124646124674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124647124671_)))
                                      (_tl124645124676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124647124671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124645124676_))
                                      (let ((_e124650124679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124645124676_))))
                                        (let ((_hd124649124682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124650124679_)))
                                              (_tl124648124684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124650124679_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124648124684_))
                                              (let ((_e124653124687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124648124684_))))
                                                (let ((_hd124652124690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124653124687_)))
                                                      (_tl124651124692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124653124687_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124651124692_))
                                                      ((lambda (_L124695_
                                                                _L124696_
                                                                _L124697_)
                                                         (let ((__tmp128439
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L124697_)))
                       (__tmp128438
                        (let () (declare (not safe)) (gx#stx-e _L124696_)))
                       (__tmp128437
                        (let () (declare (not safe)) (gx#stx-e _L124695_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128439
                    __tmp128438
                    __tmp128437)))
               _hd124652124690_
               _hd124649124682_
               _hd124646124674_)
              (let ()
                (declare (not safe))
                (_g124637124658_ _g124638124661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124637124658_
                                                 _g124638124661_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124637124658_ _g124638124661_)))))
                              (let ()
                                (declare (not safe))
                                (_g124637124658_ _g124638124661_)))))
                      (let ()
                        (declare (not safe))
                        (_g124637124658_ _g124638124661_))))))
          (declare (not safe))
          (_g124636124715_ _ann124635_))))
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
      (lambda (_stx123754_)
        (let* ((___stx126720126721_ _stx123754_)
               (_g123760123956_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126720126721_)))))
          (let ((___kont126722126723_
                 (lambda (_L124622_)
                   (let ((__obj128390
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128390
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124622_))
                      '#f)
                     __obj128390)))
                (___kont126724126725_
                 (lambda (_L124549_
                          _L124550_
                          _L124551_
                          _L124552_
                          _L124553_
                          _L124554_)
                   (let* ((_tab124604_
                           (let () (declare (not safe)) (gx#stx-e _L124551_)))
                          (_keys124606_
                           (if _tab124604_
                               (let ((__tmp128440 (vector->list _tab124604_)))
                                 (declare (not safe))
                                 (filter values __tmp128440))
                               '#f)))
                     (let ((__tmp128441
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124550_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys124606_
                        __tmp128441)))))
                (___kont126726126727_
                 (lambda (_L124282_
                          _L124283_
                          _L124284_
                          _L124285_
                          _L124286_
                          _L124287_
                          _L124288_
                          _L124289_
                          _L124290_
                          _L124291_)
                   (let ((__tmp128443
                          (map gx#stx-e
                               (let ((__tmp128444
                                      (lambda (_g124384124387_ _g124385124389_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124384124387_
                                                _g124385124389_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128444 '() _L124284_))))
                         (__tmp128442
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124288_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128443
                      __tmp128442))))
                (___kont126730126731_
                 (lambda (_L123992_)
                   (let ((__obj128391
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128391
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123992_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123992_)))
                     __obj128391)))
                (___kont126732126733_
                 (lambda (_L123969_)
                   (let ((__obj128392
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128392
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123969_))
                      '#f)
                     __obj128392))))
            (let* ((___match127039127040_
                    (lambda (_e123947123984_ _hd123946123987_ _tl123945123989_)
                      (let ((_L123992_ _tl123945123989_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123992_))
                            (___kont126730126731_ _L123992_)
                            (___kont126732126733_ _tl123945123989_)))))
                   (___match127033127034_
                    (lambda (_e123841124006_
                             _hd123840124009_
                             _tl123839124011_
                             _e123844124014_
                             _hd123843124017_
                             _tl123842124019_
                             _e123847124022_
                             _hd123846124025_
                             _tl123845124027_
                             _e123850124030_
                             _hd123849124033_
                             _tl123848124035_
                             _e123853124038_
                             _hd123852124041_
                             _tl123851124043_
                             _e123856124046_
                             _hd123855124049_
                             _tl123854124051_
                             _e123859124054_
                             _hd123858124057_
                             _tl123857124059_
                             _e123862124062_
                             _hd123861124065_
                             _tl123860124067_
                             _e123865124070_
                             _hd123864124073_
                             _tl123863124075_
                             _e123868124078_
                             _hd123867124081_
                             _tl123866124083_
                             _e123871124086_
                             _hd123870124089_
                             _tl123869124091_
                             _e123874124094_
                             _hd123873124097_
                             _tl123872124099_
                             _e123877124102_
                             _hd123876124105_
                             _tl123875124107_
                             _e123880124110_
                             _hd123879124113_
                             _tl123878124115_
                             ___splice126728126729_
                             _target123881124118_
                             _tl123883124120_
                             _e123898124123_
                             _hd123897124126_
                             _tl123896124128_
                             _e123901124131_
                             _hd123900124134_
                             _tl123899124136_
                             _e123904124139_
                             _hd123903124142_
                             _tl123902124144_)
                      (letrec ((_loop123884124147_
                                (lambda (_hd123882124150_
                                         _-absent-value123888124152_
                                         _key123889124154_
                                         _-xkwvar123890124156_
                                         _-hash-ref123891124158_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123882124150_))
                                      (let ((_e123885124161_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123882124150_))))
                                        (let ((_lp-tl123887124166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123885124161_)))
                                              (_lp-hd123886124164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123885124161_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123886124164_))
                                              (let ((_e123907124169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123886124164_))))
                                                (let ((_tl123905124174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123907124169_)))
                                                      (_hd123906124172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123907124169_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123906124172_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123906124172_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123905124174_))
                      (let ((_e123910124177_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123905124174_))))
                        (let ((_tl123908124182_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123910124177_)))
                              (_hd123909124180_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123910124177_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123909124180_))
                              (let ((_e123913124185_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123909124180_))))
                                (let ((_tl123911124190_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123913124185_)))
                                      (_hd123912124188_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123913124185_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123912124188_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123912124188_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123911124190_))
                                              (let ((_e123916124193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123911124190_))))
                                                (let ((_tl123914124198_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123916124193_)))
                                                      (_hd123915124196_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123916124193_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123914124198_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123908124182_))
                                                          (let ((_e123919124201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123908124182_))))
                    (let ((_tl123917124206_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123919124201_)))
                          (_hd123918124204_
                           (let ()
                             (declare (not safe))
                             (##car _e123919124201_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123918124204_))
                          (let ((_e123922124209_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123918124204_))))
                            (let ((_tl123920124214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123922124209_)))
                                  (_hd123921124212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123922124209_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123921124212_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123921124212_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123920124214_))
                                          (let ((_e123925124217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123920124214_))))
                                            (let ((_tl123923124222_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123925124217_)))
                                                  (_hd123924124220_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123925124217_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123923124222_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123917124206_))
                                                      (let ((_e123928124225_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123917124206_))))
                (let ((_tl123926124230_
                       (let () (declare (not safe)) (##cdr _e123928124225_)))
                      (_hd123927124228_
                       (let () (declare (not safe)) (##car _e123928124225_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123927124228_))
                      (let ((_e123931124233_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123927124228_))))
                        (let ((_tl123929124238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123931124233_)))
                              (_hd123930124236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123931124233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123930124236_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123930124236_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123929124238_))
                                      (let ((_e123934124241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123929124238_))))
                                        (let ((_tl123932124246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123934124241_)))
                                              (_hd123933124244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123934124241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123932124246_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123926124230_))
                                                  (let ((_e123937124249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123926124230_))))
                                                    (let ((_tl123935124254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123937124249_)))
                                                          (_hd123936124252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123937124249_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123936124252_))
                                                          (let ((_e123940124257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123936124252_))))
                    (let ((_tl123938124262_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123940124257_)))
                          (_hd123939124260_
                           (let ()
                             (declare (not safe))
                             (##car _e123940124257_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123939124260_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123939124260_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123938124262_))
                                  (let ((_e123943124265_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123938124262_))))
                                    (let ((_tl123941124270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123943124265_)))
                                          (_hd123942124268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123943124265_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123941124270_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123935124254_))
                                              (let ((__tmp128459
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123942124268_
                                                             _-absent-value123888124152_)))
                                                    (__tmp128458
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123933124244_
                                                             _key123889124154_)))
                                                    (__tmp128457
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123924124220_
                                                             _-xkwvar123890124156_)))
                                                    (__tmp128456
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123915124196_
                                                             _-hash-ref123891124158_))))
                                                (declare (not safe))
                                                (_loop123884124147_
                                                 _lp-tl123887124166_
                                                 __tmp128459
                                                 __tmp128458
                                                 __tmp128457
                                                 __tmp128456))
                                              (___match127039127040_
                                               _e123841124006_
                                               _hd123840124009_
                                               _tl123839124011_))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))
                              (___match127039127040_
                               _e123841124006_
                               _hd123840124009_
                               _tl123839124011_))
                          (___match127039127040_
                           _e123841124006_
                           _hd123840124009_
                           _tl123839124011_))))
                  (___match127039127040_
                   _e123841124006_
                   _hd123840124009_
                   _tl123839124011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))
                                              (___match127039127040_
                                               _e123841124006_
                                               _hd123840124009_
                                               _tl123839124011_))))
                                      (___match127039127040_
                                       _e123841124006_
                                       _hd123840124009_
                                       _tl123839124011_))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))
                              (___match127039127040_
                               _e123841124006_
                               _hd123840124009_
                               _tl123839124011_))))
                      (___match127039127040_
                       _e123841124006_
                       _hd123840124009_
                       _tl123839124011_))))
              (___match127039127040_
               _e123841124006_
               _hd123840124009_
               _tl123839124011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))
                                      (___match127039127040_
                                       _e123841124006_
                                       _hd123840124009_
                                       _tl123839124011_))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))))
                          (___match127039127040_
                           _e123841124006_
                           _hd123840124009_
                           _tl123839124011_))))
                  (___match127039127040_
                   _e123841124006_
                   _hd123840124009_
                   _tl123839124011_))
              (___match127039127040_
               _e123841124006_
               _hd123840124009_
               _tl123839124011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127039127040_
                                               _e123841124006_
                                               _hd123840124009_
                                               _tl123839124011_))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))
                                      (___match127039127040_
                                       _e123841124006_
                                       _hd123840124009_
                                       _tl123839124011_))))
                              (___match127039127040_
                               _e123841124006_
                               _hd123840124009_
                               _tl123839124011_))))
                      (___match127039127040_
                       _e123841124006_
                       _hd123840124009_
                       _tl123839124011_))
                  (___match127039127040_
                   _e123841124006_
                   _hd123840124009_
                   _tl123839124011_))
              (___match127039127040_
               _e123841124006_
               _hd123840124009_
               _tl123839124011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127039127040_
                                               _e123841124006_
                                               _hd123840124009_
                                               _tl123839124011_))))
                                      (let ((_-hash-ref123895124279_
                                             (reverse _-hash-ref123891124158_))
                                            (_-xkwvar123894124277_
                                             (reverse _-xkwvar123890124156_))
                                            (_key123893124275_
                                             (reverse _key123889124154_))
                                            (_-absent-value123892124273_
                                             (reverse _-absent-value123888124152_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123848124035_))
                                            (let ((_L124282_ _hd123903124142_)
                                                  (_L124283_
                                                   _-absent-value123892124273_)
                                                  (_L124284_ _key123893124275_)
                                                  (_L124285_
                                                   _-xkwvar123894124277_)
                                                  (_L124286_
                                                   _-hash-ref123895124279_)
                                                  (_L124287_ _hd123879124113_)
                                                  (_L124288_ _hd123870124089_)
                                                  (_L124289_ _hd123861124065_)
                                                  (_L124290_ _tl123845124027_)
                                                  (_L124291_ _hd123846124025_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124291_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124290_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124289_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124291_
                                                          _L124287_))
                                                       (let ((__tmp128454
                                                              (let ((__tmp128455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124344124347_ _g124345124349_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124344124347_ _g124345124349_)))))
                        (declare (not safe))
                        (foldr1 __tmp128455 '() _L124284_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128454))
               (let ((__tmp128453
                      (lambda (_g124351124353_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124351124353_
                           'hash-ref))))
                     (__tmp128451
                      (let ((__tmp128452
                             (lambda (_g124355124358_ _g124356124360_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124355124358_ _g124356124360_)))))
                        (declare (not safe))
                        (foldr1 __tmp128452 '() _L124286_))))
                 (declare (not safe))
                 (andmap1 __tmp128453 __tmp128451))
               (let ((__tmp128450
                      (lambda (_g124362124364_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124362124364_
                           'absent-value))))
                     (__tmp128448
                      (let ((__tmp128449
                             (lambda (_g124366124369_ _g124367124371_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124366124369_ _g124367124371_)))))
                        (declare (not safe))
                        (foldr1 __tmp128449 '() _L124283_))))
                 (declare (not safe))
                 (andmap1 __tmp128450 __tmp128448))
               (let ((__tmp128447
                      (lambda (_g124373124375_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124373124375_ _L124291_))))
                     (__tmp128445
                      (let ((__tmp128446
                             (lambda (_g124377124380_ _g124378124382_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124377124380_ _g124378124382_)))))
                        (declare (not safe))
                        (foldr1 __tmp128446 '() _L124285_))))
                 (declare (not safe))
                 (andmap1 __tmp128447 __tmp128445)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126726126727_
                                                   _L124282_
                                                   _L124283_
                                                   _L124284_
                                                   _L124285_
                                                   _L124286_
                                                   _L124287_
                                                   _L124288_
                                                   _L124289_
                                                   _L124290_
                                                   _L124291_)
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_)))
                                            (___match127039127040_
                                             _e123841124006_
                                             _hd123840124009_
                                             _tl123839124011_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123884124147_
                           _target123881124118_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126905126906_
                    (lambda (_e123841124006_
                             _hd123840124009_
                             _tl123839124011_
                             _e123844124014_
                             _hd123843124017_
                             _tl123842124019_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123843124017_))
                          (let ((_e123847124022_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123843124017_))))
                            (let ((_tl123845124027_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123847124022_)))
                                  (_hd123846124025_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123847124022_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123842124019_))
                                  (let ((_e123850124030_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123842124019_))))
                                    (let ((_tl123848124035_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123850124030_)))
                                          (_hd123849124033_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123850124030_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123849124033_))
                                          (let ((_e123853124038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123849124033_))))
                                            (let ((_tl123851124043_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123853124038_)))
                                                  (_hd123852124041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123853124038_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123852124041_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123852124041_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123851124043_))
                                                          (let ((_e123856124046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123851124043_))))
                    (let ((_tl123854124051_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123856124046_)))
                          (_hd123855124049_
                           (let ()
                             (declare (not safe))
                             (##car _e123856124046_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123855124049_))
                          (let ((_e123859124054_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123855124049_))))
                            (let ((_tl123857124059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123859124054_)))
                                  (_hd123858124057_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123859124054_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123858124057_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123858124057_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123857124059_))
                                          (let ((_e123862124062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123857124059_))))
                                            (let ((_tl123860124067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123862124062_)))
                                                  (_hd123861124065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123862124062_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123860124067_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123854124051_))
                                                      (let ((_e123865124070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123854124051_))))
                (let ((_tl123863124075_
                       (let () (declare (not safe)) (##cdr _e123865124070_)))
                      (_hd123864124073_
                       (let () (declare (not safe)) (##car _e123865124070_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123864124073_))
                      (let ((_e123868124078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123864124073_))))
                        (let ((_tl123866124083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123868124078_)))
                              (_hd123867124081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123868124078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123867124081_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123867124081_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123866124083_))
                                      (let ((_e123871124086_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123866124083_))))
                                        (let ((_tl123869124091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123871124086_)))
                                              (_hd123870124089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123871124086_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123869124091_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123863124075_))
                                                  (let ((_e123874124094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123863124075_))))
                                                    (let ((_tl123872124099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123874124094_)))
                                                          (_hd123873124097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123874124094_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123873124097_))
                                                          (let ((_e123877124102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123873124097_))))
                    (let ((_tl123875124107_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123877124102_)))
                          (_hd123876124105_
                           (let ()
                             (declare (not safe))
                             (##car _e123877124102_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123876124105_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123876124105_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123875124107_))
                                  (let ((_e123880124110_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123875124107_))))
                                    (let ((_tl123878124115_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123880124110_)))
                                          (_hd123879124113_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123880124110_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123878124115_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123872124099_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123872124099_))
                                                        '1)
                                                  (let ((___splice126728126729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123872124099_
                                                            '1))))
                                                    (let ((_tl123883124120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126728126729_
                                                              '1)))
                                                          (_target123881124118_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126728126729_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123883124120_))
                                                          (let ((_e123898124123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123883124120_))))
                    (let ((_tl123896124128_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123898124123_)))
                          (_hd123897124126_
                           (let ()
                             (declare (not safe))
                             (##car _e123898124123_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123897124126_))
                          (let ((_e123901124131_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123897124126_))))
                            (let ((_tl123899124136_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123901124131_)))
                                  (_hd123900124134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123901124131_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123900124134_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123900124134_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123899124136_))
                                          (let ((_e123904124139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123899124136_))))
                                            (let ((_tl123902124144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123904124139_)))
                                                  (_hd123903124142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123904124139_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123902124144_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123896124128_))
                                                      (___match127033127034_
                                                       _e123841124006_
                                                       _hd123840124009_
                                                       _tl123839124011_
                                                       _e123844124014_
                                                       _hd123843124017_
                                                       _tl123842124019_
                                                       _e123847124022_
                                                       _hd123846124025_
                                                       _tl123845124027_
                                                       _e123850124030_
                                                       _hd123849124033_
                                                       _tl123848124035_
                                                       _e123853124038_
                                                       _hd123852124041_
                                                       _tl123851124043_
                                                       _e123856124046_
                                                       _hd123855124049_
                                                       _tl123854124051_
                                                       _e123859124054_
                                                       _hd123858124057_
                                                       _tl123857124059_
                                                       _e123862124062_
                                                       _hd123861124065_
                                                       _tl123860124067_
                                                       _e123865124070_
                                                       _hd123864124073_
                                                       _tl123863124075_
                                                       _e123868124078_
                                                       _hd123867124081_
                                                       _tl123866124083_
                                                       _e123871124086_
                                                       _hd123870124089_
                                                       _tl123869124091_
                                                       _e123874124094_
                                                       _hd123873124097_
                                                       _tl123872124099_
                                                       _e123877124102_
                                                       _hd123876124105_
                                                       _tl123875124107_
                                                       _e123880124110_
                                                       _hd123879124113_
                                                       _tl123878124115_
                                                       ___splice126728126729_
                                                       _target123881124118_
                                                       _tl123883124120_
                                                       _e123898124123_
                                                       _hd123897124126_
                                                       _tl123896124128_
                                                       _e123901124131_
                                                       _hd123900124134_
                                                       _tl123899124136_
                                                       _e123904124139_
                                                       _hd123903124142_
                                                       _tl123902124144_)
                                                      (___match127039127040_
                                                       _e123841124006_
                                                       _hd123840124009_
                                                       _tl123839124011_))
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))
                                      (___match127039127040_
                                       _e123841124006_
                                       _hd123840124009_
                                       _tl123839124011_))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))))
                          (___match127039127040_
                           _e123841124006_
                           _hd123840124009_
                           _tl123839124011_))))
                  (___match127039127040_
                   _e123841124006_
                   _hd123840124009_
                   _tl123839124011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))
                                              (___match127039127040_
                                               _e123841124006_
                                               _hd123840124009_
                                               _tl123839124011_))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))
                              (___match127039127040_
                               _e123841124006_
                               _hd123840124009_
                               _tl123839124011_))
                          (___match127039127040_
                           _e123841124006_
                           _hd123840124009_
                           _tl123839124011_))))
                  (___match127039127040_
                   _e123841124006_
                   _hd123840124009_
                   _tl123839124011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))
                                              (___match127039127040_
                                               _e123841124006_
                                               _hd123840124009_
                                               _tl123839124011_))))
                                      (___match127039127040_
                                       _e123841124006_
                                       _hd123840124009_
                                       _tl123839124011_))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))
                              (___match127039127040_
                               _e123841124006_
                               _hd123840124009_
                               _tl123839124011_))))
                      (___match127039127040_
                       _e123841124006_
                       _hd123840124009_
                       _tl123839124011_))))
              (___match127039127040_
               _e123841124006_
               _hd123840124009_
               _tl123839124011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))
                                      (___match127039127040_
                                       _e123841124006_
                                       _hd123840124009_
                                       _tl123839124011_))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))))
                          (___match127039127040_
                           _e123841124006_
                           _hd123840124009_
                           _tl123839124011_))))
                  (___match127039127040_
                   _e123841124006_
                   _hd123840124009_
                   _tl123839124011_))
              (___match127039127040_
               _e123841124006_
               _hd123840124009_
               _tl123839124011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127039127040_
                                                   _e123841124006_
                                                   _hd123840124009_
                                                   _tl123839124011_))))
                                          (___match127039127040_
                                           _e123841124006_
                                           _hd123840124009_
                                           _tl123839124011_))))
                                  (___match127039127040_
                                   _e123841124006_
                                   _hd123840124009_
                                   _tl123839124011_))))
                          (___match127039127040_
                           _e123841124006_
                           _hd123840124009_
                           _tl123839124011_))))
                   (___match126893126894_
                    (lambda (_e123774124397_
                             _hd123773124400_
                             _tl123772124402_
                             _e123777124405_
                             _hd123776124408_
                             _tl123775124410_
                             _e123780124413_
                             _hd123779124416_
                             _tl123778124418_
                             _e123783124421_
                             _hd123782124424_
                             _tl123781124426_
                             _e123786124429_
                             _hd123785124432_
                             _tl123784124434_
                             _e123789124437_
                             _hd123788124440_
                             _tl123787124442_
                             _e123792124445_
                             _hd123791124448_
                             _tl123790124450_
                             _e123795124453_
                             _hd123794124456_
                             _tl123793124458_
                             _e123798124461_
                             _hd123797124464_
                             _tl123796124466_
                             _e123801124469_
                             _hd123800124472_
                             _tl123799124474_
                             _e123804124477_
                             _hd123803124480_
                             _tl123802124482_
                             _e123807124485_
                             _hd123806124488_
                             _tl123805124490_
                             _e123810124493_
                             _hd123809124496_
                             _tl123808124498_
                             _e123813124501_
                             _hd123812124504_
                             _tl123811124506_
                             _e123816124509_
                             _hd123815124512_
                             _tl123814124514_
                             _e123819124517_
                             _hd123818124520_
                             _tl123817124522_
                             _e123822124525_
                             _hd123821124528_
                             _tl123820124530_
                             _e123825124533_
                             _hd123824124536_
                             _tl123823124538_
                             _e123828124541_
                             _hd123827124544_
                             _tl123826124546_)
                      (let ((_L124549_ _hd123827124544_)
                            (_L124550_ _hd123818124520_)
                            (_L124551_ _hd123809124496_)
                            (_L124552_ _hd123800124472_)
                            (_L124553_ _hd123791124448_)
                            (_L124554_ _hd123776124408_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124554_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124553_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124552_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124554_ _L124549_)))
                            (___kont126724126725_
                             _L124549_
                             _L124550_
                             _L124551_
                             _L124552_
                             _L124553_
                             _L124554_)
                            (___match126905126906_
                             _e123774124397_
                             _hd123773124400_
                             _tl123772124402_
                             _e123777124405_
                             _hd123776124408_
                             _tl123775124410_)))))
                   (___match126747126748_
                    (lambda (_e123774124397_ _hd123773124400_ _tl123772124402_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123772124402_))
                          (let ((_e123777124405_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123772124402_))))
                            (let ((_tl123775124410_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123777124405_)))
                                  (_hd123776124408_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123777124405_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123775124410_))
                                  (let ((_e123780124413_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123775124410_))))
                                    (let ((_tl123778124418_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123780124413_)))
                                          (_hd123779124416_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123780124413_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123779124416_))
                                          (let ((_e123783124421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123779124416_))))
                                            (let ((_tl123781124426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123783124421_)))
                                                  (_hd123782124424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123783124421_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123782124424_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123782124424_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123781124426_))
                                                          (let ((_e123786124429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123781124426_))))
                    (let ((_tl123784124434_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123786124429_)))
                          (_hd123785124432_
                           (let ()
                             (declare (not safe))
                             (##car _e123786124429_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123785124432_))
                          (let ((_e123789124437_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123785124432_))))
                            (let ((_tl123787124442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123789124437_)))
                                  (_hd123788124440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123789124437_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123788124440_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123788124440_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123787124442_))
                                          (let ((_e123792124445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123787124442_))))
                                            (let ((_tl123790124450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123792124445_)))
                                                  (_hd123791124448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123792124445_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123790124450_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123784124434_))
                                                      (let ((_e123795124453_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123784124434_))))
                (let ((_tl123793124458_
                       (let () (declare (not safe)) (##cdr _e123795124453_)))
                      (_hd123794124456_
                       (let () (declare (not safe)) (##car _e123795124453_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123794124456_))
                      (let ((_e123798124461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123794124456_))))
                        (let ((_tl123796124466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123798124461_)))
                              (_hd123797124464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123798124461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123797124464_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123797124464_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123796124466_))
                                      (let ((_e123801124469_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123796124466_))))
                                        (let ((_tl123799124474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123801124469_)))
                                              (_hd123800124472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123801124469_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123799124474_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123793124458_))
                                                  (let ((_e123804124477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123793124458_))))
                                                    (let ((_tl123802124482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123804124477_)))
                                                          (_hd123803124480_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123804124477_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123803124480_))
                                                          (let ((_e123807124485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123803124480_))))
                    (let ((_tl123805124490_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123807124485_)))
                          (_hd123806124488_
                           (let ()
                             (declare (not safe))
                             (##car _e123807124485_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123806124488_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123806124488_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123805124490_))
                                  (let ((_e123810124493_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123805124490_))))
                                    (let ((_tl123808124498_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123810124493_)))
                                          (_hd123809124496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123810124493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123808124498_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123802124482_))
                                              (let ((_e123813124501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123802124482_))))
                                                (let ((_tl123811124506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123813124501_)))
                                                      (_hd123812124504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123813124501_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123812124504_))
                                                      (let ((_e123816124509_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123812124504_))))
                (let ((_tl123814124514_
                       (let () (declare (not safe)) (##cdr _e123816124509_)))
                      (_hd123815124512_
                       (let () (declare (not safe)) (##car _e123816124509_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123815124512_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123815124512_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123814124514_))
                              (let ((_e123819124517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123814124514_))))
                                (let ((_tl123817124522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123819124517_)))
                                      (_hd123818124520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123819124517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123817124522_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123811124506_))
                                          (let ((_e123822124525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123811124506_))))
                                            (let ((_tl123820124530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123822124525_)))
                                                  (_hd123821124528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123822124525_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123821124528_))
                                                  (let ((_e123825124533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123821124528_))))
                                                    (let ((_tl123823124538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123825124533_)))
                                                          (_hd123824124536_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123825124533_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123824124536_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123824124536_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123823124538_))
                          (let ((_e123828124541_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123823124538_))))
                            (let ((_tl123826124546_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123828124541_)))
                                  (_hd123827124544_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123828124541_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123826124546_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123820124530_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123778124418_))
                                          (___match126893126894_
                                           _e123774124397_
                                           _hd123773124400_
                                           _tl123772124402_
                                           _e123777124405_
                                           _hd123776124408_
                                           _tl123775124410_
                                           _e123780124413_
                                           _hd123779124416_
                                           _tl123778124418_
                                           _e123783124421_
                                           _hd123782124424_
                                           _tl123781124426_
                                           _e123786124429_
                                           _hd123785124432_
                                           _tl123784124434_
                                           _e123789124437_
                                           _hd123788124440_
                                           _tl123787124442_
                                           _e123792124445_
                                           _hd123791124448_
                                           _tl123790124450_
                                           _e123795124453_
                                           _hd123794124456_
                                           _tl123793124458_
                                           _e123798124461_
                                           _hd123797124464_
                                           _tl123796124466_
                                           _e123801124469_
                                           _hd123800124472_
                                           _tl123799124474_
                                           _e123804124477_
                                           _hd123803124480_
                                           _tl123802124482_
                                           _e123807124485_
                                           _hd123806124488_
                                           _tl123805124490_
                                           _e123810124493_
                                           _hd123809124496_
                                           _tl123808124498_
                                           _e123813124501_
                                           _hd123812124504_
                                           _tl123811124506_
                                           _e123816124509_
                                           _hd123815124512_
                                           _tl123814124514_
                                           _e123819124517_
                                           _hd123818124520_
                                           _tl123817124522_
                                           _e123822124525_
                                           _hd123821124528_
                                           _tl123820124530_
                                           _e123825124533_
                                           _hd123824124536_
                                           _tl123823124538_
                                           _e123828124541_
                                           _hd123827124544_
                                           _tl123826124546_)
                                          (___match126905126906_
                                           _e123774124397_
                                           _hd123773124400_
                                           _tl123772124402_
                                           _e123777124405_
                                           _hd123776124408_
                                           _tl123775124410_))
                                      (___match126905126906_
                                       _e123774124397_
                                       _hd123773124400_
                                       _tl123772124402_
                                       _e123777124405_
                                       _hd123776124408_
                                       _tl123775124410_))
                                  (___match126905126906_
                                   _e123774124397_
                                   _hd123773124400_
                                   _tl123772124402_
                                   _e123777124405_
                                   _hd123776124408_
                                   _tl123775124410_))))
                          (___match126905126906_
                           _e123774124397_
                           _hd123773124400_
                           _tl123772124402_
                           _e123777124405_
                           _hd123776124408_
                           _tl123775124410_))
                      (___match126905126906_
                       _e123774124397_
                       _hd123773124400_
                       _tl123772124402_
                       _e123777124405_
                       _hd123776124408_
                       _tl123775124410_))
                  (___match126905126906_
                   _e123774124397_
                   _hd123773124400_
                   _tl123772124402_
                   _e123777124405_
                   _hd123776124408_
                   _tl123775124410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126905126906_
                                                   _e123774124397_
                                                   _hd123773124400_
                                                   _tl123772124402_
                                                   _e123777124405_
                                                   _hd123776124408_
                                                   _tl123775124410_))))
                                          (___match126905126906_
                                           _e123774124397_
                                           _hd123773124400_
                                           _tl123772124402_
                                           _e123777124405_
                                           _hd123776124408_
                                           _tl123775124410_))
                                      (___match126905126906_
                                       _e123774124397_
                                       _hd123773124400_
                                       _tl123772124402_
                                       _e123777124405_
                                       _hd123776124408_
                                       _tl123775124410_))))
                              (___match126905126906_
                               _e123774124397_
                               _hd123773124400_
                               _tl123772124402_
                               _e123777124405_
                               _hd123776124408_
                               _tl123775124410_))
                          (___match126905126906_
                           _e123774124397_
                           _hd123773124400_
                           _tl123772124402_
                           _e123777124405_
                           _hd123776124408_
                           _tl123775124410_))
                      (___match126905126906_
                       _e123774124397_
                       _hd123773124400_
                       _tl123772124402_
                       _e123777124405_
                       _hd123776124408_
                       _tl123775124410_))))
              (___match126905126906_
               _e123774124397_
               _hd123773124400_
               _tl123772124402_
               _e123777124405_
               _hd123776124408_
               _tl123775124410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126905126906_
                                               _e123774124397_
                                               _hd123773124400_
                                               _tl123772124402_
                                               _e123777124405_
                                               _hd123776124408_
                                               _tl123775124410_))
                                          (___match126905126906_
                                           _e123774124397_
                                           _hd123773124400_
                                           _tl123772124402_
                                           _e123777124405_
                                           _hd123776124408_
                                           _tl123775124410_))))
                                  (___match126905126906_
                                   _e123774124397_
                                   _hd123773124400_
                                   _tl123772124402_
                                   _e123777124405_
                                   _hd123776124408_
                                   _tl123775124410_))
                              (___match126905126906_
                               _e123774124397_
                               _hd123773124400_
                               _tl123772124402_
                               _e123777124405_
                               _hd123776124408_
                               _tl123775124410_))
                          (___match126905126906_
                           _e123774124397_
                           _hd123773124400_
                           _tl123772124402_
                           _e123777124405_
                           _hd123776124408_
                           _tl123775124410_))))
                  (___match126905126906_
                   _e123774124397_
                   _hd123773124400_
                   _tl123772124402_
                   _e123777124405_
                   _hd123776124408_
                   _tl123775124410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126905126906_
                                                   _e123774124397_
                                                   _hd123773124400_
                                                   _tl123772124402_
                                                   _e123777124405_
                                                   _hd123776124408_
                                                   _tl123775124410_))
                                              (___match126905126906_
                                               _e123774124397_
                                               _hd123773124400_
                                               _tl123772124402_
                                               _e123777124405_
                                               _hd123776124408_
                                               _tl123775124410_))))
                                      (___match126905126906_
                                       _e123774124397_
                                       _hd123773124400_
                                       _tl123772124402_
                                       _e123777124405_
                                       _hd123776124408_
                                       _tl123775124410_))
                                  (___match126905126906_
                                   _e123774124397_
                                   _hd123773124400_
                                   _tl123772124402_
                                   _e123777124405_
                                   _hd123776124408_
                                   _tl123775124410_))
                              (___match126905126906_
                               _e123774124397_
                               _hd123773124400_
                               _tl123772124402_
                               _e123777124405_
                               _hd123776124408_
                               _tl123775124410_))))
                      (___match126905126906_
                       _e123774124397_
                       _hd123773124400_
                       _tl123772124402_
                       _e123777124405_
                       _hd123776124408_
                       _tl123775124410_))))
              (___match126905126906_
               _e123774124397_
               _hd123773124400_
               _tl123772124402_
               _e123777124405_
               _hd123776124408_
               _tl123775124410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126905126906_
                                                   _e123774124397_
                                                   _hd123773124400_
                                                   _tl123772124402_
                                                   _e123777124405_
                                                   _hd123776124408_
                                                   _tl123775124410_))))
                                          (___match126905126906_
                                           _e123774124397_
                                           _hd123773124400_
                                           _tl123772124402_
                                           _e123777124405_
                                           _hd123776124408_
                                           _tl123775124410_))
                                      (___match126905126906_
                                       _e123774124397_
                                       _hd123773124400_
                                       _tl123772124402_
                                       _e123777124405_
                                       _hd123776124408_
                                       _tl123775124410_))
                                  (___match126905126906_
                                   _e123774124397_
                                   _hd123773124400_
                                   _tl123772124402_
                                   _e123777124405_
                                   _hd123776124408_
                                   _tl123775124410_))))
                          (___match126905126906_
                           _e123774124397_
                           _hd123773124400_
                           _tl123772124402_
                           _e123777124405_
                           _hd123776124408_
                           _tl123775124410_))))
                  (___match126905126906_
                   _e123774124397_
                   _hd123773124400_
                   _tl123772124402_
                   _e123777124405_
                   _hd123776124408_
                   _tl123775124410_))
              (___match126905126906_
               _e123774124397_
               _hd123773124400_
               _tl123772124402_
               _e123777124405_
               _hd123776124408_
               _tl123775124410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126905126906_
                                                   _e123774124397_
                                                   _hd123773124400_
                                                   _tl123772124402_
                                                   _e123777124405_
                                                   _hd123776124408_
                                                   _tl123775124410_))))
                                          (___match126905126906_
                                           _e123774124397_
                                           _hd123773124400_
                                           _tl123772124402_
                                           _e123777124405_
                                           _hd123776124408_
                                           _tl123775124410_))))
                                  (___match126905126906_
                                   _e123774124397_
                                   _hd123773124400_
                                   _tl123772124402_
                                   _e123777124405_
                                   _hd123776124408_
                                   _tl123775124410_))))
                          (___match127039127040_
                           _e123774124397_
                           _hd123773124400_
                           _tl123772124402_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126720126721_))
                  (let ((_e123765124614_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126720126721_))))
                    (let ((_tl123763124619_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123765124614_)))
                          (_hd123764124617_
                           (let ()
                             (declare (not safe))
                             (##car _e123765124614_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L124622_ _tl123763124619_))
                            (___kont126722126723_ _L124622_))
                          (___match126747126748_
                           _e123765124614_
                           _hd123764124617_
                           _tl123763124619_))))
                  (let () (declare (not safe)) (_g123760123956_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx123709_)
        (letrec ((_clause-e123711_
                  (lambda (_form123752_)
                    (let ((__obj128393
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
                       __obj128393
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form123752_))
                       (if (let ((__tmp128460
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128460))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form123752_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form123752_))
                               '#f)
                           '#f))
                      __obj128393))))
          (let* ((_g123713123723_
                  (lambda (_g123714123720_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g123714123720_))))
                 (_g123712123749_
                  (lambda (_g123714123726_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g123714123726_))
                        (let ((_e123718123728_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g123714123726_))))
                          (let ((_hd123717123731_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123718123728_)))
                                (_tl123716123733_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123718123728_))))
                            ((lambda (_L123736_)
                               (let ((_clauses123747_
                                      (map _clause-e123711_ _L123736_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses123747_)))
                             _tl123716123733_)))
                        (let ()
                          (declare (not safe))
                          (_g123713123723_ _g123714123726_))))))
            (declare (not safe))
            (_g123712123749_ _stx123709_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx123641_)
        (let* ((_g123643123660_
                (lambda (_g123644123657_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123644123657_))))
               (_g123642123706_
                (lambda (_g123644123663_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123644123663_))
                      (let ((_e123649123665_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123644123663_))))
                        (let ((_hd123648123668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123649123665_)))
                              (_tl123647123670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123649123665_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123647123670_))
                              (let ((_e123652123673_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123647123670_))))
                                (let ((_hd123651123676_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123652123673_)))
                                      (_tl123650123678_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123652123673_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123650123678_))
                                      (let ((_e123655123681_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123650123678_))))
                                        (let ((_hd123654123684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123655123681_)))
                                              (_tl123653123686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123655123681_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123653123686_))
                                              ((lambda (_L123689_ _L123690_)
                                                 (let ((__tmp128461
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L123689_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128461
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd123654123684_
                                               _hd123651123676_)
                                              (let ()
                                                (declare (not safe))
                                                (_g123643123660_
                                                 _g123644123663_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123643123660_ _g123644123663_)))))
                              (let ()
                                (declare (not safe))
                                (_g123643123660_ _g123644123663_)))))
                      (let ()
                        (declare (not safe))
                        (_g123643123660_ _g123644123663_))))))
          (declare (not safe))
          (_g123642123706_ _stx123641_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123546_)
        (let* ((___stx127048127049_ _stx123546_)
               (_g123549123569_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127048127049_)))))
          (let ((___kont127050127051_
                 (lambda (_L123613_ _L123614_)
                   (let ((_type-e123631123633_
                          (let ((__tmp128462
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L123614_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128462))))
                     (if _type-e123631123633_
                         (let ((_type-e123636_ _type-e123631123633_))
                           (_type-e123636_ _stx123546_ _L123613_))
                         '#f))))
                (___kont127052127053_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127048127049_))
                (let ((_e123555123581_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127048127049_))))
                  (let ((_tl123553123586_
                         (let () (declare (not safe)) (##cdr _e123555123581_)))
                        (_hd123554123584_
                         (let ()
                           (declare (not safe))
                           (##car _e123555123581_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123553123586_))
                        (let ((_e123558123589_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123553123586_))))
                          (let ((_tl123556123594_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123558123589_)))
                                (_hd123557123592_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123558123589_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123557123592_))
                                (let ((_e123561123597_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123557123592_))))
                                  (let ((_tl123559123602_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123561123597_)))
                                        (_hd123560123600_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123561123597_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123560123600_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123560123600_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123559123602_))
                                                (let ((_e123564123605_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123559123602_))))
                                                  (let ((_tl123562123610_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123564123605_)))
                                                        (_hd123563123608_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123564123605_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123562123610_))
                                                        (___kont127050127051_
                                                         _tl123556123594_
                                                         _hd123563123608_)
                                                        (___kont127052127053_))))
                                                (___kont127052127053_))
                                            (___kont127052127053_))
                                        (___kont127052127053_))))
                                (___kont127052127053_))))
                        (___kont127052127053_))))
                (___kont127052127053_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123495_)
        (let* ((_g123497123510_
                (lambda (_g123498123507_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123498123507_))))
               (_g123496123543_
                (lambda (_g123498123513_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123498123513_))
                      (let ((_e123502123515_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123498123513_))))
                        (let ((_hd123501123518_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123502123515_)))
                              (_tl123500123520_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123502123515_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123500123520_))
                              (let ((_e123505123523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123500123520_))))
                                (let ((_hd123504123526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123505123523_)))
                                      (_tl123503123528_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123505123523_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123503123528_))
                                      ((lambda (_L123531_)
                                         (let ((__tmp128463
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123531_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128463)))
                                       _hd123504123526_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123497123510_ _g123498123513_)))))
                              (let ()
                                (declare (not safe))
                                (_g123497123510_ _g123498123513_)))))
                      (let ()
                        (declare (not safe))
                        (_g123497123510_ _g123498123513_))))))
          (declare (not safe))
          (_g123496123543_ _stx123495_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form122729_)
        (let* ((___stx127086127087_ _form122729_)
               (_g122734122891_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127086127087_)))))
          (let ((___kont127088127089_
                 (lambda (_L123415_ _L123416_ _L123417_) '#t))
                (___kont127094127095_
                 (lambda (_L123203_
                          _L123204_
                          _L123205_
                          _L123206_
                          _L123207_
                          _L123208_)
                   '#t))
                (___kont127100127101_
                 (lambda (_L122999_ _L123000_ _L123001_ _L123002_) '#t))
                (___kont127102127103_ (lambda () '#f)))
            (let* ((___match127227127228_
                    (lambda (_e122853122903_
                             _hd122852122906_
                             _tl122851122908_
                             _e122856122911_
                             _hd122855122914_
                             _tl122854122916_
                             _e122859122919_
                             _hd122858122922_
                             _tl122857122924_
                             _e122862122927_
                             _hd122861122930_
                             _tl122860122932_
                             _e122865122935_
                             _hd122864122938_
                             _tl122863122940_
                             _e122868122943_
                             _hd122867122946_
                             _tl122866122948_
                             _e122871122951_
                             _hd122870122954_
                             _tl122869122956_
                             _e122874122959_
                             _hd122873122962_
                             _tl122872122964_
                             _e122877122967_
                             _hd122876122970_
                             _tl122875122972_
                             _e122880122975_
                             _hd122879122978_
                             _tl122878122980_
                             _e122883122983_
                             _hd122882122986_
                             _tl122881122988_
                             _e122886122991_
                             _hd122885122994_
                             _tl122884122996_)
                      (let ((_L122999_ _hd122885122994_)
                            (_L123000_ _hd122876122970_)
                            (_L123001_ _hd122867122946_)
                            (_L123002_ _hd122852122906_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123002_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123001_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123002_ _L122999_))
                                 (let ((__tmp128464
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123000_
                                           _L123002_))))
                                   (declare (not safe))
                                   (not __tmp128464)))
                            (___kont127100127101_
                             _L122999_
                             _L123000_
                             _L123001_
                             _L123002_)
                            (___kont127102127103_)))))
                   (___match127199127200_
                    (lambda (_e122853122903_
                             _hd122852122906_
                             _tl122851122908_
                             _e122856122911_
                             _hd122855122914_
                             _tl122854122916_
                             _e122859122919_
                             _hd122858122922_
                             _tl122857122924_
                             _e122862122927_
                             _hd122861122930_
                             _tl122860122932_
                             _e122865122935_
                             _hd122864122938_
                             _tl122863122940_
                             _e122868122943_
                             _hd122867122946_
                             _tl122866122948_
                             _e122871122951_
                             _hd122870122954_
                             _tl122869122956_
                             _e122874122959_
                             _hd122873122962_
                             _tl122872122964_
                             _e122877122967_
                             _hd122876122970_
                             _tl122875122972_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122869122956_))
                          (let ((_e122880122975_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122869122956_))))
                            (let ((_tl122878122980_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122880122975_)))
                                  (_hd122879122978_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122880122975_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122879122978_))
                                  (let ((_e122883122983_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122879122978_))))
                                    (let ((_tl122881122988_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122883122983_)))
                                          (_hd122882122986_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122883122983_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122882122986_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122882122986_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122881122988_))
                                                  (let ((_e122886122991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122881122988_))))
                                                    (let ((_tl122884122996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122886122991_)))
                                                          (_hd122885122994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122886122991_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122884122996_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122878122980_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122854122916_))
                          (___match127227127228_
                           _e122853122903_
                           _hd122852122906_
                           _tl122851122908_
                           _e122856122911_
                           _hd122855122914_
                           _tl122854122916_
                           _e122859122919_
                           _hd122858122922_
                           _tl122857122924_
                           _e122862122927_
                           _hd122861122930_
                           _tl122860122932_
                           _e122865122935_
                           _hd122864122938_
                           _tl122863122940_
                           _e122868122943_
                           _hd122867122946_
                           _tl122866122948_
                           _e122871122951_
                           _hd122870122954_
                           _tl122869122956_
                           _e122874122959_
                           _hd122873122962_
                           _tl122872122964_
                           _e122877122967_
                           _hd122876122970_
                           _tl122875122972_
                           _e122880122975_
                           _hd122879122978_
                           _tl122878122980_
                           _e122883122983_
                           _hd122882122986_
                           _tl122881122988_
                           _e122886122991_
                           _hd122885122994_
                           _tl122884122996_)
                          (___kont127102127103_))
                      (___kont127102127103_))
                  (___kont127102127103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127102127103_))
                                              (___kont127102127103_))
                                          (___kont127102127103_))))
                                  (___kont127102127103_))))
                          (___kont127102127103_))))
                   (___match127129127130_
                    (lambda (_e122789123043_
                             _hd122788123046_
                             _tl122787123048_
                             ___splice127096127097_
                             _target122790123051_
                             _tl122792123053_)
                      (letrec ((_loop122793123056_
                                (lambda (_hd122791123059_ _arg122797123061_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122791123059_))
                                      (let ((_e122794123064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122791123059_))))
                                        (let ((_lp-tl122796123069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122794123064_)))
                                              (_lp-hd122795123067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122794123064_))))
                                          (let ((__tmp128479
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122795123067_
                                                         _arg122797123061_))))
                                            (declare (not safe))
                                            (_loop122793123056_
                                             _lp-tl122796123069_
                                             __tmp128479))))
                                      (let ((_arg122798123072_
                                             (reverse _arg122797123061_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122787123048_))
                                            (let ((_e122801123075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122787123048_))))
                                              (let ((_tl122799123080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122801123075_)))
                                                    (_hd122800123078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122801123075_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122800123078_))
                                                    (let ((_e122804123083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122800123078_))))
                                                      (let ((_tl122802123088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122804123083_)))
                    (_hd122803123086_
                     (let () (declare (not safe)) (##car _e122804123083_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122803123086_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122803123086_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122802123088_))
                            (let ((_e122807123091_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122802123088_))))
                              (let ((_tl122805123096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122807123091_)))
                                    (_hd122806123094_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122807123091_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122806123094_))
                                    (let ((_e122810123099_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122806123094_))))
                                      (let ((_tl122808123104_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122810123099_)))
                                            (_hd122809123102_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122810123099_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122809123102_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122809123102_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122808123104_))
                                                    (let ((_e122813123107_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122808123104_))))
                                                      (let ((_tl122811123112_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122813123107_)))
                    (_hd122812123110_
                     (let () (declare (not safe)) (##car _e122813123107_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122811123112_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122805123096_))
                        (let ((_e122816123115_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122805123096_))))
                          (let ((_tl122814123120_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122816123115_)))
                                (_hd122815123118_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122816123115_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122815123118_))
                                (let ((_e122819123123_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122815123118_))))
                                  (let ((_tl122817123128_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122819123123_)))
                                        (_hd122818123126_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122819123123_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122818123126_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122818123126_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122817123128_))
                                                (let ((_e122822123131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122817123128_))))
                                                  (let ((_tl122820123136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122822123131_)))
                                                        (_hd122821123134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122822123131_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122820123136_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122814123120_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122814123120_))
                              '1)
                        (let ((___splice127098127099_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122814123120_
                                  '1))))
                          (let ((_tl122825123141_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127098127099_ '1)))
                                (_target122823123139_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127098127099_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122825123141_))
                                (let ((_e122834123144_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122825123141_))))
                                  (let ((_tl122832123149_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122834123144_)))
                                        (_hd122833123147_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122834123144_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122833123147_))
                                        (let ((_e122837123152_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122833123147_))))
                                          (let ((_tl122835123157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122837123152_)))
                                                (_hd122836123155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122837123152_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122836123155_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122836123155_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122835123157_))
                                                        (let ((_e122840123160_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122835123157_))))
                  (let ((_tl122838123165_
                         (let () (declare (not safe)) (##cdr _e122840123160_)))
                        (_hd122839123163_
                         (let ()
                           (declare (not safe))
                           (##car _e122840123160_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122838123165_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122832123149_))
                            (letrec ((_loop122826123168_
                                      (lambda (_hd122824123171_
                                               _xarg122830123173_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122824123171_))
                                            (let ((_e122827123176_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122824123171_))))
                                              (let ((_lp-tl122829123181_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122827123176_)))
                                                    (_lp-hd122828123179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122827123176_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122828123179_))
                                                    (let ((_e122843123184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122828123179_))))
                                                      (let ((_tl122841123189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122843123184_)))
                    (_hd122842123187_
                     (let () (declare (not safe)) (##car _e122843123184_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122842123187_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122842123187_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122841123189_))
                            (let ((_e122846123192_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122841123189_))))
                              (let ((_tl122844123197_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122846123192_)))
                                    (_hd122845123195_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122846123192_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122844123197_))
                                    (let ((__tmp128478
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122845123195_
                                                   _xarg122830123173_))))
                                      (declare (not safe))
                                      (_loop122826123168_
                                       _lp-tl122829123181_
                                       __tmp128478))
                                    (___match127199127200_
                                     _e122789123043_
                                     _hd122788123046_
                                     _tl122787123048_
                                     _e122801123075_
                                     _hd122800123078_
                                     _tl122799123080_
                                     _e122804123083_
                                     _hd122803123086_
                                     _tl122802123088_
                                     _e122807123091_
                                     _hd122806123094_
                                     _tl122805123096_
                                     _e122810123099_
                                     _hd122809123102_
                                     _tl122808123104_
                                     _e122813123107_
                                     _hd122812123110_
                                     _tl122811123112_
                                     _e122816123115_
                                     _hd122815123118_
                                     _tl122814123120_
                                     _e122819123123_
                                     _hd122818123126_
                                     _tl122817123128_
                                     _e122822123131_
                                     _hd122821123134_
                                     _tl122820123136_))))
                            (___match127199127200_
                             _e122789123043_
                             _hd122788123046_
                             _tl122787123048_
                             _e122801123075_
                             _hd122800123078_
                             _tl122799123080_
                             _e122804123083_
                             _hd122803123086_
                             _tl122802123088_
                             _e122807123091_
                             _hd122806123094_
                             _tl122805123096_
                             _e122810123099_
                             _hd122809123102_
                             _tl122808123104_
                             _e122813123107_
                             _hd122812123110_
                             _tl122811123112_
                             _e122816123115_
                             _hd122815123118_
                             _tl122814123120_
                             _e122819123123_
                             _hd122818123126_
                             _tl122817123128_
                             _e122822123131_
                             _hd122821123134_
                             _tl122820123136_))
                        (___match127199127200_
                         _e122789123043_
                         _hd122788123046_
                         _tl122787123048_
                         _e122801123075_
                         _hd122800123078_
                         _tl122799123080_
                         _e122804123083_
                         _hd122803123086_
                         _tl122802123088_
                         _e122807123091_
                         _hd122806123094_
                         _tl122805123096_
                         _e122810123099_
                         _hd122809123102_
                         _tl122808123104_
                         _e122813123107_
                         _hd122812123110_
                         _tl122811123112_
                         _e122816123115_
                         _hd122815123118_
                         _tl122814123120_
                         _e122819123123_
                         _hd122818123126_
                         _tl122817123128_
                         _e122822123131_
                         _hd122821123134_
                         _tl122820123136_))
                    (___match127199127200_
                     _e122789123043_
                     _hd122788123046_
                     _tl122787123048_
                     _e122801123075_
                     _hd122800123078_
                     _tl122799123080_
                     _e122804123083_
                     _hd122803123086_
                     _tl122802123088_
                     _e122807123091_
                     _hd122806123094_
                     _tl122805123096_
                     _e122810123099_
                     _hd122809123102_
                     _tl122808123104_
                     _e122813123107_
                     _hd122812123110_
                     _tl122811123112_
                     _e122816123115_
                     _hd122815123118_
                     _tl122814123120_
                     _e122819123123_
                     _hd122818123126_
                     _tl122817123128_
                     _e122822123131_
                     _hd122821123134_
                     _tl122820123136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127199127200_
                                                     _e122789123043_
                                                     _hd122788123046_
                                                     _tl122787123048_
                                                     _e122801123075_
                                                     _hd122800123078_
                                                     _tl122799123080_
                                                     _e122804123083_
                                                     _hd122803123086_
                                                     _tl122802123088_
                                                     _e122807123091_
                                                     _hd122806123094_
                                                     _tl122805123096_
                                                     _e122810123099_
                                                     _hd122809123102_
                                                     _tl122808123104_
                                                     _e122813123107_
                                                     _hd122812123110_
                                                     _tl122811123112_
                                                     _e122816123115_
                                                     _hd122815123118_
                                                     _tl122814123120_
                                                     _e122819123123_
                                                     _hd122818123126_
                                                     _tl122817123128_
                                                     _e122822123131_
                                                     _hd122821123134_
                                                     _tl122820123136_))))
                                            (let ((_xarg122831123200_
                                                   (reverse _xarg122830123173_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122799123080_))
                                                  (let ((_L123203_
                                                         _hd122839123163_)
                                                        (_L123204_
                                                         _xarg122831123200_)
                                                        (_L123205_
                                                         _hd122821123134_)
                                                        (_L123206_
                                                         _hd122812123110_)
                                                        (_L123207_
                                                         _tl122792123053_)
                                                        (_L123208_
                                                         _arg122798123072_))
                                                    (if (and (let ((__tmp128476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128477
                                   (lambda (_g123251123254_ _g123252123256_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123251123254_
                                             _g123252123256_)))))
                              (declare (not safe))
                              (foldr1 __tmp128477 '() _L123208_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128476))
                     (let () (declare (not safe)) (gx#identifier? _L123207_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123206_ 'apply))
                     (fx= (length (let ((__tmp128474
                                         (lambda (_g123258123261_
                                                  _g123259123263_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123258123261_
                                                   _g123259123263_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128474 '() _L123208_)))
                          (length (let ((__tmp128475
                                         (lambda (_g123265123268_
                                                  _g123266123270_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123265123268_
                                                   _g123266123270_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128475 '() _L123204_))))
                     (let ((__tmp128472
                            (let ((__tmp128473
                                   (lambda (_g123272123275_ _g123273123277_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123272123275_
                                             _g123273123277_)))))
                              (declare (not safe))
                              (foldr1 __tmp128473 '() _L123208_)))
                           (__tmp128470
                            (let ((__tmp128471
                                   (lambda (_g123279123282_ _g123280123284_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123279123282_
                                             _g123280123284_)))))
                              (declare (not safe))
                              (foldr1 __tmp128471 '() _L123204_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128472 __tmp128470))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123207_ _L123203_))
                     (let ((__tmp128465
                            (let ((__tmp128469
                                   (lambda (_g123286123288_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123286123288_
                                        _L123205_))))
                                  (__tmp128466
                                   (let ((__tmp128468
                                          (lambda (_g123290123293_
                                                   _g123291123295_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123290123293_
                                                    _g123291123295_))))
                                         (__tmp128467
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123207_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128468
                                             __tmp128467
                                             _L123208_))))
                              (declare (not safe))
                              (find __tmp128469 __tmp128466))))
                       (declare (not safe))
                       (not __tmp128465)))
                (___kont127094127095_
                 _L123203_
                 _L123204_
                 _L123205_
                 _L123206_
                 _L123207_
                 _L123208_)
                (___match127199127200_
                 _e122789123043_
                 _hd122788123046_
                 _tl122787123048_
                 _e122801123075_
                 _hd122800123078_
                 _tl122799123080_
                 _e122804123083_
                 _hd122803123086_
                 _tl122802123088_
                 _e122807123091_
                 _hd122806123094_
                 _tl122805123096_
                 _e122810123099_
                 _hd122809123102_
                 _tl122808123104_
                 _e122813123107_
                 _hd122812123110_
                 _tl122811123112_
                 _e122816123115_
                 _hd122815123118_
                 _tl122814123120_
                 _e122819123123_
                 _hd122818123126_
                 _tl122817123128_
                 _e122822123131_
                 _hd122821123134_
                 _tl122820123136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127199127200_
                                                   _e122789123043_
                                                   _hd122788123046_
                                                   _tl122787123048_
                                                   _e122801123075_
                                                   _hd122800123078_
                                                   _tl122799123080_
                                                   _e122804123083_
                                                   _hd122803123086_
                                                   _tl122802123088_
                                                   _e122807123091_
                                                   _hd122806123094_
                                                   _tl122805123096_
                                                   _e122810123099_
                                                   _hd122809123102_
                                                   _tl122808123104_
                                                   _e122813123107_
                                                   _hd122812123110_
                                                   _tl122811123112_
                                                   _e122816123115_
                                                   _hd122815123118_
                                                   _tl122814123120_
                                                   _e122819123123_
                                                   _hd122818123126_
                                                   _tl122817123128_
                                                   _e122822123131_
                                                   _hd122821123134_
                                                   _tl122820123136_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122826123168_ _target122823123139_ '())))
                            (___match127199127200_
                             _e122789123043_
                             _hd122788123046_
                             _tl122787123048_
                             _e122801123075_
                             _hd122800123078_
                             _tl122799123080_
                             _e122804123083_
                             _hd122803123086_
                             _tl122802123088_
                             _e122807123091_
                             _hd122806123094_
                             _tl122805123096_
                             _e122810123099_
                             _hd122809123102_
                             _tl122808123104_
                             _e122813123107_
                             _hd122812123110_
                             _tl122811123112_
                             _e122816123115_
                             _hd122815123118_
                             _tl122814123120_
                             _e122819123123_
                             _hd122818123126_
                             _tl122817123128_
                             _e122822123131_
                             _hd122821123134_
                             _tl122820123136_))
                        (___match127199127200_
                         _e122789123043_
                         _hd122788123046_
                         _tl122787123048_
                         _e122801123075_
                         _hd122800123078_
                         _tl122799123080_
                         _e122804123083_
                         _hd122803123086_
                         _tl122802123088_
                         _e122807123091_
                         _hd122806123094_
                         _tl122805123096_
                         _e122810123099_
                         _hd122809123102_
                         _tl122808123104_
                         _e122813123107_
                         _hd122812123110_
                         _tl122811123112_
                         _e122816123115_
                         _hd122815123118_
                         _tl122814123120_
                         _e122819123123_
                         _hd122818123126_
                         _tl122817123128_
                         _e122822123131_
                         _hd122821123134_
                         _tl122820123136_))))
                (___match127199127200_
                 _e122789123043_
                 _hd122788123046_
                 _tl122787123048_
                 _e122801123075_
                 _hd122800123078_
                 _tl122799123080_
                 _e122804123083_
                 _hd122803123086_
                 _tl122802123088_
                 _e122807123091_
                 _hd122806123094_
                 _tl122805123096_
                 _e122810123099_
                 _hd122809123102_
                 _tl122808123104_
                 _e122813123107_
                 _hd122812123110_
                 _tl122811123112_
                 _e122816123115_
                 _hd122815123118_
                 _tl122814123120_
                 _e122819123123_
                 _hd122818123126_
                 _tl122817123128_
                 _e122822123131_
                 _hd122821123134_
                 _tl122820123136_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127199127200_
                                                     _e122789123043_
                                                     _hd122788123046_
                                                     _tl122787123048_
                                                     _e122801123075_
                                                     _hd122800123078_
                                                     _tl122799123080_
                                                     _e122804123083_
                                                     _hd122803123086_
                                                     _tl122802123088_
                                                     _e122807123091_
                                                     _hd122806123094_
                                                     _tl122805123096_
                                                     _e122810123099_
                                                     _hd122809123102_
                                                     _tl122808123104_
                                                     _e122813123107_
                                                     _hd122812123110_
                                                     _tl122811123112_
                                                     _e122816123115_
                                                     _hd122815123118_
                                                     _tl122814123120_
                                                     _e122819123123_
                                                     _hd122818123126_
                                                     _tl122817123128_
                                                     _e122822123131_
                                                     _hd122821123134_
                                                     _tl122820123136_))
                                                (___match127199127200_
                                                 _e122789123043_
                                                 _hd122788123046_
                                                 _tl122787123048_
                                                 _e122801123075_
                                                 _hd122800123078_
                                                 _tl122799123080_
                                                 _e122804123083_
                                                 _hd122803123086_
                                                 _tl122802123088_
                                                 _e122807123091_
                                                 _hd122806123094_
                                                 _tl122805123096_
                                                 _e122810123099_
                                                 _hd122809123102_
                                                 _tl122808123104_
                                                 _e122813123107_
                                                 _hd122812123110_
                                                 _tl122811123112_
                                                 _e122816123115_
                                                 _hd122815123118_
                                                 _tl122814123120_
                                                 _e122819123123_
                                                 _hd122818123126_
                                                 _tl122817123128_
                                                 _e122822123131_
                                                 _hd122821123134_
                                                 _tl122820123136_))))
                                        (___match127199127200_
                                         _e122789123043_
                                         _hd122788123046_
                                         _tl122787123048_
                                         _e122801123075_
                                         _hd122800123078_
                                         _tl122799123080_
                                         _e122804123083_
                                         _hd122803123086_
                                         _tl122802123088_
                                         _e122807123091_
                                         _hd122806123094_
                                         _tl122805123096_
                                         _e122810123099_
                                         _hd122809123102_
                                         _tl122808123104_
                                         _e122813123107_
                                         _hd122812123110_
                                         _tl122811123112_
                                         _e122816123115_
                                         _hd122815123118_
                                         _tl122814123120_
                                         _e122819123123_
                                         _hd122818123126_
                                         _tl122817123128_
                                         _e122822123131_
                                         _hd122821123134_
                                         _tl122820123136_))))
                                (___match127199127200_
                                 _e122789123043_
                                 _hd122788123046_
                                 _tl122787123048_
                                 _e122801123075_
                                 _hd122800123078_
                                 _tl122799123080_
                                 _e122804123083_
                                 _hd122803123086_
                                 _tl122802123088_
                                 _e122807123091_
                                 _hd122806123094_
                                 _tl122805123096_
                                 _e122810123099_
                                 _hd122809123102_
                                 _tl122808123104_
                                 _e122813123107_
                                 _hd122812123110_
                                 _tl122811123112_
                                 _e122816123115_
                                 _hd122815123118_
                                 _tl122814123120_
                                 _e122819123123_
                                 _hd122818123126_
                                 _tl122817123128_
                                 _e122822123131_
                                 _hd122821123134_
                                 _tl122820123136_))))
                        (___match127199127200_
                         _e122789123043_
                         _hd122788123046_
                         _tl122787123048_
                         _e122801123075_
                         _hd122800123078_
                         _tl122799123080_
                         _e122804123083_
                         _hd122803123086_
                         _tl122802123088_
                         _e122807123091_
                         _hd122806123094_
                         _tl122805123096_
                         _e122810123099_
                         _hd122809123102_
                         _tl122808123104_
                         _e122813123107_
                         _hd122812123110_
                         _tl122811123112_
                         _e122816123115_
                         _hd122815123118_
                         _tl122814123120_
                         _e122819123123_
                         _hd122818123126_
                         _tl122817123128_
                         _e122822123131_
                         _hd122821123134_
                         _tl122820123136_))
                    (___match127199127200_
                     _e122789123043_
                     _hd122788123046_
                     _tl122787123048_
                     _e122801123075_
                     _hd122800123078_
                     _tl122799123080_
                     _e122804123083_
                     _hd122803123086_
                     _tl122802123088_
                     _e122807123091_
                     _hd122806123094_
                     _tl122805123096_
                     _e122810123099_
                     _hd122809123102_
                     _tl122808123104_
                     _e122813123107_
                     _hd122812123110_
                     _tl122811123112_
                     _e122816123115_
                     _hd122815123118_
                     _tl122814123120_
                     _e122819123123_
                     _hd122818123126_
                     _tl122817123128_
                     _e122822123131_
                     _hd122821123134_
                     _tl122820123136_))
                (___kont127102127103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127102127103_))
                                            (___kont127102127103_))
                                        (___kont127102127103_))))
                                (___kont127102127103_))))
                        (___kont127102127103_))
                    (___kont127102127103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127102127103_))
                                                (___kont127102127103_))
                                            (___kont127102127103_))))
                                    (___kont127102127103_))))
                            (___kont127102127103_))
                        (___kont127102127103_))
                    (___kont127102127103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127102127103_))))
                                            (___kont127102127103_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122793123056_ _target122790123051_ '())))))
                   (___match127117127118_
                    (lambda (_e122741123303_
                             _hd122740123306_
                             _tl122739123308_
                             ___splice127090127091_
                             _target122742123311_
                             _tl122744123313_)
                      (letrec ((_loop122745123316_
                                (lambda (_hd122743123319_ _arg122749123321_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122743123319_))
                                      (let ((_e122746123324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122743123319_))))
                                        (let ((_lp-tl122748123329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122746123324_)))
                                              (_lp-hd122747123327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122746123324_))))
                                          (let ((__tmp128493
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122747123327_
                                                         _arg122749123321_))))
                                            (declare (not safe))
                                            (_loop122745123316_
                                             _lp-tl122748123329_
                                             __tmp128493))))
                                      (let ((_arg122750123332_
                                             (reverse _arg122749123321_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122739123308_))
                                            (let ((_e122753123335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122739123308_))))
                                              (let ((_tl122751123340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122753123335_)))
                                                    (_hd122752123338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122753123335_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122752123338_))
                                                    (let ((_e122756123343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122752123338_))))
                                                      (let ((_tl122754123348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122756123343_)))
                    (_hd122755123346_
                     (let () (declare (not safe)) (##car _e122756123343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122755123346_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122755123346_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122754123348_))
                            (let ((_e122759123351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122754123348_))))
                              (let ((_tl122757123356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122759123351_)))
                                    (_hd122758123354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122759123351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122758123354_))
                                    (let ((_e122762123359_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122758123354_))))
                                      (let ((_tl122760123364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122762123359_)))
                                            (_hd122761123362_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122762123359_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122761123362_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122761123362_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122760123364_))
                                                    (let ((_e122765123367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122760123364_))))
                                                      (let ((_tl122763123372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122765123367_)))
                    (_hd122764123370_
                     (let () (declare (not safe)) (##car _e122765123367_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122763123372_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122757123356_))
                        (let ((___splice127092127093_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122757123356_
                                  '0))))
                          (let ((_tl122768123377_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127092127093_ '1)))
                                (_target122766123375_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127092127093_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122768123377_))
                                (letrec ((_loop122769123380_
                                          (lambda (_hd122767123383_
                                                   _xarg122773123385_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122767123383_))
                                                (let ((_e122770123388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122767123383_))))
                                                  (let ((_lp-tl122772123393_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122770123388_)))
                                                        (_lp-hd122771123391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122770123388_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122771123391_))
                                                        (let ((_e122777123396_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122771123391_))))
                  (let ((_tl122775123401_
                         (let () (declare (not safe)) (##cdr _e122777123396_)))
                        (_hd122776123399_
                         (let ()
                           (declare (not safe))
                           (##car _e122777123396_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122776123399_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122776123399_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122775123401_))
                                (let ((_e122780123404_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122775123401_))))
                                  (let ((_tl122778123409_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122780123404_)))
                                        (_hd122779123407_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122780123404_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122778123409_))
                                        (let ((__tmp128492
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122779123407_
                                                       _xarg122773123385_))))
                                          (declare (not safe))
                                          (_loop122769123380_
                                           _lp-tl122772123393_
                                           __tmp128492))
                                        (___match127129127130_
                                         _e122741123303_
                                         _hd122740123306_
                                         _tl122739123308_
                                         ___splice127090127091_
                                         _target122742123311_
                                         _tl122744123313_))))
                                (___match127129127130_
                                 _e122741123303_
                                 _hd122740123306_
                                 _tl122739123308_
                                 ___splice127090127091_
                                 _target122742123311_
                                 _tl122744123313_))
                            (___match127129127130_
                             _e122741123303_
                             _hd122740123306_
                             _tl122739123308_
                             ___splice127090127091_
                             _target122742123311_
                             _tl122744123313_))
                        (___match127129127130_
                         _e122741123303_
                         _hd122740123306_
                         _tl122739123308_
                         ___splice127090127091_
                         _target122742123311_
                         _tl122744123313_))))
                (___match127129127130_
                 _e122741123303_
                 _hd122740123306_
                 _tl122739123308_
                 ___splice127090127091_
                 _target122742123311_
                 _tl122744123313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122774123412_
                                                       (reverse _xarg122773123385_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122751123340_))
                                                      (let ((_L123415_
                                                             _xarg122774123412_)
                                                            (_L123416_
                                                             _hd122764123370_)
                                                            (_L123417_
                                                             _arg122750123332_))
                                                        (if (and (let ((__tmp128490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128491
                                       (lambda (_g123445123448_
                                                _g123446123450_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123445123448_
                                                 _g123446123450_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128491 '() _L123417_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128490))
                         (fx= (length (let ((__tmp128488
                                             (lambda (_g123452123455_
                                                      _g123453123457_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123452123455_
                                                       _g123453123457_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128488 '() _L123417_)))
                              (length (let ((__tmp128489
                                             (lambda (_g123459123462_
                                                      _g123460123464_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123459123462_
                                                       _g123460123464_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128489 '() _L123415_))))
                         (let ((__tmp128486
                                (let ((__tmp128487
                                       (lambda (_g123466123469_
                                                _g123467123471_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123466123469_
                                                 _g123467123471_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128487 '() _L123417_)))
                               (__tmp128484
                                (let ((__tmp128485
                                       (lambda (_g123473123476_
                                                _g123474123478_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123473123476_
                                                 _g123474123478_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128485 '() _L123415_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128486
                                    __tmp128484))
                         (let ((__tmp128480
                                (let ((__tmp128483
                                       (lambda (_g123480123482_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123480123482_
                                            _L123416_))))
                                      (__tmp128481
                                       (let ((__tmp128482
                                              (lambda (_g123484123487_
                                                       _g123485123489_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123484123487_
                                                        _g123485123489_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128482 '() _L123417_))))
                                  (declare (not safe))
                                  (find __tmp128483 __tmp128481))))
                           (declare (not safe))
                           (not __tmp128480)))
                    (___kont127088127089_ _L123415_ _L123416_ _L123417_)
                    (___match127129127130_
                     _e122741123303_
                     _hd122740123306_
                     _tl122739123308_
                     ___splice127090127091_
                     _target122742123311_
                     _tl122744123313_)))
              (___match127129127130_
               _e122741123303_
               _hd122740123306_
               _tl122739123308_
               ___splice127090127091_
               _target122742123311_
               _tl122744123313_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop122769123380_
                                     _target122766123375_
                                     '())))
                                (___match127129127130_
                                 _e122741123303_
                                 _hd122740123306_
                                 _tl122739123308_
                                 ___splice127090127091_
                                 _target122742123311_
                                 _tl122744123313_))))
                        (___match127129127130_
                         _e122741123303_
                         _hd122740123306_
                         _tl122739123308_
                         ___splice127090127091_
                         _target122742123311_
                         _tl122744123313_))
                    (___match127129127130_
                     _e122741123303_
                     _hd122740123306_
                     _tl122739123308_
                     ___splice127090127091_
                     _target122742123311_
                     _tl122744123313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127129127130_
                                                     _e122741123303_
                                                     _hd122740123306_
                                                     _tl122739123308_
                                                     ___splice127090127091_
                                                     _target122742123311_
                                                     _tl122744123313_))
                                                (___match127129127130_
                                                 _e122741123303_
                                                 _hd122740123306_
                                                 _tl122739123308_
                                                 ___splice127090127091_
                                                 _target122742123311_
                                                 _tl122744123313_))
                                            (___match127129127130_
                                             _e122741123303_
                                             _hd122740123306_
                                             _tl122739123308_
                                             ___splice127090127091_
                                             _target122742123311_
                                             _tl122744123313_))))
                                    (___match127129127130_
                                     _e122741123303_
                                     _hd122740123306_
                                     _tl122739123308_
                                     ___splice127090127091_
                                     _target122742123311_
                                     _tl122744123313_))))
                            (___match127129127130_
                             _e122741123303_
                             _hd122740123306_
                             _tl122739123308_
                             ___splice127090127091_
                             _target122742123311_
                             _tl122744123313_))
                        (___match127129127130_
                         _e122741123303_
                         _hd122740123306_
                         _tl122739123308_
                         ___splice127090127091_
                         _target122742123311_
                         _tl122744123313_))
                    (___match127129127130_
                     _e122741123303_
                     _hd122740123306_
                     _tl122739123308_
                     ___splice127090127091_
                     _target122742123311_
                     _tl122744123313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127129127130_
                                                     _e122741123303_
                                                     _hd122740123306_
                                                     _tl122739123308_
                                                     ___splice127090127091_
                                                     _target122742123311_
                                                     _tl122744123313_))))
                                            (___match127129127130_
                                             _e122741123303_
                                             _hd122740123306_
                                             _tl122739123308_
                                             ___splice127090127091_
                                             _target122742123311_
                                             _tl122744123313_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122745123316_ _target122742123311_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127086127087_))
                  (let ((_e122741123303_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127086127087_))))
                    (let ((_tl122739123308_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122741123303_)))
                          (_hd122740123306_
                           (let ()
                             (declare (not safe))
                             (##car _e122741123303_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122740123306_))
                          (let ((___splice127090127091_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122740123306_
                                    '0))))
                            (let ((_tl122744123313_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127090127091_ '1)))
                                  (_target122742123311_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127090127091_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122744123313_))
                                  (___match127117127118_
                                   _e122741123303_
                                   _hd122740123306_
                                   _tl122739123308_
                                   ___splice127090127091_
                                   _target122742123311_
                                   _tl122744123313_)
                                  (___match127129127130_
                                   _e122741123303_
                                   _hd122740123306_
                                   _tl122739123308_
                                   ___splice127090127091_
                                   _target122742123311_
                                   _tl122744123313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122739123308_))
                              (let ((_e122856122911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122739123308_))))
                                (let ((_tl122854122916_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122856122911_)))
                                      (_hd122855122914_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122856122911_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122855122914_))
                                      (let ((_e122859122919_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122855122914_))))
                                        (let ((_tl122857122924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122859122919_)))
                                              (_hd122858122922_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122859122919_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122858122922_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122858122922_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122857122924_))
                                                      (let ((_e122862122927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122857122924_))))
                (let ((_tl122860122932_
                       (let () (declare (not safe)) (##cdr _e122862122927_)))
                      (_hd122861122930_
                       (let () (declare (not safe)) (##car _e122862122927_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122861122930_))
                      (let ((_e122865122935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122861122930_))))
                        (let ((_tl122863122940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122865122935_)))
                              (_hd122864122938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122865122935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122864122938_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122864122938_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122863122940_))
                                      (let ((_e122868122943_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122863122940_))))
                                        (let ((_tl122866122948_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122868122943_)))
                                              (_hd122867122946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122868122943_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122866122948_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122860122932_))
                                                  (let ((_e122871122951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122860122932_))))
                                                    (let ((_tl122869122956_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122871122951_)))
                                                          (_hd122870122954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122871122951_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122870122954_))
                                                          (let ((_e122874122959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122870122954_))))
                    (let ((_tl122872122964_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122874122959_)))
                          (_hd122873122962_
                           (let ()
                             (declare (not safe))
                             (##car _e122874122959_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122873122962_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122873122962_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122872122964_))
                                  (let ((_e122877122967_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122872122964_))))
                                    (let ((_tl122875122972_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122877122967_)))
                                          (_hd122876122970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122877122967_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122875122972_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122869122956_))
                                              (let ((_e122880122975_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122869122956_))))
                                                (let ((_tl122878122980_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122880122975_)))
                                                      (_hd122879122978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122880122975_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122879122978_))
                                                      (let ((_e122883122983_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122879122978_))))
                (let ((_tl122881122988_
                       (let () (declare (not safe)) (##cdr _e122883122983_)))
                      (_hd122882122986_
                       (let () (declare (not safe)) (##car _e122883122983_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122882122986_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122882122986_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122881122988_))
                              (let ((_e122886122991_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122881122988_))))
                                (let ((_tl122884122996_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122886122991_)))
                                      (_hd122885122994_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122886122991_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122884122996_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122878122980_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122854122916_))
                                              (___match127227127228_
                                               _e122741123303_
                                               _hd122740123306_
                                               _tl122739123308_
                                               _e122856122911_
                                               _hd122855122914_
                                               _tl122854122916_
                                               _e122859122919_
                                               _hd122858122922_
                                               _tl122857122924_
                                               _e122862122927_
                                               _hd122861122930_
                                               _tl122860122932_
                                               _e122865122935_
                                               _hd122864122938_
                                               _tl122863122940_
                                               _e122868122943_
                                               _hd122867122946_
                                               _tl122866122948_
                                               _e122871122951_
                                               _hd122870122954_
                                               _tl122869122956_
                                               _e122874122959_
                                               _hd122873122962_
                                               _tl122872122964_
                                               _e122877122967_
                                               _hd122876122970_
                                               _tl122875122972_
                                               _e122880122975_
                                               _hd122879122978_
                                               _tl122878122980_
                                               _e122883122983_
                                               _hd122882122986_
                                               _tl122881122988_
                                               _e122886122991_
                                               _hd122885122994_
                                               _tl122884122996_)
                                              (___kont127102127103_))
                                          (___kont127102127103_))
                                      (___kont127102127103_))))
                              (___kont127102127103_))
                          (___kont127102127103_))
                      (___kont127102127103_))))
              (___kont127102127103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127102127103_))
                                          (___kont127102127103_))))
                                  (___kont127102127103_))
                              (___kont127102127103_))
                          (___kont127102127103_))))
                  (___kont127102127103_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127102127103_))
                                              (___kont127102127103_))))
                                      (___kont127102127103_))
                                  (___kont127102127103_))
                              (___kont127102127103_))))
                      (___kont127102127103_))))
              (___kont127102127103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127102127103_))
                                              (___kont127102127103_))))
                                      (___kont127102127103_))))
                              (___kont127102127103_)))))
                  (___kont127102127103_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122197_)
        (let* ((___stx127230127231_ _form122197_)
               (_g122201122325_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127230127231_)))))
          (let ((___kont127232127233_
                 (lambda (_L122695_ _L122696_ _L122697_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122696_))))
                (___kont127238127239_
                 (lambda (_L122543_ _L122544_ _L122545_ _L122546_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122543_))))
                (___kont127242127243_
                 (lambda (_L122410_ _L122411_ _L122412_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122410_)))))
            (let* ((___match127339127340_
                    (lambda (_e122293122330_
                             _hd122292122333_
                             _tl122291122335_
                             _e122296122338_
                             _hd122295122341_
                             _tl122294122343_
                             _e122299122346_
                             _hd122298122349_
                             _tl122297122351_
                             _e122302122354_
                             _hd122301122357_
                             _tl122300122359_
                             _e122305122362_
                             _hd122304122365_
                             _tl122303122367_
                             _e122308122370_
                             _hd122307122373_
                             _tl122306122375_
                             _e122311122378_
                             _hd122310122381_
                             _tl122309122383_
                             _e122314122386_
                             _hd122313122389_
                             _tl122312122391_
                             _e122317122394_
                             _hd122316122397_
                             _tl122315122399_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122309122383_))
                          (let ((_e122320122402_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122309122383_))))
                            (let ((_tl122318122407_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122320122402_)))
                                  (_hd122319122405_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122320122402_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122318122407_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122294122343_))
                                      (___kont127242127243_
                                       _hd122316122397_
                                       _hd122307122373_
                                       _hd122292122333_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122201122325_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122201122325_)))))
                          (let () (declare (not safe)) (_g122201122325_)))))
                   (___match127269127270_
                    (lambda (_e122254122447_
                             _hd122253122450_
                             _tl122252122452_
                             ___splice127240127241_
                             _target122255122455_
                             _tl122257122457_)
                      (letrec ((_loop122258122460_
                                (lambda (_hd122256122463_ _arg122262122465_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122256122463_))
                                      (let ((_e122259122468_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122256122463_))))
                                        (let ((_lp-tl122261122473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122259122468_)))
                                              (_lp-hd122260122471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122259122468_))))
                                          (let ((__tmp128494
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122260122471_
                                                         _arg122262122465_))))
                                            (declare (not safe))
                                            (_loop122258122460_
                                             _lp-tl122261122473_
                                             __tmp128494))))
                                      (let ((_arg122263122476_
                                             (reverse _arg122262122465_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122252122452_))
                                            (let ((_e122266122479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122252122452_))))
                                              (let ((_tl122264122484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122266122479_)))
                                                    (_hd122265122482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122266122479_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122265122482_))
                                                    (let ((_e122269122487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122265122482_))))
                                                      (let ((_tl122267122492_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122269122487_)))
                    (_hd122268122490_
                     (let () (declare (not safe)) (##car _e122269122487_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122268122490_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122268122490_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122267122492_))
                            (let ((_e122272122495_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122267122492_))))
                              (let ((_tl122270122500_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122272122495_)))
                                    (_hd122271122498_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122272122495_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122271122498_))
                                    (let ((_e122275122503_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122271122498_))))
                                      (let ((_tl122273122508_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122275122503_)))
                                            (_hd122274122506_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122275122503_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122274122506_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122274122506_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122273122508_))
                                                    (let ((_e122278122511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122273122508_))))
                                                      (let ((_tl122276122516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122278122511_)))
                    (_hd122277122514_
                     (let () (declare (not safe)) (##car _e122278122511_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122276122516_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122270122500_))
                        (let ((_e122281122519_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122270122500_))))
                          (let ((_tl122279122524_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122281122519_)))
                                (_hd122280122522_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122281122519_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122280122522_))
                                (let ((_e122284122527_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122280122522_))))
                                  (let ((_tl122282122532_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122284122527_)))
                                        (_hd122283122530_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122284122527_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122283122530_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122283122530_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122282122532_))
                                                (let ((_e122287122535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122282122532_))))
                                                  (let ((_tl122285122540_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122287122535_)))
                                                        (_hd122286122538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122287122535_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122285122540_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122264122484_))
                                                            (___kont127238127239_
                                                             _hd122286122538_
                                                             _hd122277122514_
                                                             _tl122257122457_
                                                             _arg122263122476_)
                                                            (___match127339127340_
                                                             _e122254122447_
                                                             _hd122253122450_
                                                             _tl122252122452_
                                                             _e122266122479_
                                                             _hd122265122482_
                                                             _tl122264122484_
                                                             _e122269122487_
                                                             _hd122268122490_
                                                             _tl122267122492_
                                                             _e122272122495_
                                                             _hd122271122498_
                                                             _tl122270122500_
                                                             _e122275122503_
                                                             _hd122274122506_
                                                             _tl122273122508_
                                                             _e122278122511_
                                                             _hd122277122514_
                                                             _tl122276122516_
                                                             _e122281122519_
                                                             _hd122280122522_
                                                             _tl122279122524_
                                                             _e122284122527_
                                                             _hd122283122530_
                                                             _tl122282122532_
                                                             _e122287122535_
                                                             _hd122286122538_
                                                             _tl122285122540_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122201122325_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122201122325_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122201122325_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122201122325_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122201122325_)))))
                        (let () (declare (not safe)) (_g122201122325_)))
                    (let () (declare (not safe)) (_g122201122325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122201122325_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122201122325_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122201122325_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122201122325_)))))
                            (let () (declare (not safe)) (_g122201122325_)))
                        (let () (declare (not safe)) (_g122201122325_)))
                    (let () (declare (not safe)) (_g122201122325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122201122325_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122201122325_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122258122460_ _target122255122455_ '())))))
                   (___match127257127258_
                    (lambda (_e122208122583_
                             _hd122207122586_
                             _tl122206122588_
                             ___splice127234127235_
                             _target122209122591_
                             _tl122211122593_)
                      (letrec ((_loop122212122596_
                                (lambda (_hd122210122599_ _arg122216122601_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122210122599_))
                                      (let ((_e122213122604_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122210122599_))))
                                        (let ((_lp-tl122215122609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122213122604_)))
                                              (_lp-hd122214122607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122213122604_))))
                                          (let ((__tmp128496
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122214122607_
                                                         _arg122216122601_))))
                                            (declare (not safe))
                                            (_loop122212122596_
                                             _lp-tl122215122609_
                                             __tmp128496))))
                                      (let ((_arg122217122612_
                                             (reverse _arg122216122601_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122206122588_))
                                            (let ((_e122220122615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122206122588_))))
                                              (let ((_tl122218122620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122220122615_)))
                                                    (_hd122219122618_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122220122615_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122219122618_))
                                                    (let ((_e122223122623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122219122618_))))
                                                      (let ((_tl122221122628_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122223122623_)))
                    (_hd122222122626_
                     (let () (declare (not safe)) (##car _e122223122623_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122222122626_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122222122626_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122221122628_))
                            (let ((_e122226122631_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122221122628_))))
                              (let ((_tl122224122636_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122226122631_)))
                                    (_hd122225122634_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122226122631_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122225122634_))
                                    (let ((_e122229122639_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122225122634_))))
                                      (let ((_tl122227122644_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122229122639_)))
                                            (_hd122228122642_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122229122639_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122228122642_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122228122642_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122227122644_))
                                                    (let ((_e122232122647_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122227122644_))))
                                                      (let ((_tl122230122652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122232122647_)))
                    (_hd122231122650_
                     (let () (declare (not safe)) (##car _e122232122647_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122230122652_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122224122636_))
                        (let ((___splice127236127237_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122224122636_
                                  '0))))
                          (let ((_tl122235122657_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127236127237_ '1)))
                                (_target122233122655_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127236127237_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122235122657_))
                                (letrec ((_loop122236122660_
                                          (lambda (_hd122234122663_
                                                   _xarg122240122665_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122234122663_))
                                                (let ((_e122237122668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122234122663_))))
                                                  (let ((_lp-tl122239122673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122237122668_)))
                                                        (_lp-hd122238122671_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122237122668_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122238122671_))
                                                        (let ((_e122244122676_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122238122671_))))
                  (let ((_tl122242122681_
                         (let () (declare (not safe)) (##cdr _e122244122676_)))
                        (_hd122243122679_
                         (let ()
                           (declare (not safe))
                           (##car _e122244122676_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122243122679_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122243122679_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122242122681_))
                                (let ((_e122247122684_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122242122681_))))
                                  (let ((_tl122245122689_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122247122684_)))
                                        (_hd122246122687_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122247122684_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122245122689_))
                                        (let ((__tmp128495
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122246122687_
                                                       _xarg122240122665_))))
                                          (declare (not safe))
                                          (_loop122236122660_
                                           _lp-tl122239122673_
                                           __tmp128495))
                                        (___match127269127270_
                                         _e122208122583_
                                         _hd122207122586_
                                         _tl122206122588_
                                         ___splice127234127235_
                                         _target122209122591_
                                         _tl122211122593_))))
                                (___match127269127270_
                                 _e122208122583_
                                 _hd122207122586_
                                 _tl122206122588_
                                 ___splice127234127235_
                                 _target122209122591_
                                 _tl122211122593_))
                            (___match127269127270_
                             _e122208122583_
                             _hd122207122586_
                             _tl122206122588_
                             ___splice127234127235_
                             _target122209122591_
                             _tl122211122593_))
                        (___match127269127270_
                         _e122208122583_
                         _hd122207122586_
                         _tl122206122588_
                         ___splice127234127235_
                         _target122209122591_
                         _tl122211122593_))))
                (___match127269127270_
                 _e122208122583_
                 _hd122207122586_
                 _tl122206122588_
                 ___splice127234127235_
                 _target122209122591_
                 _tl122211122593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122241122692_
                                                       (reverse _xarg122240122665_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122218122620_))
                                                      (___kont127232127233_
                                                       _xarg122241122692_
                                                       _hd122231122650_
                                                       _arg122217122612_)
                                                      (___match127269127270_
                                                       _e122208122583_
                                                       _hd122207122586_
                                                       _tl122206122588_
                                                       ___splice127234127235_
                                                       _target122209122591_
                                                       _tl122211122593_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122236122660_
                                     _target122233122655_
                                     '())))
                                (___match127269127270_
                                 _e122208122583_
                                 _hd122207122586_
                                 _tl122206122588_
                                 ___splice127234127235_
                                 _target122209122591_
                                 _tl122211122593_))))
                        (___match127269127270_
                         _e122208122583_
                         _hd122207122586_
                         _tl122206122588_
                         ___splice127234127235_
                         _target122209122591_
                         _tl122211122593_))
                    (___match127269127270_
                     _e122208122583_
                     _hd122207122586_
                     _tl122206122588_
                     ___splice127234127235_
                     _target122209122591_
                     _tl122211122593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127269127270_
                                                     _e122208122583_
                                                     _hd122207122586_
                                                     _tl122206122588_
                                                     ___splice127234127235_
                                                     _target122209122591_
                                                     _tl122211122593_))
                                                (___match127269127270_
                                                 _e122208122583_
                                                 _hd122207122586_
                                                 _tl122206122588_
                                                 ___splice127234127235_
                                                 _target122209122591_
                                                 _tl122211122593_))
                                            (___match127269127270_
                                             _e122208122583_
                                             _hd122207122586_
                                             _tl122206122588_
                                             ___splice127234127235_
                                             _target122209122591_
                                             _tl122211122593_))))
                                    (___match127269127270_
                                     _e122208122583_
                                     _hd122207122586_
                                     _tl122206122588_
                                     ___splice127234127235_
                                     _target122209122591_
                                     _tl122211122593_))))
                            (___match127269127270_
                             _e122208122583_
                             _hd122207122586_
                             _tl122206122588_
                             ___splice127234127235_
                             _target122209122591_
                             _tl122211122593_))
                        (___match127269127270_
                         _e122208122583_
                         _hd122207122586_
                         _tl122206122588_
                         ___splice127234127235_
                         _target122209122591_
                         _tl122211122593_))
                    (___match127269127270_
                     _e122208122583_
                     _hd122207122586_
                     _tl122206122588_
                     ___splice127234127235_
                     _target122209122591_
                     _tl122211122593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127269127270_
                                                     _e122208122583_
                                                     _hd122207122586_
                                                     _tl122206122588_
                                                     ___splice127234127235_
                                                     _target122209122591_
                                                     _tl122211122593_))))
                                            (___match127269127270_
                                             _e122208122583_
                                             _hd122207122586_
                                             _tl122206122588_
                                             ___splice127234127235_
                                             _target122209122591_
                                             _tl122211122593_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122212122596_ _target122209122591_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127230127231_))
                  (let ((_e122208122583_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127230127231_))))
                    (let ((_tl122206122588_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122208122583_)))
                          (_hd122207122586_
                           (let ()
                             (declare (not safe))
                             (##car _e122208122583_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122207122586_))
                          (let ((___splice127234127235_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122207122586_
                                    '0))))
                            (let ((_tl122211122593_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127234127235_ '1)))
                                  (_target122209122591_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127234127235_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122211122593_))
                                  (___match127257127258_
                                   _e122208122583_
                                   _hd122207122586_
                                   _tl122206122588_
                                   ___splice127234127235_
                                   _target122209122591_
                                   _tl122211122593_)
                                  (___match127269127270_
                                   _e122208122583_
                                   _hd122207122586_
                                   _tl122206122588_
                                   ___splice127234127235_
                                   _target122209122591_
                                   _tl122211122593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122206122588_))
                              (let ((_e122296122338_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122206122588_))))
                                (let ((_tl122294122343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122296122338_)))
                                      (_hd122295122341_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122296122338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122295122341_))
                                      (let ((_e122299122346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122295122341_))))
                                        (let ((_tl122297122351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122299122346_)))
                                              (_hd122298122349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122299122346_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122298122349_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122298122349_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122297122351_))
                                                      (let ((_e122302122354_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122297122351_))))
                (let ((_tl122300122359_
                       (let () (declare (not safe)) (##cdr _e122302122354_)))
                      (_hd122301122357_
                       (let () (declare (not safe)) (##car _e122302122354_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122301122357_))
                      (let ((_e122305122362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122301122357_))))
                        (let ((_tl122303122367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122305122362_)))
                              (_hd122304122365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122305122362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122304122365_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122304122365_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122303122367_))
                                      (let ((_e122308122370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122303122367_))))
                                        (let ((_tl122306122375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122308122370_)))
                                              (_hd122307122373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122308122370_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122306122375_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122300122359_))
                                                  (let ((_e122311122378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122300122359_))))
                                                    (let ((_tl122309122383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122311122378_)))
                                                          (_hd122310122381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122311122378_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122310122381_))
                                                          (let ((_e122314122386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122310122381_))))
                    (let ((_tl122312122391_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122314122386_)))
                          (_hd122313122389_
                           (let ()
                             (declare (not safe))
                             (##car _e122314122386_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122313122389_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122313122389_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122312122391_))
                                  (let ((_e122317122394_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122312122391_))))
                                    (let ((_tl122315122399_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122317122394_)))
                                          (_hd122316122397_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122317122394_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122315122399_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122309122383_))
                                              (let ((_e122320122402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122309122383_))))
                                                (let ((_tl122318122407_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122320122402_)))
                                                      (_hd122319122405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122320122402_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122318122407_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122294122343_))
                                                          (___kont127242127243_
                                                           _hd122316122397_
                                                           _hd122307122373_
                                                           _hd122207122586_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122201122325_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122201122325_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122201122325_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122201122325_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122201122325_)))
                              (let () (declare (not safe)) (_g122201122325_)))
                          (let () (declare (not safe)) (_g122201122325_)))))
                  (let () (declare (not safe)) (_g122201122325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122201122325_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122201122325_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122201122325_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122201122325_)))
                              (let ()
                                (declare (not safe))
                                (_g122201122325_)))))
                      (let () (declare (not safe)) (_g122201122325_)))))
              (let () (declare (not safe)) (_g122201122325_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122201122325_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122201122325_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122201122325_)))))
                              (let ()
                                (declare (not safe))
                                (_g122201122325_))))))
                  (let () (declare (not safe)) (_g122201122325_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122001_)
        (let* ((_g122003122017_
                (lambda (_g122004122014_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122004122014_))))
               (_g122002122194_
                (lambda (_g122004122020_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122004122020_))
                      (let ((_e122009122022_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122004122020_))))
                        (let ((_hd122008122025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122009122022_)))
                              (_tl122007122027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122009122022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122007122027_))
                              (let ((_e122012122030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122007122027_))))
                                (let ((_hd122011122033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122012122030_)))
                                      (_tl122010122035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122012122030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122010122035_))
                                      ((lambda (_L122038_ _L122039_)
                                         (let* ((___stx127352127353_ _L122039_)
                                                (_g122054122082_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127352127353_)))))
                                           (let ((___kont127354127355_
                                                  (lambda (_L122173_)
                                                    (length (let ((__tmp128497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122183122186_ _g122184122188_)
                             (let ()
                               (declare (not safe))
                               (cons _g122183122186_ _g122184122188_)))))
                      (declare (not safe))
                      (foldr1 __tmp128497 '() _L122173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127358127359_
                                                  (lambda (_L122124_ _L122125_)
                                                    (let ((__tmp128498
                                                           (length (let ((__tmp128499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122136122139_ _g122137122141_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122136122139_
                                            _g122137122141_)))))
                             (declare (not safe))
                             (foldr1 __tmp128499 '() _L122125_)))))
              (declare (not safe))
              (cons __tmp128498 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127362127363_
                                                  (lambda (_L122087_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127377127378_
                                                     (lambda (___splice127360127361_
                                                              _target122068122100_
                                                              _tl122070122102_)
                                                       (letrec ((_loop122071122105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122069122108_ _arg122075122110_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122069122108_))
                               (let ((_e122072122113_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122069122108_))))
                                 (let ((_lp-tl122074122118_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122072122113_)))
                                       (_lp-hd122073122116_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122072122113_))))
                                   (let ((__tmp128500
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122073122116_
                                                  _arg122075122110_))))
                                     (declare (not safe))
                                     (_loop122071122105_
                                      _lp-tl122074122118_
                                      __tmp128500))))
                               (let ((_arg122076122121_
                                      (reverse _arg122075122110_)))
                                 (___kont127358127359_
                                  _tl122070122102_
                                  _arg122076122121_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122071122105_ _target122068122100_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127371127372_
                                                     (lambda (___splice127356127357_
                                                              _target122057122149_
                                                              _tl122059122151_)
                                                       (letrec ((_loop122060122154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122058122157_ _arg122064122159_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122058122157_))
                               (let ((_e122061122162_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122058122157_))))
                                 (let ((_lp-tl122063122167_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122061122162_)))
                                       (_lp-hd122062122165_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122061122162_))))
                                   (let ((__tmp128501
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122062122165_
                                                  _arg122064122159_))))
                                     (declare (not safe))
                                     (_loop122060122154_
                                      _lp-tl122063122167_
                                      __tmp128501))))
                               (let ((_arg122065122170_
                                      (reverse _arg122064122159_)))
                                 (___kont127354127355_ _arg122065122170_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122060122154_ _target122057122149_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127352127353_))
                                                   (let ((___splice127356127357_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127352127353_
                                                             '0))))
                                                     (let ((_tl122059122151_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127356127357_
                                                               '1)))
                                                           (_target122057122149_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127356127357_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122059122151_))
                                                           (___match127371127372_
                                                            ___splice127356127357_
                                                            _target122057122149_
                                                            _tl122059122151_)
                                                           (___match127377127378_
                                                            ___splice127356127357_
                                                            _target122057122149_
                                                            _tl122059122151_))))
                                                   (___kont127362127363_
                                                    ___stx127352127353_))))))
                                       _hd122011122033_
                                       _hd122008122025_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122003122017_ _g122004122020_)))))
                              (let ()
                                (declare (not safe))
                                (_g122003122017_ _g122004122020_)))))
                      (let ()
                        (declare (not safe))
                        (_g122003122017_ _g122004122020_))))))
          (declare (not safe))
          (_g122002122194_ _form122001_))))
    (define gxc#lambda-expr?
      (lambda (_expr121954_)
        (let* ((___stx127380127381_ _expr121954_)
               (_g121957121967_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127380127381_)))))
          (let ((___kont127382127383_ (lambda (_L121987_) '#t))
                (___kont127384127385_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127380127381_))
                (let ((_e121962121979_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127380127381_))))
                  (let ((_tl121960121984_
                         (let () (declare (not safe)) (##cdr _e121962121979_)))
                        (_hd121961121982_
                         (let ()
                           (declare (not safe))
                           (##car _e121962121979_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121961121982_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121961121982_))
                            (___kont127382127383_ _tl121960121984_)
                            (___kont127384127385_))
                        (___kont127384127385_))))
                (___kont127384127385_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121907_)
        (let* ((___stx127398127399_ _expr121907_)
               (_g121910121920_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127398127399_)))))
          (let ((___kont127400127401_ (lambda (_L121940_) '#t))
                (___kont127402127403_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127398127399_))
                (let ((_e121915121932_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127398127399_))))
                  (let ((_tl121913121937_
                         (let () (declare (not safe)) (##cdr _e121915121932_)))
                        (_hd121914121935_
                         (let ()
                           (declare (not safe))
                           (##car _e121915121932_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121914121935_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121914121935_))
                            (___kont127400127401_ _tl121913121937_)
                            (___kont127402127403_))
                        (___kont127402127403_))))
                (___kont127402127403_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr121776_)
        (let* ((___stx127416127417_ _expr121776_)
               (_g121779121809_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127416127417_)))))
          (let ((___kont127418127419_
                 (lambda (_L121877_ _L121878_ _L121879_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121879_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121878_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121877_))
                           '#f)
                       '#f)))
                (___kont127420127421_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127416127417_))
                (let ((_e121786121821_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127416127417_))))
                  (let ((_tl121784121826_
                         (let () (declare (not safe)) (##cdr _e121786121821_)))
                        (_hd121785121824_
                         (let ()
                           (declare (not safe))
                           (##car _e121786121821_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121785121824_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121785121824_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121784121826_))
                                (let ((_e121789121829_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121784121826_))))
                                  (let ((_tl121787121834_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121789121829_)))
                                        (_hd121788121832_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121789121829_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121788121832_))
                                        (let ((_e121792121837_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121788121832_))))
                                          (let ((_tl121790121842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121792121837_)))
                                                (_hd121791121840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121792121837_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121791121840_))
                                                (let ((_e121795121845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121791121840_))))
                                                  (let ((_tl121793121850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121795121845_)))
                                                        (_hd121794121848_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121795121845_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121794121848_))
                                                        (let ((_e121798121853_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121794121848_))))
                  (let ((_tl121796121858_
                         (let () (declare (not safe)) (##cdr _e121798121853_)))
                        (_hd121797121856_
                         (let ()
                           (declare (not safe))
                           (##car _e121798121853_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121796121858_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121793121850_))
                            (let ((_e121801121861_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121793121850_))))
                              (let ((_tl121799121866_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121801121861_)))
                                    (_hd121800121864_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121801121861_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121799121866_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121790121842_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121787121834_))
                                            (let ((_e121804121869_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121787121834_))))
                                              (let ((_tl121802121874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121804121869_)))
                                                    (_hd121803121872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121804121869_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121802121874_))
                                                    (___kont127418127419_
                                                     _hd121803121872_
                                                     _hd121800121864_
                                                     _hd121797121856_)
                                                    (___kont127420127421_))))
                                            (___kont127420127421_))
                                        (___kont127420127421_))
                                    (___kont127420127421_))))
                            (___kont127420127421_))
                        (___kont127420127421_))))
                (___kont127420127421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127420127421_))))
                                        (___kont127420127421_))))
                                (___kont127420127421_))
                            (___kont127420127421_))
                        (___kont127420127421_))))
                (___kont127420127421_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121101_)
        (let* ((___stx127478127479_ _expr121101_)
               (_g121104121262_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127478127479_)))))
          (let ((___kont127480127481_
                 (lambda (_L121650_
                          _L121651_
                          _L121652_
                          _L121653_
                          _L121654_
                          _L121655_
                          _L121656_
                          _L121657_
                          _L121658_
                          _L121659_
                          _L121660_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L121657_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L121653_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L121652_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L121660_
                                      _L121651_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L121659_
                                          _L121656_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121654_
                                              _L121650_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L121658_
                                              _L121655_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127482127483_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127478127479_))
                (let ((_e121119121274_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127478127479_))))
                  (let ((_tl121117121279_
                         (let () (declare (not safe)) (##cdr _e121119121274_)))
                        (_hd121118121277_
                         (let ()
                           (declare (not safe))
                           (##car _e121119121274_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121118121277_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121118121277_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121117121279_))
                                (let ((_e121122121282_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121117121279_))))
                                  (let ((_tl121120121287_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121122121282_)))
                                        (_hd121121121285_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121122121282_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121121121285_))
                                        (let ((_e121125121290_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121121121285_))))
                                          (let ((_tl121123121295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121125121290_)))
                                                (_hd121124121293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121125121290_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121124121293_))
                                                (let ((_e121128121298_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121124121293_))))
                                                  (let ((_tl121126121303_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121128121298_)))
                                                        (_hd121127121301_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121128121298_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121127121301_))
                                                        (let ((_e121131121306_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121127121301_))))
                  (let ((_tl121129121311_
                         (let () (declare (not safe)) (##cdr _e121131121306_)))
                        (_hd121130121309_
                         (let ()
                           (declare (not safe))
                           (##car _e121131121306_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121129121311_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121126121303_))
                            (let ((_e121134121314_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121126121303_))))
                              (let ((_tl121132121319_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121134121314_)))
                                    (_hd121133121317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121134121314_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121133121317_))
                                    (let ((_e121137121322_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121133121317_))))
                                      (let ((_tl121135121327_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121137121322_)))
                                            (_hd121136121325_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121137121322_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121136121325_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121136121325_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121135121327_))
                                                    (let ((_e121140121330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121135121327_))))
                                                      (let ((_tl121138121335_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121140121330_)))
                    (_hd121139121333_
                     (let () (declare (not safe)) (##car _e121140121330_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121139121333_))
                    (let ((_e121143121338_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121139121333_))))
                      (let ((_tl121141121343_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121143121338_)))
                            (_hd121142121341_
                             (let ()
                               (declare (not safe))
                               (##car _e121143121338_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121142121341_))
                            (let ((_e121146121346_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121142121341_))))
                              (let ((_tl121144121351_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121146121346_)))
                                    (_hd121145121349_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121146121346_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121145121349_))
                                    (let ((_e121149121354_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121145121349_))))
                                      (let ((_tl121147121359_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121149121354_)))
                                            (_hd121148121357_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121149121354_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121147121359_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121144121351_))
                                                (let ((_e121152121362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121144121351_))))
                                                  (let ((_tl121150121367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121152121362_)))
                                                        (_hd121151121365_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121152121362_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121150121367_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121141121343_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121138121335_))
                        (let ((_e121155121370_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121138121335_))))
                          (let ((_tl121153121375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121155121370_)))
                                (_hd121154121373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121155121370_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121154121373_))
                                (let ((_e121158121378_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121154121373_))))
                                  (let ((_tl121156121383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121158121378_)))
                                        (_hd121157121381_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121158121378_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121157121381_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121157121381_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121156121383_))
                                                (let ((_e121161121386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121156121383_))))
                                                  (let ((_tl121159121391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121161121386_)))
                                                        (_hd121160121389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121161121386_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121160121389_))
                                                        (let ((_e121164121394_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121160121389_))))
                  (let ((_tl121162121399_
                         (let () (declare (not safe)) (##cdr _e121164121394_)))
                        (_hd121163121397_
                         (let ()
                           (declare (not safe))
                           (##car _e121164121394_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121159121391_))
                        (let ((_e121167121402_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121159121391_))))
                          (let ((_tl121165121407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121167121402_)))
                                (_hd121166121405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121167121402_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121166121405_))
                                (let ((_e121170121410_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121166121405_))))
                                  (let ((_tl121168121415_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121170121410_)))
                                        (_hd121169121413_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121170121410_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121169121413_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121169121413_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121168121415_))
                                                (let ((_e121173121418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121168121415_))))
                                                  (let ((_tl121171121423_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121173121418_)))
                                                        (_hd121172121421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121173121418_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121172121421_))
                                                        (let ((_e121176121426_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121172121421_))))
                  (let ((_tl121174121431_
                         (let () (declare (not safe)) (##cdr _e121176121426_)))
                        (_hd121175121429_
                         (let ()
                           (declare (not safe))
                           (##car _e121176121426_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121175121429_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121175121429_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121174121431_))
                                (let ((_e121179121434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121174121431_))))
                                  (let ((_tl121177121439_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121179121434_)))
                                        (_hd121178121437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121179121434_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121177121439_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121171121423_))
                                            (let ((_e121182121442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121171121423_))))
                                              (let ((_tl121180121447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121182121442_)))
                                                    (_hd121181121445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121182121442_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121181121445_))
                                                    (let ((_e121185121450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121181121445_))))
                                                      (let ((_tl121183121455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121185121450_)))
                    (_hd121184121453_
                     (let () (declare (not safe)) (##car _e121185121450_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121184121453_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121184121453_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121183121455_))
                            (let ((_e121188121458_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121183121455_))))
                              (let ((_tl121186121463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121188121458_)))
                                    (_hd121187121461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121188121458_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121186121463_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121180121447_))
                                        (let ((_e121191121466_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121180121447_))))
                                          (let ((_tl121189121471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121191121466_)))
                                                (_hd121190121469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121191121466_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121190121469_))
                                                (let ((_e121194121474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121190121469_))))
                                                  (let ((_tl121192121479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121194121474_)))
                                                        (_hd121193121477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121194121474_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121193121477_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121193121477_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121192121479_))
                        (let ((_e121197121482_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121192121479_))))
                          (let ((_tl121195121487_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121197121482_)))
                                (_hd121196121485_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121197121482_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121195121487_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121165121407_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121153121375_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121132121319_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121123121295_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121120121287_))
                                                    (let ((_e121200121490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121120121287_))))
                                                      (let ((_tl121198121495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121200121490_)))
                    (_hd121199121493_
                     (let () (declare (not safe)) (##car _e121200121490_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121199121493_))
                    (let ((_e121203121498_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121199121493_))))
                      (let ((_tl121201121503_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121203121498_)))
                            (_hd121202121501_
                             (let ()
                               (declare (not safe))
                               (##car _e121203121498_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121202121501_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121202121501_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121201121503_))
                                    (let ((_e121206121506_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121201121503_))))
                                      (let ((_tl121204121511_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121206121506_)))
                                            (_hd121205121509_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121206121506_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121204121511_))
                                            (let ((_e121209121514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121204121511_))))
                                              (let ((_tl121207121519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121209121514_)))
                                                    (_hd121208121517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121209121514_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121208121517_))
                                                    (let ((_e121212121522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121208121517_))))
                                                      (let ((_tl121210121527_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121212121522_)))
                    (_hd121211121525_
                     (let () (declare (not safe)) (##car _e121212121522_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121211121525_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121211121525_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121210121527_))
                            (let ((_e121215121530_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121210121527_))))
                              (let ((_tl121213121535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121215121530_)))
                                    (_hd121214121533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121215121530_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121214121533_))
                                    (let ((_e121218121538_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121214121533_))))
                                      (let ((_tl121216121543_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121218121538_)))
                                            (_hd121217121541_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121218121538_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121217121541_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121217121541_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121216121543_))
                                                    (let ((_e121221121546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121216121543_))))
                                                      (let ((_tl121219121551_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121221121546_)))
                    (_hd121220121549_
                     (let () (declare (not safe)) (##car _e121221121546_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121219121551_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121213121535_))
                        (let ((_e121224121554_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121213121535_))))
                          (let ((_tl121222121559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121224121554_)))
                                (_hd121223121557_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121224121554_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121223121557_))
                                (let ((_e121227121562_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121223121557_))))
                                  (let ((_tl121225121567_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121227121562_)))
                                        (_hd121226121565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121227121562_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121226121565_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121226121565_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121225121567_))
                                                (let ((_e121230121570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121225121567_))))
                                                  (let ((_tl121228121575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121230121570_)))
                                                        (_hd121229121573_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121230121570_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121228121575_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121222121559_))
                                                            (let ((_e121233121578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121222121559_))))
                      (let ((_tl121231121583_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121233121578_)))
                            (_hd121232121581_
                             (let ()
                               (declare (not safe))
                               (##car _e121233121578_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121232121581_))
                            (let ((_e121236121586_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121232121581_))))
                              (let ((_tl121234121591_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121236121586_)))
                                    (_hd121235121589_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121236121586_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121235121589_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121235121589_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121234121591_))
                                            (let ((_e121239121594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121234121591_))))
                                              (let ((_tl121237121599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121239121594_)))
                                                    (_hd121238121597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121239121594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121237121599_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121231121583_))
                                                        (let ((_e121242121602_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121231121583_))))
                  (let ((_tl121240121607_
                         (let () (declare (not safe)) (##cdr _e121242121602_)))
                        (_hd121241121605_
                         (let ()
                           (declare (not safe))
                           (##car _e121242121602_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121241121605_))
                        (let ((_e121245121610_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121241121605_))))
                          (let ((_tl121243121615_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121245121610_)))
                                (_hd121244121613_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121245121610_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121244121613_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121244121613_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121243121615_))
                                        (let ((_e121248121618_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121243121615_))))
                                          (let ((_tl121246121623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121248121618_)))
                                                (_hd121247121621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121248121618_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121246121623_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121240121607_))
                                                    (let ((_e121251121626_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121240121607_))))
                                                      (let ((_tl121249121631_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121251121626_)))
                    (_hd121250121629_
                     (let () (declare (not safe)) (##car _e121251121626_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121250121629_))
                    (let ((_e121254121634_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121250121629_))))
                      (let ((_tl121252121639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121254121634_)))
                            (_hd121253121637_
                             (let ()
                               (declare (not safe))
                               (##car _e121254121634_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121253121637_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121253121637_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121252121639_))
                                    (let ((_e121257121642_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121252121639_))))
                                      (let ((_tl121255121647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121257121642_)))
                                            (_hd121256121645_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121257121642_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121255121647_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121249121631_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121207121519_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121198121495_))
                                                        (___kont127480127481_
                                                         _hd121256121645_
                                                         _hd121247121621_
                                                         _hd121229121573_
                                                         _hd121220121549_
                                                         _hd121205121509_
                                                         _hd121196121485_
                                                         _hd121187121461_
                                                         _hd121178121437_
                                                         _hd121163121397_
                                                         _hd121148121357_
                                                         _hd121130121309_)
                                                        (___kont127482127483_))
                                                    (___kont127482127483_))
                                                (___kont127482127483_))
                                            (___kont127482127483_))))
                                    (___kont127482127483_))
                                (___kont127482127483_))
                            (___kont127482127483_))))
                    (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))
                                                (___kont127482127483_))))
                                        (___kont127482127483_))
                                    (___kont127482127483_))
                                (___kont127482127483_))))
                        (___kont127482127483_))))
                (___kont127482127483_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))))
                                            (___kont127482127483_))
                                        (___kont127482127483_))
                                    (___kont127482127483_))))
                            (___kont127482127483_))))
                    (___kont127482127483_))
                (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127482127483_))
                                            (___kont127482127483_))
                                        (___kont127482127483_))))
                                (___kont127482127483_))))
                        (___kont127482127483_))
                    (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))
                                                (___kont127482127483_))
                                            (___kont127482127483_))))
                                    (___kont127482127483_))))
                            (___kont127482127483_))
                        (___kont127482127483_))
                    (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))))
                                            (___kont127482127483_))))
                                    (___kont127482127483_))
                                (___kont127482127483_))
                            (___kont127482127483_))))
                    (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))
                                                (___kont127482127483_))
                                            (___kont127482127483_))
                                        (___kont127482127483_))
                                    (___kont127482127483_))
                                (___kont127482127483_))))
                        (___kont127482127483_))
                    (___kont127482127483_))
                (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127482127483_))))
                                        (___kont127482127483_))
                                    (___kont127482127483_))))
                            (___kont127482127483_))
                        (___kont127482127483_))
                    (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))))
                                            (___kont127482127483_))
                                        (___kont127482127483_))))
                                (___kont127482127483_))
                            (___kont127482127483_))
                        (___kont127482127483_))))
                (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127482127483_))
                                            (___kont127482127483_))
                                        (___kont127482127483_))))
                                (___kont127482127483_))))
                        (___kont127482127483_))))
                (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127482127483_))
                                            (___kont127482127483_))
                                        (___kont127482127483_))))
                                (___kont127482127483_))))
                        (___kont127482127483_))
                    (___kont127482127483_))
                (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127482127483_))
                                            (___kont127482127483_))))
                                    (___kont127482127483_))))
                            (___kont127482127483_))))
                    (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127482127483_))
                                                (___kont127482127483_))
                                            (___kont127482127483_))))
                                    (___kont127482127483_))))
                            (___kont127482127483_))
                        (___kont127482127483_))))
                (___kont127482127483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127482127483_))))
                                        (___kont127482127483_))))
                                (___kont127482127483_))
                            (___kont127482127483_))
                        (___kont127482127483_))))
                (___kont127482127483_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120843_ _id120844_ _clauses120845_ _gensym?120846_)
        (let _lp120848_ ((_rest120850_ _clauses120845_)
                         (_ids120851_ '())
                         (_impls120852_ '())
                         (_clauses120853_ '()))
          (let* ((_rest120854120862_ _rest120850_)
                 (_else120856120870_
                  (lambda ()
                    (values (reverse _ids120851_)
                            (reverse _impls120852_)
                            (reverse _clauses120853_))))
                 (_K120858121075_
                  (lambda (_rest120873_ _clause120874_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120874_))
                        (let ((__tmp128557
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120874_ _clauses120853_))))
                          (declare (not safe))
                          (_lp120848_
                           _rest120873_
                           _ids120851_
                           _impls120852_
                           __tmp128557))
                        (let* ((_g120876120887_
                                (lambda (_g120877120884_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120877120884_))))
                               (_g120875121072_
                                (lambda (_g120877120890_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120877120890_))
                                      (let ((_e120882120892_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120877120890_))))
                                        (let ((_hd120881120895_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120882120892_)))
                                              (_tl120880120897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120882120892_))))
                                          ((lambda (_L120900_ _L120901_)
                                             (let* ((_id120918_
                                                     (let ((__tmp128504
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120844_)))
                                                           (__tmp128503
                                                            (length _clauses120853_))
                                                           (__tmp128502
                                                            (if _gensym?120846_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128504
                                                        '"__"
                                                        __tmp128503
                                                        __tmp128502)))
                                                    (_id120920_
                                                     (let ((__tmp128505
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120843_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120918_
                                                        __tmp128505)))
                                                    (_impl120922_
                                                     (let ((__tmp128506
                                                            (let ((__tmp128508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128507
                           (let ()
                             (declare (not safe))
                             (cons _L120901_ _L120900_))))
                      (declare (not safe))
                      (cons __tmp128508 __tmp128507))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128506 _stx120843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121069_
                                                     (let* ((___stx127862127863_
                                                             _L120901_)
                                                            (_g120926120954_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127862127863_)))))
               (let ((___kont127864127865_
                      (lambda (_L121048_)
                        (let ((__tmp128509
                               (let ((__tmp128510
                                      (let ((__tmp128511
                                             (let ((__tmp128512
                                                    (let ((__tmp128518
                                                           (let ((__tmp128519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120920_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128519)))
                  (__tmp128513
                   (let ((__tmp128514
                          (lambda (_g121058121061_ _g121059121063_)
                            (let ((__tmp128515
                                   (let ((__tmp128517
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128516
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121058121061_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128517 __tmp128516))))
                              (declare (not safe))
                              (cons __tmp128515 _g121059121063_)))))
                     (declare (not safe))
                     (foldr1 __tmp128514 '() _L121048_))))
              (declare (not safe))
              (cons __tmp128518 __tmp128513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128512))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128511
                                         _stx120843_))))
                                 (declare (not safe))
                                 (cons __tmp128510 '()))))
                          (declare (not safe))
                          (cons _L120901_ __tmp128509))))
                     (___kont127868127869_
                      (lambda (_L120999_ _L121000_)
                        (let ((__tmp128520
                               (let ((__tmp128521
                                      (let ((__tmp128522
                                             (let ((__tmp128523
                                                    (let ((__tmp128537
                                                           (let ((__tmp128538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128538)))
                  (__tmp128524
                   (let ((__tmp128535
                          (let ((__tmp128536
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120920_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128536)))
                         (__tmp128525
                          (let ((__tmp128531
                                 (let ((__tmp128532
                                        (let ((__tmp128534
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128533
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120999_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128534 __tmp128533))))
                                   (declare (not safe))
                                   (cons __tmp128532 '())))
                                (__tmp128526
                                 (let ((__tmp128527
                                        (lambda (_g121011121014_
                                                 _g121012121016_)
                                          (let ((__tmp128528
                                                 (let ((__tmp128530
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128529
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121011121014_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128530
                                                         __tmp128529))))
                                            (declare (not safe))
                                            (cons __tmp128528
                                                  _g121012121016_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128527 '() _L121000_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128531 __tmp128526))))
                     (declare (not safe))
                     (cons __tmp128535 __tmp128525))))
              (declare (not safe))
              (cons __tmp128537 __tmp128524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128523))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128522
                                         _stx120843_))))
                                 (declare (not safe))
                                 (cons __tmp128521 '()))))
                          (declare (not safe))
                          (cons _L120901_ __tmp128520))))
                     (___kont127872127873_
                      (lambda (_L120959_)
                        (let ((__tmp128539
                               (let ((__tmp128540
                                      (let ((__tmp128541
                                             (let ((__tmp128542
                                                    (let ((__tmp128550
                                                           (let ((__tmp128551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128551)))
                  (__tmp128543
                   (let ((__tmp128548
                          (let ((__tmp128549
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120920_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128549)))
                         (__tmp128544
                          (let ((__tmp128545
                                 (let ((__tmp128547
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128546
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120959_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128547 __tmp128546))))
                            (declare (not safe))
                            (cons __tmp128545 '()))))
                     (declare (not safe))
                     (cons __tmp128548 __tmp128544))))
              (declare (not safe))
              (cons __tmp128550 __tmp128543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128542))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128541
                                         _stx120843_))))
                                 (declare (not safe))
                                 (cons __tmp128540 '()))))
                          (declare (not safe))
                          (cons _L120901_ __tmp128539)))))
                 (let* ((___match127887127888_
                         (lambda (___splice127870127871_
                                  _target120940120975_
                                  _tl120942120977_)
                           (letrec ((_loop120943120980_
                                     (lambda (_hd120941120983_
                                              _arg120947120985_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120941120983_))
                                           (let ((_e120944120988_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120941120983_))))
                                             (let ((_lp-tl120946120993_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120944120988_)))
                                                   (_lp-hd120945120991_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120944120988_))))
                                               (let ((__tmp128552
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120945120991_
                                                              _arg120947120985_))))
                                                 (declare (not safe))
                                                 (_loop120943120980_
                                                  _lp-tl120946120993_
                                                  __tmp128552))))
                                           (let ((_arg120948120996_
                                                  (reverse _arg120947120985_)))
                                             (___kont127868127869_
                                              _tl120942120977_
                                              _arg120948120996_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120943120980_
                                _target120940120975_
                                '())))))
                        (___match127881127882_
                         (lambda (___splice127866127867_
                                  _target120929121024_
                                  _tl120931121026_)
                           (letrec ((_loop120932121029_
                                     (lambda (_hd120930121032_
                                              _arg120936121034_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120930121032_))
                                           (let ((_e120933121037_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120930121032_))))
                                             (let ((_lp-tl120935121042_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120933121037_)))
                                                   (_lp-hd120934121040_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120933121037_))))
                                               (let ((__tmp128553
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120934121040_
                                                              _arg120936121034_))))
                                                 (declare (not safe))
                                                 (_loop120932121029_
                                                  _lp-tl120935121042_
                                                  __tmp128553))))
                                           (let ((_arg120937121045_
                                                  (reverse _arg120936121034_)))
                                             (___kont127864127865_
                                              _arg120937121045_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120932121029_
                                _target120929121024_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127862127863_))
                       (let ((___splice127866127867_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127862127863_
                                 '0))))
                         (let ((_tl120931121026_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127866127867_ '1)))
                               (_target120929121024_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127866127867_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120931121026_))
                               (___match127881127882_
                                ___splice127866127867_
                                _target120929121024_
                                _tl120931121026_)
                               (___match127887127888_
                                ___splice127866127867_
                                _target120929121024_
                                _tl120931121026_))))
                       (___kont127872127873_ ___stx127862127863_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128556
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120920_
                                                              _ids120851_)))
                                                     (__tmp128555
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120922_
                                                              _impls120852_)))
                                                     (__tmp128554
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121069_
                                                              _clauses120853_))))
                                                 (declare (not safe))
                                                 (_lp120848_
                                                  _rest120873_
                                                  __tmp128556
                                                  __tmp128555
                                                  __tmp128554))))
                                           _tl120880120897_
                                           _hd120881120895_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120876120887_ _g120877120890_))))))
                          (declare (not safe))
                          (_g120875121072_ _clause120874_))))))
            (if (let () (declare (not safe)) (##pair? _rest120854120862_))
                (let ((_hd120859121078_
                       (let ()
                         (declare (not safe))
                         (##car _rest120854120862_)))
                      (_tl120860121080_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120854120862_))))
                  (let* ((_clause121083_ _hd120859121078_)
                         (_rest121085_ _tl120860121080_))
                    (declare (not safe))
                    (_K120858121075_ _rest121085_ _clause121083_)))
                (let () (declare (not safe)) (_else120856120870_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121090_ _id121091_ _clauses121092_)
        (let ((_gensym?121094_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121090_
           _id121091_
           _clauses121092_
           _gensym?121094_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128559_
        (let ((_g128558_ (let () (declare (not safe)) (##length _g128559_))))
          (cond ((let () (declare (not safe)) (##fx= _g128558_ 3))
                 (apply (lambda (_stx121090_ _id121091_ _clauses121092_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121090_
                             _id121091_
                             _clauses121092_)))
                        _g128559_))
                ((let () (declare (not safe)) (##fx= _g128558_ 4))
                 (apply (lambda (_stx121096_
                                 _id121097_
                                 _clauses121098_
                                 _gensym?121099_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121096_
                             _id121097_
                             _clauses121098_
                             _gensym?121099_)))
                        _g128559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128559_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120120_)
        (letrec ((_case-lambda-clause-def120122_
                  (lambda (_id120839_ _impl120840_)
                    (let ((__tmp128560
                           (let ((__tmp128561
                                  (let ((__tmp128564
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120839_ '())))
                                        (__tmp128562
                                         (let ((__tmp128563
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl120840_))))
                                           (declare (not safe))
                                           (cons __tmp128563 '()))))
                                    (declare (not safe))
                                    (cons __tmp128564 __tmp128562))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128561))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128560 _stx120120_))))
                 (_opt-lambda-dispatch-name120123_
                  (lambda (_id120835_)
                    (if (uninterned-symbol? _id120835_)
                        (let ((_str120837_ (symbol->string _id120835_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120837_))
                              '"%"
                              _id120835_))
                        _id120835_)))
                 (_kw-lambda-dispatch-name120124_
                  (lambda (_id120830_ _name120831_)
                    (if (uninterned-symbol? _id120830_)
                        (let ((_str120833_ (symbol->string _id120830_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120833_))
                              _name120831_
                              _id120830_))
                        _id120830_))))
          (let* ((___stx127910127911_ _stx120120_)
                 (_g120129120188_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127910127911_)))))
            (let ((___kont127912127913_
                   (lambda (_L120739_ _L120740_)
                     (let* ((___stx127890127891_ _L120739_)
                            (_g120757120771_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127890127891_)))))
                       (let ((___kont127892127893_
                              (lambda (_L120815_) _stx120120_))
                             (___kont127894127895_
                              (lambda (_L120784_)
                                (let ((_g128565_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120120_
                                          _L120740_
                                          _L120784_))))
                                  (begin
                                    (let ((_g128566_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128565_)
                                                 (##vector-length _g128565_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128566_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128566_)))
                                    (let ((_ids120794_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128565_ 0)))
                                          (_impls120795_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128565_ 1)))
                                          (_clauses120796_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128565_ 2))))
                                      (let* ((_g128567_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120794_))
                                             (_defs120799_
                                              (map _case-lambda-clause-def120122_
                                                   _ids120794_
                                                   _impls120795_)))
                                        (let ((__tmp128569
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L120740_)))
                                              (__tmp128568
                                               (map gxc#identifier-symbol
                                                    _ids120794_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128569
                                           '" => "
                                           __tmp128568))
                                        (let ((__tmp128570
                                               (let ((__tmp128571
                                                      (let ((__tmp128572
                                                             (let ((__tmp128573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128574
                                   (let ((__tmp128575
                                          (let ((__tmp128580
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L120740_ '())))
                                                (__tmp128576
                                                 (let ((__tmp128577
                                                        (let ((__tmp128579
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120796_)))
                      (__tmp128578
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128579 __tmp128578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128577 '()))))
                                            (declare (not safe))
                                            (cons __tmp128580 __tmp128576))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128575))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128574
                               _stx120120_))))
                       (declare (not safe))
                       (cons __tmp128573 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128572 _defs120799_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128571))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128570
                                           _stx120120_)))))))))
                         (let ((___match127901127902_
                                (lambda (_e120762120807_
                                         _hd120761120810_
                                         _tl120760120812_)
                                  (let ((_L120815_ _tl120760120812_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120815_))
                                        (___kont127892127893_ _L120815_)
                                        (___kont127894127895_
                                         _tl120760120812_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127890127891_))
                               (let ((_e120762120807_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127890127891_))))
                                 (let ((_tl120760120812_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120762120807_)))
                                       (_hd120761120810_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120762120807_))))
                                   (___match127901127902_
                                    _e120762120807_
                                    _hd120761120810_
                                    _tl120760120812_)))
                               (let ()
                                 (declare (not safe))
                                 (_g120757120771_))))))))
                  (___kont127914127915_
                   (lambda (_L120557_ _L120558_)
                     (let* ((_g120574120604_
                             (lambda (_g120575120601_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120575120601_))))
                            (_g120573120699_
                             (lambda (_g120575120607_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120575120607_))
                                   (let ((_e120581120609_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120575120607_))))
                                     (let ((_hd120580120612_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120581120609_)))
                                           (_tl120579120614_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120581120609_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120579120614_))
                                           (let ((_e120584120617_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120579120614_))))
                                             (let ((_hd120583120620_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120584120617_)))
                                                   (_tl120582120622_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120584120617_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120583120620_))
                                                   (let ((_e120587120625_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120583120620_))))
                                                     (let ((_hd120586120628_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120587120625_)))
                                                           (_tl120585120630_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120587120625_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120586120628_))
                                                           (let ((_e120590120633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120586120628_))))
                     (let ((_hd120589120636_
                            (let ()
                              (declare (not safe))
                              (##car _e120590120633_)))
                           (_tl120588120638_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120590120633_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120589120636_))
                           (let ((_e120593120641_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120589120636_))))
                             (let ((_hd120592120644_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120593120641_)))
                                   (_tl120591120646_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120593120641_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120591120646_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120588120638_))
                                       (let ((_e120596120649_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120588120638_))))
                                         (let ((_hd120595120652_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120596120649_)))
                                               (_tl120594120654_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120596120649_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120594120654_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl120585120630_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120582120622_))
                                                       (let ((_e120599120657_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120582120622_))))
                 (let ((_hd120598120660_
                        (let () (declare (not safe)) (##car _e120599120657_)))
                       (_tl120597120662_
                        (let () (declare (not safe)) (##cdr _e120599120657_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120597120662_))
                       ((lambda (_L120665_ _L120666_ _L120667_)
                          (let* ((_lambda-id120691_
                                  (let ((__tmp128583
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120558_)))
                                        (__tmp128581
                                         (let ((__tmp128582
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L120667_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120123_
                                            __tmp128582))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp128583
                                     '"__"
                                     __tmp128581)))
                                 (_lambda-id120693_
                                  (let ((__tmp128584
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120120_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id120691_
                                     __tmp128584)))
                                 (_g128585_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id120693_)))
                                 (_new-case-lambda-expr120696_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L120665_
                                     _L120667_
                                     _lambda-id120693_))))
                            (let ((__tmp128587
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120558_)))
                                  (__tmp128586
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id120693_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp128587
                               '" => "
                               __tmp128586))
                            (let ((__tmp128588
                                   (let ((__tmp128589
                                          (let ((__tmp128597
                                                 (let ((__tmp128598
                                                        (let ((__tmp128599
                                                               (let ((__tmp128602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id120693_ '())))
                             (__tmp128600
                              (let ((__tmp128601
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L120666_))))
                                (declare (not safe))
                                (cons __tmp128601 '()))))
                         (declare (not safe))
                         (cons __tmp128602 __tmp128600))))
                  (declare (not safe))
                  (cons '%#define-values __tmp128599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp128598
                                                    _stx120120_)))
                                                (__tmp128590
                                                 (let ((__tmp128591
                                                        (let ((__tmp128592
                                                               (let ((__tmp128593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp128594
                                     (let ((__tmp128596
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120558_ '())))
                                           (__tmp128595
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr120696_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp128596 __tmp128595))))
                                (declare (not safe))
                                (cons '%#define-values __tmp128594))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp128593 _stx120120_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp128592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128591 '()))))
                                            (declare (not safe))
                                            (cons __tmp128597 __tmp128590))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp128589))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128588
                               _stx120120_))))
                        _hd120598120660_
                        _hd120595120652_
                        _hd120592120644_)
                       (let ()
                         (declare (not safe))
                         (_g120574120604_ _g120575120607_)))))
               (let () (declare (not safe)) (_g120574120604_ _g120575120607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120574120604_
                                                      _g120575120607_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120574120604_
                                                  _g120575120607_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120574120604_ _g120575120607_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120574120604_ _g120575120607_)))))
                           (let ()
                             (declare (not safe))
                             (_g120574120604_ _g120575120607_)))))
                   (let ()
                     (declare (not safe))
                     (_g120574120604_ _g120575120607_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120574120604_
                                                      _g120575120607_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120574120604_
                                              _g120575120607_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120574120604_ _g120575120607_))))))
                       (declare (not safe))
                       (_g120573120699_ _L120557_))))
                  (___kont127916127917_
                   (lambda (_L120271_ _L120272_)
                     (let* ((_g120288120341_
                             (lambda (_g120289120338_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120289120338_))))
                            (_g120287120517_
                             (lambda (_g120289120344_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120289120344_))
                                   (let ((_e120297120346_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120289120344_))))
                                     (let ((_hd120296120349_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120297120346_)))
                                           (_tl120295120351_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120297120346_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120295120351_))
                                           (let ((_e120300120354_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120295120351_))))
                                             (let ((_hd120299120357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120300120354_)))
                                                   (_tl120298120359_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120300120354_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120299120357_))
                                                   (let ((_e120303120362_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120299120357_))))
                                                     (let ((_hd120302120365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120303120362_)))
                                                           (_tl120301120367_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120303120362_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120302120365_))
                                                           (let ((_e120306120370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120302120365_))))
                     (let ((_hd120305120373_
                            (let ()
                              (declare (not safe))
                              (##car _e120306120370_)))
                           (_tl120304120375_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120306120370_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120305120373_))
                           (let ((_e120309120378_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120305120373_))))
                             (let ((_hd120308120381_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120309120378_)))
                                   (_tl120307120383_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120309120378_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120307120383_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120304120375_))
                                       (let ((_e120312120386_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120304120375_))))
                                         (let ((_hd120311120389_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120312120386_)))
                                               (_tl120310120391_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120312120386_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120311120389_))
                                               (let ((_e120315120394_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120311120389_))))
                                                 (let ((_hd120314120397_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120315120394_)))
                                                       (_tl120313120399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120315120394_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120313120399_))
                                                       (let ((_e120318120402_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120313120399_))))
                 (let ((_hd120317120405_
                        (let () (declare (not safe)) (##car _e120318120402_)))
                       (_tl120316120407_
                        (let () (declare (not safe)) (##cdr _e120318120402_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120317120405_))
                       (let ((_e120321120410_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120317120405_))))
                         (let ((_hd120320120413_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120321120410_)))
                               (_tl120319120415_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120321120410_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120320120413_))
                               (let ((_e120324120418_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120320120413_))))
                                 (let ((_hd120323120421_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120324120418_)))
                                       (_tl120322120423_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120324120418_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120323120421_))
                                       (let ((_e120327120426_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120323120421_))))
                                         (let ((_hd120326120429_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120327120426_)))
                                               (_tl120325120431_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120327120426_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120325120431_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120322120423_))
                                                   (let ((_e120330120434_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120322120423_))))
                                                     (let ((_hd120329120437_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120330120434_)))
                                                           (_tl120328120439_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120330120434_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120328120439_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120319120415_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120316120407_))
                           (let ((_e120333120442_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120316120407_))))
                             (let ((_hd120332120445_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120333120442_)))
                                   (_tl120331120447_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120333120442_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120331120447_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120310120391_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120301120367_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120298120359_))
                                               (let ((_e120336120450_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120298120359_))))
                                                 (let ((_hd120335120453_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120336120450_)))
                                                       (_tl120334120455_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120336120450_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120334120455_))
                                                       ((lambda (_L120458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120459_
                         _L120460_
                         _L120461_
                         _L120462_)
                  (let* ((_get-kws-id120502_
                          (let ((__tmp128605
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120272_)))
                                (__tmp128603
                                 (let ((__tmp128604
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120462_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120124_
                                    __tmp128604
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128605 '"__" __tmp128603)))
                         (_get-kws-id120504_
                          (let ((__tmp128606
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120120_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120502_
                             __tmp128606)))
                         (_main-id120506_
                          (let ((__tmp128609
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120272_)))
                                (__tmp128607
                                 (let ((__tmp128608
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120461_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120124_
                                    __tmp128608
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp128609 '"__" __tmp128607)))
                         (_main-id120508_
                          (let ((__tmp128610
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120120_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120506_
                             __tmp128610)))
                         (_g128611_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120504_)))
                         (_g128612_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120508_)))
                         (_new-kw-dispatch120512_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120458_
                             _L120462_
                             _get-kws-id120504_)))
                         (_new-get-kws120514_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120459_
                             _L120461_
                             _main-id120508_))))
                    (let ((__tmp128615
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120272_)))
                          (__tmp128614
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120504_)))
                          (__tmp128613
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120508_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp128615
                       '" => "
                       __tmp128614
                       '" => "
                       __tmp128613))
                    (let ((__tmp128616
                           (let ((__tmp128617
                                  (let ((__tmp128630
                                         (let ((__tmp128631
                                                (let ((__tmp128632
                                                       (let ((__tmp128633
                                                              (let ((__tmp128635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120508_ '())))
                            (__tmp128634
                             (let ()
                               (declare (not safe))
                               (cons _L120460_ '()))))
                        (declare (not safe))
                        (cons __tmp128635 __tmp128634))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128632
                                                   _stx120120_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp128631)))
                                        (__tmp128618
                                         (let ((__tmp128625
                                                (let ((__tmp128626
                                                       (let ((__tmp128627
                                                              (let ((__tmp128629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120504_ '())))
                            (__tmp128628
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120514_ '()))))
                        (declare (not safe))
                        (cons __tmp128629 __tmp128628))))
                 (declare (not safe))
                 (cons '%#define-values __tmp128627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128626
                                                   _stx120120_)))
                                               (__tmp128619
                                                (let ((__tmp128620
                                                       (let ((__tmp128621
                                                              (let ((__tmp128622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp128624
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120272_ '())))
                                   (__tmp128623
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120512_ '()))))
                               (declare (not safe))
                               (cons __tmp128624 __tmp128623))))
                        (declare (not safe))
                        (cons '%#define-values __tmp128622))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp128621 _stx120120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp128620 '()))))
                                           (declare (not safe))
                                           (cons __tmp128625 __tmp128619))))
                                    (declare (not safe))
                                    (cons __tmp128630 __tmp128618))))
                             (declare (not safe))
                             (cons '%#begin __tmp128617))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128616 _stx120120_))))
                _hd120335120453_
                _hd120332120445_
                _hd120329120437_
                _hd120326120429_
                _hd120308120381_)
               (let ()
                 (declare (not safe))
                 (_g120288120341_ _g120289120344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120288120341_
                                                  _g120289120344_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120288120341_
                                              _g120289120344_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120288120341_ _g120289120344_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120288120341_ _g120289120344_)))))
                           (let ()
                             (declare (not safe))
                             (_g120288120341_ _g120289120344_)))
                       (let ()
                         (declare (not safe))
                         (_g120288120341_ _g120289120344_)))
                   (let ()
                     (declare (not safe))
                     (_g120288120341_ _g120289120344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120288120341_
                                                      _g120289120344_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120288120341_
                                                  _g120289120344_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120288120341_ _g120289120344_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120288120341_ _g120289120344_)))))
                       (let ()
                         (declare (not safe))
                         (_g120288120341_ _g120289120344_)))))
               (let ()
                 (declare (not safe))
                 (_g120288120341_ _g120289120344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120288120341_
                                                  _g120289120344_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120288120341_ _g120289120344_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120288120341_ _g120289120344_)))))
                           (let ()
                             (declare (not safe))
                             (_g120288120341_ _g120289120344_)))))
                   (let ()
                     (declare (not safe))
                     (_g120288120341_ _g120289120344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120288120341_
                                                      _g120289120344_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120288120341_
                                              _g120289120344_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120288120341_ _g120289120344_))))))
                       (declare (not safe))
                       (_g120287120517_ _L120271_))))
                  (___kont127918127919_
                   (lambda (_L120217_ _L120218_)
                     (let ((__tmp128636
                            (let ((__tmp128637
                                   (let ((__tmp128638
                                          (let ((__tmp128639
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120217_))))
                                            (declare (not safe))
                                            (cons __tmp128639 '()))))
                                     (declare (not safe))
                                     (cons _L120218_ __tmp128638))))
                              (declare (not safe))
                              (cons '%#define-values __tmp128637))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp128636 _stx120120_)))))
              (let* ((___match128003128004_
                      (lambda (_e120163120239_
                               _hd120162120242_
                               _tl120161120244_
                               _e120166120247_
                               _hd120165120250_
                               _tl120164120252_
                               _e120169120255_
                               _hd120168120258_
                               _tl120167120260_
                               _e120172120263_
                               _hd120171120266_
                               _tl120170120268_)
                        (let ((_L120271_ _hd120171120266_)
                              (_L120272_ _hd120168120258_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120272_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120271_)))
                              (___kont127916127917_ _L120271_ _L120272_)
                              (___kont127918127919_
                               _hd120171120266_
                               _hd120165120250_)))))
                     (___match127975127976_
                      (lambda (_e120149120525_
                               _hd120148120528_
                               _tl120147120530_
                               _e120152120533_
                               _hd120151120536_
                               _tl120150120538_
                               _e120155120541_
                               _hd120154120544_
                               _tl120153120546_
                               _e120158120549_
                               _hd120157120552_
                               _tl120156120554_)
                        (let ((_L120557_ _hd120157120552_)
                              (_L120558_ _hd120154120544_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120558_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120557_)))
                              (___kont127914127915_ _L120557_ _L120558_)
                              (___match128003128004_
                               _e120149120525_
                               _hd120148120528_
                               _tl120147120530_
                               _e120152120533_
                               _hd120151120536_
                               _tl120150120538_
                               _e120155120541_
                               _hd120154120544_
                               _tl120153120546_
                               _e120158120549_
                               _hd120157120552_
                               _tl120156120554_)))))
                     (___match127947127948_
                      (lambda (_e120135120707_
                               _hd120134120710_
                               _tl120133120712_
                               _e120138120715_
                               _hd120137120718_
                               _tl120136120720_
                               _e120141120723_
                               _hd120140120726_
                               _tl120139120728_
                               _e120144120731_
                               _hd120143120734_
                               _tl120142120736_)
                        (let ((_L120739_ _hd120143120734_)
                              (_L120740_ _hd120140120726_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120740_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L120739_)))
                              (___kont127912127913_ _L120739_ _L120740_)
                              (___match127975127976_
                               _e120135120707_
                               _hd120134120710_
                               _tl120133120712_
                               _e120138120715_
                               _hd120137120718_
                               _tl120136120720_
                               _e120141120723_
                               _hd120140120726_
                               _tl120139120728_
                               _e120144120731_
                               _hd120143120734_
                               _tl120142120736_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127910127911_))
                    (let ((_e120135120707_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127910127911_))))
                      (let ((_tl120133120712_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120135120707_)))
                            (_hd120134120710_
                             (let ()
                               (declare (not safe))
                               (##car _e120135120707_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120133120712_))
                            (let ((_e120138120715_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120133120712_))))
                              (let ((_tl120136120720_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120138120715_)))
                                    (_hd120137120718_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120138120715_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120137120718_))
                                    (let ((_e120141120723_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120137120718_))))
                                      (let ((_tl120139120728_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120141120723_)))
                                            (_hd120140120726_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120141120723_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120139120728_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120136120720_))
                                                (let ((_e120144120731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120136120720_))))
                                                  (let ((_tl120142120736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120144120731_)))
                                                        (_hd120143120734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120144120731_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120142120736_))
                                                        (___match127947127948_
                                                         _e120135120707_
                                                         _hd120134120710_
                                                         _tl120133120712_
                                                         _e120138120715_
                                                         _hd120137120718_
                                                         _tl120136120720_
                                                         _e120141120723_
                                                         _hd120140120726_
                                                         _tl120139120728_
                                                         _e120144120731_
                                                         _hd120143120734_
                                                         _tl120142120736_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120129120188_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120129120188_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120136120720_))
                                                (let ((_e120183120209_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120136120720_))))
                                                  (let ((_tl120181120214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120183120209_)))
                                                        (_hd120182120212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120183120209_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120181120214_))
                                                        (___kont127918127919_
                                                         _hd120182120212_
                                                         _hd120137120718_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120129120188_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120129120188_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120136120720_))
                                        (let ((_e120183120209_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120136120720_))))
                                          (let ((_tl120181120214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120183120209_)))
                                                (_hd120182120212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120183120209_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120181120214_))
                                                (___kont127918127919_
                                                 _hd120182120212_
                                                 _hd120137120718_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120129120188_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120129120188_))))))
                            (let () (declare (not safe)) (_g120129120188_)))))
                    (let () (declare (not safe)) (_g120129120188_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119052_)
        (letrec* ((_bind-e__126306126307_
                   (lambda (_id120104_ _expr120105_ _compile?120106_)
                     (let ((__tmp128642
                            (let ()
                              (declare (not safe))
                              (cons _id120104_ '())))
                           (__tmp128640
                            (let ((__tmp128641
                                   (if _compile?120106_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120105_))
                                       _expr120105_)))
                              (declare (not safe))
                              (cons __tmp128641 '()))))
                       (declare (not safe))
                       (cons __tmp128642 __tmp128640))))
                  (_bind-e__0__126308126309_
                   (lambda (_id120111_ _expr120112_)
                     (let ((_compile?120114_ '#t))
                       (declare (not safe))
                       (_bind-e__126306126307_
                        _id120111_
                        _expr120112_
                        _compile?120114_))))
                  (_bind-e119054_
                   (lambda _g128644_
                     (let ((_g128643_
                            (let ()
                              (declare (not safe))
                              (##length _g128644_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128643_ 2))
                              (apply (lambda (_id120111_ _expr120112_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126308126309_
                                          _id120111_
                                          _expr120112_)))
                                     _g128644_))
                             ((let () (declare (not safe)) (##fx= _g128643_ 3))
                              (apply (lambda (_id120116_
                                              _expr120117_
                                              _compile?120118_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126306126307_
                                          _id120116_
                                          _expr120117_
                                          _compile?120118_)))
                                     _g128644_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128644_))))))
                  (_compile-bindings119055_
                   (lambda (_bindings119688_)
                     (let _lp119690_ ((_rest119692_ _bindings119688_)
                                      (_lift1119693_ '())
                                      (_lift2119694_ '())
                                      (_bind119695_ '()))
                       (let* ((_rest119696119704_ _rest119692_)
                              (_else119698119712_
                               (lambda ()
                                 (values (reverse _lift1119693_)
                                         (reverse _lift2119694_)
                                         (reverse _bind119695_))))
                              (_K119700120091_
                               (lambda (_rest119715_ _hd119716_)
                                 (let* ((___stx128046128047_ _hd119716_)
                                        (_g119720119756_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128046128047_)))))
                                   (let ((___kont128048128049_
                                          (lambda (_L119998_ _L119999_)
                                            (let* ((___stx128026128027_
                                                    _L119998_)
                                                   (_g120014120028_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128026128027_)))))
                                              (let ((___kont128028128029_
                                                     (lambda (_L120076_)
                                                       (let ((__tmp128645
                                                              (let ((__tmp128646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126306126307_
                                _L119999_
                                _L119998_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128646 _bind119695_))))
                 (declare (not safe))
                 (_lp119690_
                  _rest119715_
                  _lift1119693_
                  _lift2119694_
                  __tmp128645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128030128031_
                                                     (lambda (_L120041_)
                                                       (let ((_g128647_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119052_
                         _L119999_
                         _L120041_
                         '#t))))
                 (begin
                   (let ((_g128648_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128647_)
                                (##vector-length _g128647_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128648_ 3)))
                         (error "Context expects 3 values" _g128648_)))
                   (let ((_ids120051_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128647_ 0)))
                         (_impls120052_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128647_ 1)))
                         (_clauses120053_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128647_ 2))))
                     (let* ((_g128649_
                             (for-each gx#core-bind-runtime! _ids120051_))
                            (_xbind120056_
                             (map _bind-e119054_ _ids120051_ _impls120052_))
                            (_expr*120058_
                             (let ((__tmp128651
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120053_)))
                                   (__tmp128650
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128651
                                __tmp128650)))
                            (_bind*120060_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126306126307_
                                _L119999_
                                _expr*120058_
                                '#f))))
                       (let ((__tmp128653
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119999_)))
                             (__tmp128652
                              (map gxc#identifier-symbol _ids120051_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128653
                          '" => "
                          __tmp128652))
                       (let ((__tmp128655
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2119694_ _xbind120056_)))
                             (__tmp128654
                              (let ()
                                (declare (not safe))
                                (cons _bind*120060_ _bind119695_))))
                         (declare (not safe))
                         (_lp119690_
                          _rest119715_
                          _lift1119693_
                          __tmp128655
                          __tmp128654)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128037128038_
                                                       (lambda (_e120019120068_
                                                                _hd120018120071_
                                                                _tl120017120073_)
                                                         (let ((_L120076_
                                                                _tl120017120073_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120076_))
                       (___kont128028128029_ _L120076_)
                       (___kont128030128031_ _tl120017120073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128026128027_))
                                                      (let ((_e120019120068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128026128027_))))
                (let ((_tl120017120073_
                       (let () (declare (not safe)) (##cdr _e120019120068_)))
                      (_hd120018120071_
                       (let () (declare (not safe)) (##car _e120019120068_))))
                  (___match128037128038_
                   _e120019120068_
                   _hd120018120071_
                   _tl120017120073_)))
              (let () (declare (not safe)) (_g120014120028_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128050128051_
                                          (lambda (_L119826_ _L119827_)
                                            (let* ((_g119841119871_
                                                    (lambda (_g119842119868_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119842119868_))))
                                                   (_g119840119966_
                                                    (lambda (_g119842119874_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119842119874_))
                                                          (let ((_e119848119876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119842119874_))))
                    (let ((_hd119847119879_
                           (let ()
                             (declare (not safe))
                             (##car _e119848119876_)))
                          (_tl119846119881_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119848119876_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119846119881_))
                          (let ((_e119851119884_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119846119881_))))
                            (let ((_hd119850119887_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119851119884_)))
                                  (_tl119849119889_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119851119884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119850119887_))
                                  (let ((_e119854119892_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119850119887_))))
                                    (let ((_hd119853119895_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119854119892_)))
                                          (_tl119852119897_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119854119892_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119853119895_))
                                          (let ((_e119857119900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119853119895_))))
                                            (let ((_hd119856119903_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119857119900_)))
                                                  (_tl119855119905_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119857119900_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119856119903_))
                                                  (let ((_e119860119908_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119856119903_))))
                                                    (let ((_hd119859119911_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119860119908_)))
                                                          (_tl119858119913_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119860119908_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119858119913_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119855119905_))
                      (let ((_e119863119916_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119855119905_))))
                        (let ((_hd119862119919_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119863119916_)))
                              (_tl119861119921_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119863119916_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119861119921_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119852119897_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119849119889_))
                                      (let ((_e119866119924_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119849119889_))))
                                        (let ((_hd119865119927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119866119924_)))
                                              (_tl119864119929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119866119924_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119864119929_))
                                              ((lambda (_L119932_
                                                        _L119933_
                                                        _L119934_)
                                                 (let* ((_lambda-id119958_
                                                         (let ((__tmp128657
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119827_)))
                       (__tmp128656 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128657 __tmp128656)))
                (_lambda-id119960_
                 (let ((__tmp128658
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119052_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119958_ __tmp128658)))
                (_g128659_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119960_)))
                (_new-case-lambda-expr119963_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119932_
                    _L119934_
                    _lambda-id119960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128661
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119827_)))
                                                         (__tmp128660
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119960_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128661
                                                      '" => "
                                                      __tmp128660))
                                                   (let ((__tmp128664
                                                          (let ((__tmp128665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126306126307_
                            _L119827_
                            _new-case-lambda-expr119963_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128665 _rest119715_)))
                 (__tmp128662
                  (let ((__tmp128663
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126308126309_
                            _lambda-id119960_
                            _L119933_))))
                    (declare (not safe))
                    (cons __tmp128663 _lift1119693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp119690_
                                                      __tmp128664
                                                      __tmp128662
                                                      _lift2119694_
                                                      _bind119695_))))
                                               _hd119865119927_
                                               _hd119862119919_
                                               _hd119859119911_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119841119871_
                                                 _g119842119874_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119841119871_ _g119842119874_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119841119871_ _g119842119874_)))
                              (let ()
                                (declare (not safe))
                                (_g119841119871_ _g119842119874_)))))
                      (let ()
                        (declare (not safe))
                        (_g119841119871_ _g119842119874_)))
                  (let ()
                    (declare (not safe))
                    (_g119841119871_ _g119842119874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119841119871_
                                                     _g119842119874_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119841119871_
                                             _g119842119874_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119841119871_ _g119842119874_)))))
                          (let ()
                            (declare (not safe))
                            (_g119841119871_ _g119842119874_)))))
                  (let ()
                    (declare (not safe))
                    (_g119841119871_ _g119842119874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119840119966_ _L119826_))))
                                         (___kont128052128053_
                                          (lambda (_L119777_ _L119778_)
                                            (let ((__tmp128666
                                                   (let ((__tmp128667
                                                          (let ((__tmp128668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128669
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L119777_))))
                           (declare (not safe))
                           (cons __tmp128669 '()))))
                    (declare (not safe))
                    (cons _L119778_ __tmp128668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128667
                                                           _bind119695_))))
                                              (declare (not safe))
                                              (_lp119690_
                                               _rest119715_
                                               _lift1119693_
                                               _lift2119694_
                                               __tmp128666)))))
                                     (let* ((___match128097128098_
                                             (lambda (_e119737119802_
                                                      _hd119736119805_
                                                      _tl119735119807_
                                                      _e119740119810_
                                                      _hd119739119813_
                                                      _tl119738119815_
                                                      _e119743119818_
                                                      _hd119742119821_
                                                      _tl119741119823_)
                                               (let ((_L119826_
                                                      _hd119742119821_)
                                                     (_L119827_
                                                      _hd119739119813_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119827_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119826_)))
                                                     (___kont128050128051_
                                                      _L119826_
                                                      _L119827_)
                                                     (___kont128052128053_
                                                      _hd119742119821_
                                                      _hd119736119805_)))))
                                            (___match128075128076_
                                             (lambda (_e119726119974_
                                                      _hd119725119977_
                                                      _tl119724119979_
                                                      _e119729119982_
                                                      _hd119728119985_
                                                      _tl119727119987_
                                                      _e119732119990_
                                                      _hd119731119993_
                                                      _tl119730119995_)
                                               (let ((_L119998_
                                                      _hd119731119993_)
                                                     (_L119999_
                                                      _hd119728119985_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119999_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119998_)))
                                                     (___kont128048128049_
                                                      _L119998_
                                                      _L119999_)
                                                     (___match128097128098_
                                                      _e119726119974_
                                                      _hd119725119977_
                                                      _tl119724119979_
                                                      _e119729119982_
                                                      _hd119728119985_
                                                      _tl119727119987_
                                                      _e119732119990_
                                                      _hd119731119993_
                                                      _tl119730119995_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128046128047_))
                                           (let ((_e119726119974_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128046128047_))))
                                             (let ((_tl119724119979_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119726119974_)))
                                                   (_hd119725119977_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119726119974_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119725119977_))
                                                   (let ((_e119729119982_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119725119977_))))
                                                     (let ((_tl119727119987_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119729119982_)))
                                                           (_hd119728119985_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119729119982_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119727119987_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119724119979_))
                       (let ((_e119732119990_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119724119979_))))
                         (let ((_tl119730119995_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119732119990_)))
                               (_hd119731119993_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119732119990_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119730119995_))
                               (___match128075128076_
                                _e119726119974_
                                _hd119725119977_
                                _tl119724119979_
                                _e119729119982_
                                _hd119728119985_
                                _tl119727119987_
                                _e119732119990_
                                _hd119731119993_
                                _tl119730119995_)
                               (let ()
                                 (declare (not safe))
                                 (_g119720119756_)))))
                       (let () (declare (not safe)) (_g119720119756_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119724119979_))
                       (let ((_e119751119769_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119724119979_))))
                         (let ((_tl119749119774_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119751119769_)))
                               (_hd119750119772_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119751119769_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119749119774_))
                               (___kont128052128053_
                                _hd119750119772_
                                _hd119725119977_)
                               (let ()
                                 (declare (not safe))
                                 (_g119720119756_)))))
                       (let () (declare (not safe)) (_g119720119756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119724119979_))
                                                       (let ((_e119751119769_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119724119979_))))
                 (let ((_tl119749119774_
                        (let () (declare (not safe)) (##cdr _e119751119769_)))
                       (_hd119750119772_
                        (let () (declare (not safe)) (##car _e119751119769_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119749119774_))
                       (___kont128052128053_ _hd119750119772_ _hd119725119977_)
                       (let () (declare (not safe)) (_g119720119756_)))))
               (let () (declare (not safe)) (_g119720119756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119720119756_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119696119704_))
                             (let ((_hd119701120094_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119696119704_)))
                                   (_tl119702120096_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119696119704_))))
                               (let* ((_hd120099_ _hd119701120094_)
                                      (_rest120101_ _tl119702120096_))
                                 (declare (not safe))
                                 (_K119700120091_ _rest120101_ _hd120099_)))
                             (let ()
                               (declare (not safe))
                               (_else119698119712_)))))))
                  (_lift-kw-lambda?119056_
                   (lambda (_bind119612_)
                     (let* ((___stx128114128115_ _bind119612_)
                            (_g119615119632_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128114128115_)))))
                       (let ((___kont128116128117_
                              (lambda (_L119668_ _L119669_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L119669_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L119668_))
                                    '#f)))
                             (___kont128118128119_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128114128115_))
                             (let ((_e119621119644_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128114128115_))))
                               (let ((_tl119619119649_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e119621119644_)))
                                     (_hd119620119647_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e119621119644_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd119620119647_))
                                     (let ((_e119624119652_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd119620119647_))))
                                       (let ((_tl119622119657_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e119624119652_)))
                                             (_hd119623119655_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e119624119652_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl119622119657_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl119619119649_))
                                                 (let ((_e119627119660_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl119619119649_))))
                                                   (let ((_tl119625119665_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e119627119660_)))
                                                         (_hd119626119663_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e119627119660_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl119625119665_))
                                                         (___kont128116128117_
                                                          _hd119626119663_
                                                          _hd119623119655_)
                                                         (___kont128118128119_))))
                                                 (___kont128118128119_))
                                             (___kont128118128119_))))
                                     (___kont128118128119_))))
                             (___kont128118128119_))))))
                  (_lift-kw-lambda-bindings119057_
                   (lambda (_bindings119224_)
                     (let _lp119226_ ((_rest119228_ _bindings119224_)
                                      (_lift1119229_ '())
                                      (_lift2119230_ '())
                                      (_bind119231_ '()))
                       (let* ((_rest119232119240_ _rest119228_)
                              (_else119234119248_
                               (lambda ()
                                 (values (reverse _lift1119229_)
                                         (reverse _lift2119230_)
                                         (reverse _bind119231_))))
                              (_K119236119600_
                               (lambda (_rest119251_ _hd119252_)
                                 (let* ((___stx128144128145_ _hd119252_)
                                        (_g119255119280_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128144128145_)))))
                                   (let ((___kont128146128147_
                                          (lambda (_L119350_ _L119351_)
                                            (let* ((_g119365119418_
                                                    (lambda (_g119366119415_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119366119415_))))
                                                   (_g119364119594_
                                                    (lambda (_g119366119421_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119366119421_))
                                                          (let ((_e119374119423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119366119421_))))
                    (let ((_hd119373119426_
                           (let ()
                             (declare (not safe))
                             (##car _e119374119423_)))
                          (_tl119372119428_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119374119423_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119372119428_))
                          (let ((_e119377119431_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119372119428_))))
                            (let ((_hd119376119434_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119377119431_)))
                                  (_tl119375119436_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119377119431_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119376119434_))
                                  (let ((_e119380119439_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119376119434_))))
                                    (let ((_hd119379119442_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119380119439_)))
                                          (_tl119378119444_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119380119439_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119379119442_))
                                          (let ((_e119383119447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119379119442_))))
                                            (let ((_hd119382119450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119383119447_)))
                                                  (_tl119381119452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119383119447_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119382119450_))
                                                  (let ((_e119386119455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119382119450_))))
                                                    (let ((_hd119385119458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119386119455_)))
                                                          (_tl119384119460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119386119455_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119384119460_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119381119452_))
                      (let ((_e119389119463_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119381119452_))))
                        (let ((_hd119388119466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119389119463_)))
                              (_tl119387119468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119389119463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119388119466_))
                              (let ((_e119392119471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119388119466_))))
                                (let ((_hd119391119474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119392119471_)))
                                      (_tl119390119476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119392119471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119390119476_))
                                      (let ((_e119395119479_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119390119476_))))
                                        (let ((_hd119394119482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119395119479_)))
                                              (_tl119393119484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119395119479_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119394119482_))
                                              (let ((_e119398119487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119394119482_))))
                                                (let ((_hd119397119490_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119398119487_)))
                                                      (_tl119396119492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119398119487_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119397119490_))
                                                      (let ((_e119401119495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119397119490_))))
                (let ((_hd119400119498_
                       (let () (declare (not safe)) (##car _e119401119495_)))
                      (_tl119399119500_
                       (let () (declare (not safe)) (##cdr _e119401119495_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119400119498_))
                      (let ((_e119404119503_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119400119498_))))
                        (let ((_hd119403119506_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119404119503_)))
                              (_tl119402119508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119404119503_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119402119508_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119399119500_))
                                  (let ((_e119407119511_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119399119500_))))
                                    (let ((_hd119406119514_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119407119511_)))
                                          (_tl119405119516_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119407119511_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119405119516_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119396119492_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119393119484_))
                                                  (let ((_e119410119519_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119393119484_))))
                                                    (let ((_hd119409119522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119410119519_)))
                                                          (_tl119408119524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119410119519_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119408119524_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119387119468_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119378119444_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119375119436_))
                              (let ((_e119413119527_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119375119436_))))
                                (let ((_hd119412119530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119413119527_)))
                                      (_tl119411119532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119413119527_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119411119532_))
                                      ((lambda (_L119535_
                                                _L119536_
                                                _L119537_
                                                _L119538_
                                                _L119539_)
                                         (let* ((_get-kws-id119579_
                                                 (let ((__tmp128671
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119351_)))
                                                       (__tmp128670
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128671
                                                    __tmp128670)))
                                                (_get-kws-id119581_
                                                 (let ((__tmp128672
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119052_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119579_
                                                    __tmp128672)))
                                                (_main-id119583_
                                                 (let ((__tmp128674
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119351_)))
                                                       (__tmp128673
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128674
                                                    __tmp128673)))
                                                (_main-id119585_
                                                 (let ((__tmp128675
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119052_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119583_
                                                    __tmp128675)))
                                                (_g128676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119581_)))
                                                (_g128677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119585_)))
                                                (_new-kw-dispatch119589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119535_
                                                    _L119539_
                                                    _get-kws-id119581_)))
                                                (_new-get-kws119591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119536_
                                                    _L119538_
                                                    _main-id119585_))))
                                           (let ((__tmp128680
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119351_)))
                                                 (__tmp128679
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119581_)))
                                                 (__tmp128678
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119585_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128680
                                              '" => "
                                              __tmp128679
                                              '" => "
                                              __tmp128678))
                                           (let ((__tmp128685
                                                  (let ((__tmp128686
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126306126307_
                                                            _main-id119585_
                                                            _L119537_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128686
                                                          _lift1119229_)))
                                                 (__tmp128683
                                                  (let ((__tmp128684
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126306126307_
                                                            _get-kws-id119581_
                                                            _new-get-kws119591_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128684
                                                          _lift2119230_)))
                                                 (__tmp128681
                                                  (let ((__tmp128682
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126306126307_
                                                            _L119351_
                                                            _new-kw-dispatch119589_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp128682
                                                          _bind119231_))))
                                             (declare (not safe))
                                             (_lp119226_
                                              _rest119251_
                                              __tmp128685
                                              __tmp128683
                                              __tmp128681))))
                                       _hd119412119530_
                                       _hd119409119522_
                                       _hd119406119514_
                                       _hd119403119506_
                                       _hd119385119458_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119365119418_ _g119366119421_)))))
                              (let ()
                                (declare (not safe))
                                (_g119365119418_ _g119366119421_)))
                          (let ()
                            (declare (not safe))
                            (_g119365119418_ _g119366119421_)))
                      (let ()
                        (declare (not safe))
                        (_g119365119418_ _g119366119421_)))
                  (let ()
                    (declare (not safe))
                    (_g119365119418_ _g119366119421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119365119418_
                                                     _g119366119421_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119365119418_
                                                 _g119366119421_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119365119418_
                                             _g119366119421_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119365119418_ _g119366119421_)))
                              (let ()
                                (declare (not safe))
                                (_g119365119418_ _g119366119421_)))))
                      (let ()
                        (declare (not safe))
                        (_g119365119418_ _g119366119421_)))))
              (let ()
                (declare (not safe))
                (_g119365119418_ _g119366119421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119365119418_
                                                 _g119366119421_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119365119418_ _g119366119421_)))))
                              (let ()
                                (declare (not safe))
                                (_g119365119418_ _g119366119421_)))))
                      (let ()
                        (declare (not safe))
                        (_g119365119418_ _g119366119421_)))
                  (let ()
                    (declare (not safe))
                    (_g119365119418_ _g119366119421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119365119418_
                                                     _g119366119421_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119365119418_
                                             _g119366119421_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119365119418_ _g119366119421_)))))
                          (let ()
                            (declare (not safe))
                            (_g119365119418_ _g119366119421_)))))
                  (let ()
                    (declare (not safe))
                    (_g119365119418_ _g119366119421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119364119594_ _L119350_))))
                                         (___kont128148128149_
                                          (lambda (_L119301_ _L119302_)
                                            (let ((__tmp128687
                                                   (let ((__tmp128688
                                                          (let ((__tmp128689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119301_ '()))))
                    (declare (not safe))
                    (cons _L119302_ __tmp128689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128688
                                                           _bind119231_))))
                                              (declare (not safe))
                                              (_lp119226_
                                               _rest119251_
                                               _lift1119229_
                                               _lift2119230_
                                               __tmp128687)))))
                                     (let ((___match128171128172_
                                            (lambda (_e119261119326_
                                                     _hd119260119329_
                                                     _tl119259119331_
                                                     _e119264119334_
                                                     _hd119263119337_
                                                     _tl119262119339_
                                                     _e119267119342_
                                                     _hd119266119345_
                                                     _tl119265119347_)
                                              (let ((_L119350_
                                                     _hd119266119345_)
                                                    (_L119351_
                                                     _hd119263119337_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119351_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119350_)))
                                                    (___kont128146128147_
                                                     _L119350_
                                                     _L119351_)
                                                    (___kont128148128149_
                                                     _hd119266119345_
                                                     _hd119260119329_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128144128145_))
                                           (let ((_e119261119326_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128144128145_))))
                                             (let ((_tl119259119331_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119261119326_)))
                                                   (_hd119260119329_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119261119326_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119260119329_))
                                                   (let ((_e119264119334_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119260119329_))))
                                                     (let ((_tl119262119339_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119264119334_)))
                                                           (_hd119263119337_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119264119334_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119262119339_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119259119331_))
                       (let ((_e119267119342_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119259119331_))))
                         (let ((_tl119265119347_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119267119342_)))
                               (_hd119266119345_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119267119342_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119265119347_))
                               (___match128171128172_
                                _e119261119326_
                                _hd119260119329_
                                _tl119259119331_
                                _e119264119334_
                                _hd119263119337_
                                _tl119262119339_
                                _e119267119342_
                                _hd119266119345_
                                _tl119265119347_)
                               (let ()
                                 (declare (not safe))
                                 (_g119255119280_)))))
                       (let () (declare (not safe)) (_g119255119280_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119259119331_))
                       (let ((_e119275119293_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119259119331_))))
                         (let ((_tl119273119298_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119275119293_)))
                               (_hd119274119296_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119275119293_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119273119298_))
                               (___kont128148128149_
                                _hd119274119296_
                                _hd119260119329_)
                               (let ()
                                 (declare (not safe))
                                 (_g119255119280_)))))
                       (let () (declare (not safe)) (_g119255119280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119259119331_))
                                                       (let ((_e119275119293_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119259119331_))))
                 (let ((_tl119273119298_
                        (let () (declare (not safe)) (##cdr _e119275119293_)))
                       (_hd119274119296_
                        (let () (declare (not safe)) (##car _e119275119293_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119273119298_))
                       (___kont128148128149_ _hd119274119296_ _hd119260119329_)
                       (let () (declare (not safe)) (_g119255119280_)))))
               (let () (declare (not safe)) (_g119255119280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119255119280_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119232119240_))
                             (let ((_hd119237119603_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119232119240_)))
                                   (_tl119238119605_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119232119240_))))
                               (let* ((_hd119608_ _hd119237119603_)
                                      (_rest119610_ _tl119238119605_))
                                 (declare (not safe))
                                 (_K119236119600_ _rest119610_ _hd119608_)))
                             (let ()
                               (declare (not safe))
                               (_else119234119248_))))))))
          (let* ((___stx128188128189_ _stx119052_)
                 (_g119060119086_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128188128189_)))))
            (let ((___kont128190128191_
                   (lambda (_L119146_ _L119147_)
                     (let ((__tmp128691
                            (lambda ()
                              (if (let ((__tmp128718
                                         (let ((__tmp128719
                                                (lambda (_g119175119178_
                                                         _g119176119180_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119175119178_
                                                          _g119176119180_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp128719
                                                   '()
                                                   _L119147_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119056_
                                            __tmp128718))
                                  (let ((_g128705_
                                         (let ((__tmp128707
                                                (let ((__tmp128708
                                                       (lambda (_g119182119185_
                                                                _g119183119187_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119182119185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119183119187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128708
                                                          '()
                                                          _L119147_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119057_
                                            __tmp128707))))
                                    (begin
                                      (let ((_g128706_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128705_)
                                                   (##vector-length _g128705_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128706_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128706_)))
                                      (let ((_lift1119190_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128705_ 0)))
                                            (_lift2119191_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128705_ 1)))
                                            (_hd119192_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128705_ 2))))
                                        (let* ((_expr119194_
                                                (let ((__tmp128709
                                                       (let ((__tmp128710
                                                              (let ((__tmp128711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119146_ '()))))
                        (declare (not safe))
                        (cons _hd119192_ __tmp128711))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128709
                                                   _stx119052_)))
                                               (_expr119196_
                                                (let ((__tmp128712
                                                       (let ((__tmp128713
                                                              (let ((__tmp128714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119194_ '()))))
                        (declare (not safe))
                        (cons _lift2119191_ __tmp128714))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128712
                                                   _stx119052_)))
                                               (_expr119198_
                                                (let ((__tmp128715
                                                       (let ((__tmp128716
                                                              (let ((__tmp128717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119196_ '()))))
                        (declare (not safe))
                        (cons _lift1119190_ __tmp128717))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128715
                                                   _stx119052_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119198_))))))
                                  (let ((_g128692_
                                         (let ((__tmp128694
                                                (let ((__tmp128695
                                                       (lambda (_g119200119203_
                                                                _g119201119205_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119200119203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119201119205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp128695
                                                          '()
                                                          _L119147_))))
                                           (declare (not safe))
                                           (_compile-bindings119055_
                                            __tmp128694))))
                                    (begin
                                      (let ((_g128693_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g128692_)
                                                   (##vector-length _g128692_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g128693_ 3)))
                                            (error "Context expects 3 values"
                                                   _g128693_)))
                                      (let ((_lift1119208_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128692_ 0)))
                                            (_lift2119209_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128692_ 1)))
                                            (_hd119210_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g128692_ 2))))
                                        (let* ((_body119212_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119146_)))
                                               (_expr119214_
                                                (let ((__tmp128696
                                                       (let ((__tmp128697
                                                              (let ((__tmp128698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119212_ '()))))
                        (declare (not safe))
                        (cons _hd119210_ __tmp128698))))
                 (declare (not safe))
                 (cons '%#let-values __tmp128697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp128696
                                                   _stx119052_)))
                                               (_expr119216_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119209_))
                                                    _expr119214_
                                                    (let ((__tmp128699
                                                           (let ((__tmp128700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128701
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119214_ '()))))
                            (declare (not safe))
                            (cons _lift2119209_ __tmp128701))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128700))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128699 _stx119052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119218_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119208_))
                                                    _expr119216_
                                                    (let ((__tmp128702
                                                           (let ((__tmp128703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128704
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119216_ '()))))
                            (declare (not safe))
                            (cons _lift1119208_ __tmp128704))))
                     (declare (not safe))
                     (cons '%#let-values __tmp128703))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp128702 _stx119052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119218_)))))))
                           (__tmp128690
                            (let ((__obj128394
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128394)
                              __obj128394)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128691
                        gx#current-expander-context
                        __tmp128690))))
                  (___kont128194128195_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119052_)))))
              (let ((___match128215128216_
                     (lambda (_e119066119098_
                              _hd119065119101_
                              _tl119064119103_
                              _e119069119106_
                              _hd119068119109_
                              _tl119067119111_
                              ___splice128192128193_
                              _target119070119114_
                              _tl119072119116_)
                       (letrec ((_loop119073119119_
                                 (lambda (_hd119071119122_ _bind119077119124_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119071119122_))
                                       (let ((_e119074119127_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119071119122_))))
                                         (let ((_lp-tl119076119132_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119074119127_)))
                                               (_lp-hd119075119130_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119074119127_))))
                                           (let ((__tmp128722
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119075119130_
                                                          _bind119077119124_))))
                                             (declare (not safe))
                                             (_loop119073119119_
                                              _lp-tl119076119132_
                                              __tmp128722))))
                                       (let ((_bind119078119135_
                                              (reverse _bind119077119124_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119067119111_))
                                             (let ((_e119081119138_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119067119111_))))
                                               (let ((_tl119079119143_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119081119138_)))
                                                     (_hd119080119141_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119081119138_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119079119143_))
                                                     (let ((_L119146_
                                                            _hd119080119141_)
                                                           (_L119147_
                                                            _bind119078119135_))
                                                       (if (let ((__tmp128720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128721
                                 (lambda (_g119167119170_ _g119168119172_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119167119170_ _g119168119172_)))))
                            (declare (not safe))
                            (foldr1 __tmp128721 '() _L119147_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128720))
                   (___kont128190128191_ _L119146_ _L119147_)
                   (___kont128194128195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128194128195_))))
                                             (___kont128194128195_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119073119119_ _target119070119114_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128188128189_))
                    (let ((_e119066119098_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128188128189_))))
                      (let ((_tl119064119103_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119066119098_)))
                            (_hd119065119101_
                             (let ()
                               (declare (not safe))
                               (##car _e119066119098_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119064119103_))
                            (let ((_e119069119106_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119064119103_))))
                              (let ((_tl119067119111_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119069119106_)))
                                    (_hd119068119109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119069119106_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119068119109_))
                                    (let ((___splice128192128193_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119068119109_
                                              '0))))
                                      (let ((_tl119072119116_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128192128193_
                                                '1)))
                                            (_target119070119114_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128192128193_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119072119116_))
                                            (___match128215128216_
                                             _e119066119098_
                                             _hd119065119101_
                                             _tl119064119103_
                                             _e119069119106_
                                             _hd119068119109_
                                             _tl119067119111_
                                             ___splice128192128193_
                                             _target119070119114_
                                             _tl119072119116_)
                                            (___kont128194128195_))))
                                    (___kont128194128195_))))
                            (___kont128194128195_))))
                    (___kont128194128195_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118196_)
        (letrec* ((_bind-e__126311126312_
                   (lambda (_id119036_ _expr119037_ _compile?119038_)
                     (let ((__tmp128725
                            (let ()
                              (declare (not safe))
                              (cons _id119036_ '())))
                           (__tmp128723
                            (let ((__tmp128724
                                   (if _compile?119038_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119037_))
                                       _expr119037_)))
                              (declare (not safe))
                              (cons __tmp128724 '()))))
                       (declare (not safe))
                       (cons __tmp128725 __tmp128723))))
                  (_bind-e__0__126313126314_
                   (lambda (_id119043_ _expr119044_)
                     (let ((_compile?119046_ '#t))
                       (declare (not safe))
                       (_bind-e__126311126312_
                        _id119043_
                        _expr119044_
                        _compile?119046_))))
                  (_bind-e118198_
                   (lambda _g128727_
                     (let ((_g128726_
                            (let ()
                              (declare (not safe))
                              (##length _g128727_))))
                       (cond ((let () (declare (not safe)) (##fx= _g128726_ 2))
                              (apply (lambda (_id119043_ _expr119044_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126313126314_
                                          _id119043_
                                          _expr119044_)))
                                     _g128727_))
                             ((let () (declare (not safe)) (##fx= _g128726_ 3))
                              (apply (lambda (_id119048_
                                              _expr119049_
                                              _compile?119050_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126311126312_
                                          _id119048_
                                          _expr119049_
                                          _compile?119050_)))
                                     _g128727_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g128727_))))))
                  (_compile-bindings118199_
                   (lambda (_rest118334_)
                     (let _lp118336_ ((_rest118338_ _rest118334_)
                                      (_bind118339_ '()))
                       (let* ((_rest118340118348_ _rest118338_)
                              (_else118342118356_
                               (lambda () (reverse _bind118339_)))
                              (_K118344119023_
                               (lambda (_rest118359_ _hd118360_)
                                 (let* ((___stx128238128239_ _hd118360_)
                                        (_g118365118412_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128238128239_)))))
                                   (let ((___kont128240128241_
                                          (lambda (_L118930_ _L118931_)
                                            (let* ((___stx128218128219_
                                                    _L118930_)
                                                   (_g118946118960_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128218128219_)))))
                                              (let ((___kont128220128221_
                                                     (lambda (_L119008_)
                                                       (let ((__tmp128728
                                                              (let ((__tmp128729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126311126312_
                                _L118931_
                                _L118930_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp128729 _bind118339_))))
                 (declare (not safe))
                 (_lp118336_ _rest118359_ __tmp128728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128222128223_
                                                     (lambda (_L118973_)
                                                       (let ((_g128730_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118196_
                         _L118931_
                         _L118973_
                         '#t))))
                 (begin
                   (let ((_g128731_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g128730_)
                                (##vector-length _g128730_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g128731_ 3)))
                         (error "Context expects 3 values" _g128731_)))
                   (let ((_ids118983_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128730_ 0)))
                         (_impls118984_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128730_ 1)))
                         (_clauses118985_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g128730_ 2))))
                     (let* ((_g128732_
                             (for-each gx#core-bind-runtime! _ids118983_))
                            (_xbind118988_
                             (map _bind-e118198_ _ids118983_ _impls118984_))
                            (_expr*118990_
                             (let ((__tmp128734
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118985_)))
                                   (__tmp128733
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128734
                                __tmp128733)))
                            (_bind*118992_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126311126312_
                                _L118931_
                                _expr*118990_
                                '#f))))
                       (let ((__tmp128736
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118931_)))
                             (__tmp128735
                              (map gxc#identifier-symbol _ids118983_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128736
                          '" => "
                          __tmp128735))
                       (let ((__tmp128737
                              (let ((__tmp128738
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118339_
                                               _xbind118988_))))
                                (declare (not safe))
                                (cons _bind*118992_ __tmp128738))))
                         (declare (not safe))
                         (_lp118336_ _rest118359_ __tmp128737)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128229128230_
                                                       (lambda (_e118951119000_
                                                                _hd118950119003_
                                                                _tl118949119005_)
                                                         (let ((_L119008_
                                                                _tl118949119005_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119008_))
                       (___kont128220128221_ _L119008_)
                       (___kont128222128223_ _tl118949119005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128218128219_))
                                                      (let ((_e118951119000_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128218128219_))))
                (let ((_tl118949119005_
                       (let () (declare (not safe)) (##cdr _e118951119000_)))
                      (_hd118950119003_
                       (let () (declare (not safe)) (##car _e118951119000_))))
                  (___match128229128230_
                   _e118951119000_
                   _hd118950119003_
                   _tl118949119005_)))
              (let () (declare (not safe)) (_g118946118960_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128242128243_
                                          (lambda (_L118758_ _L118759_)
                                            (let* ((_g118773118803_
                                                    (lambda (_g118774118800_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118774118800_))))
                                                   (_g118772118898_
                                                    (lambda (_g118774118806_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118774118806_))
                                                          (let ((_e118780118808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118774118806_))))
                    (let ((_hd118779118811_
                           (let ()
                             (declare (not safe))
                             (##car _e118780118808_)))
                          (_tl118778118813_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118780118808_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118778118813_))
                          (let ((_e118783118816_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118778118813_))))
                            (let ((_hd118782118819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118783118816_)))
                                  (_tl118781118821_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118783118816_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118782118819_))
                                  (let ((_e118786118824_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118782118819_))))
                                    (let ((_hd118785118827_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118786118824_)))
                                          (_tl118784118829_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118786118824_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118785118827_))
                                          (let ((_e118789118832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118785118827_))))
                                            (let ((_hd118788118835_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118789118832_)))
                                                  (_tl118787118837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118789118832_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118788118835_))
                                                  (let ((_e118792118840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118788118835_))))
                                                    (let ((_hd118791118843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118792118840_)))
                                                          (_tl118790118845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118792118840_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118790118845_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118787118837_))
                      (let ((_e118795118848_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118787118837_))))
                        (let ((_hd118794118851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118795118848_)))
                              (_tl118793118853_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118795118848_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118793118853_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl118784118829_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118781118821_))
                                      (let ((_e118798118856_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118781118821_))))
                                        (let ((_hd118797118859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118798118856_)))
                                              (_tl118796118861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118798118856_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118796118861_))
                                              ((lambda (_L118864_
                                                        _L118865_
                                                        _L118866_)
                                                 (let* ((_lambda-id118890_
                                                         (let ((__tmp128740
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118759_)))
                       (__tmp128739 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128740 __tmp128739)))
                (_lambda-id118892_
                 (let ((__tmp128741
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118196_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118890_ __tmp128741)))
                (_g128742_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118892_)))
                (_new-case-lambda-expr118895_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118864_
                    _L118866_
                    _lambda-id118892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128744
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118759_)))
                                                         (__tmp128743
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118892_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128744
                                                      '" => "
                                                      __tmp128743))
                                                   (let ((__tmp128747
                                                          (let ((__tmp128748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126311126312_
                            _L118759_
                            _new-case-lambda-expr118895_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128748 _rest118359_)))
                 (__tmp128745
                  (let ((__tmp128746
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126313126314_
                            _lambda-id118892_
                            _L118865_))))
                    (declare (not safe))
                    (cons __tmp128746 _bind118339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118336_
                                                      __tmp128747
                                                      __tmp128745))))
                                               _hd118797118859_
                                               _hd118794118851_
                                               _hd118791118843_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118773118803_
                                                 _g118774118806_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118773118803_ _g118774118806_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118773118803_ _g118774118806_)))
                              (let ()
                                (declare (not safe))
                                (_g118773118803_ _g118774118806_)))))
                      (let ()
                        (declare (not safe))
                        (_g118773118803_ _g118774118806_)))
                  (let ()
                    (declare (not safe))
                    (_g118773118803_ _g118774118806_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118773118803_
                                                     _g118774118806_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118773118803_
                                             _g118774118806_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118773118803_ _g118774118806_)))))
                          (let ()
                            (declare (not safe))
                            (_g118773118803_ _g118774118806_)))))
                  (let ()
                    (declare (not safe))
                    (_g118773118803_ _g118774118806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118772118898_ _L118758_))))
                                         (___kont128244128245_
                                          (lambda (_L118482_ _L118483_)
                                            (let* ((_g118497118550_
                                                    (lambda (_g118498118547_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118498118547_))))
                                                   (_g118496118726_
                                                    (lambda (_g118498118553_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118498118553_))
                                                          (let ((_e118506118555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118498118553_))))
                    (let ((_hd118505118558_
                           (let ()
                             (declare (not safe))
                             (##car _e118506118555_)))
                          (_tl118504118560_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118506118555_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118504118560_))
                          (let ((_e118509118563_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118504118560_))))
                            (let ((_hd118508118566_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118509118563_)))
                                  (_tl118507118568_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118509118563_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118508118566_))
                                  (let ((_e118512118571_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118508118566_))))
                                    (let ((_hd118511118574_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118512118571_)))
                                          (_tl118510118576_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118512118571_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118511118574_))
                                          (let ((_e118515118579_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118511118574_))))
                                            (let ((_hd118514118582_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118515118579_)))
                                                  (_tl118513118584_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118515118579_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118514118582_))
                                                  (let ((_e118518118587_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118514118582_))))
                                                    (let ((_hd118517118590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118518118587_)))
                                                          (_tl118516118592_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118518118587_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118516118592_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118513118584_))
                      (let ((_e118521118595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118513118584_))))
                        (let ((_hd118520118598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118521118595_)))
                              (_tl118519118600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118521118595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118520118598_))
                              (let ((_e118524118603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118520118598_))))
                                (let ((_hd118523118606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118524118603_)))
                                      (_tl118522118608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118524118603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118522118608_))
                                      (let ((_e118527118611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118522118608_))))
                                        (let ((_hd118526118614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118527118611_)))
                                              (_tl118525118616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118527118611_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118526118614_))
                                              (let ((_e118530118619_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118526118614_))))
                                                (let ((_hd118529118622_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118530118619_)))
                                                      (_tl118528118624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118530118619_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118529118622_))
                                                      (let ((_e118533118627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118529118622_))))
                (let ((_hd118532118630_
                       (let () (declare (not safe)) (##car _e118533118627_)))
                      (_tl118531118632_
                       (let () (declare (not safe)) (##cdr _e118533118627_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118532118630_))
                      (let ((_e118536118635_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118532118630_))))
                        (let ((_hd118535118638_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118536118635_)))
                              (_tl118534118640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118536118635_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118534118640_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118531118632_))
                                  (let ((_e118539118643_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118531118632_))))
                                    (let ((_hd118538118646_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118539118643_)))
                                          (_tl118537118648_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118539118643_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118537118648_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118528118624_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118525118616_))
                                                  (let ((_e118542118651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118525118616_))))
                                                    (let ((_hd118541118654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118542118651_)))
                                                          (_tl118540118656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118542118651_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118540118656_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118519118600_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118510118576_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118507118568_))
                              (let ((_e118545118659_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118507118568_))))
                                (let ((_hd118544118662_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118545118659_)))
                                      (_tl118543118664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118545118659_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118543118664_))
                                      ((lambda (_L118667_
                                                _L118668_
                                                _L118669_
                                                _L118670_
                                                _L118671_)
                                         (let* ((_get-kws-id118711_
                                                 (let ((__tmp128750
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118483_)))
                                                       (__tmp128749
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128750
                                                    __tmp128749)))
                                                (_get-kws-id118713_
                                                 (let ((__tmp128751
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118196_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118711_
                                                    __tmp128751)))
                                                (_main-id118715_
                                                 (let ((__tmp128753
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118483_)))
                                                       (__tmp128752
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128753
                                                    __tmp128752)))
                                                (_main-id118717_
                                                 (let ((__tmp128754
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118196_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118715_
                                                    __tmp128754)))
                                                (_g128755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118713_)))
                                                (_g128756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118717_)))
                                                (_new-kw-dispatch118721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118667_
                                                    _L118671_
                                                    _get-kws-id118713_)))
                                                (_new-get-kws118723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118668_
                                                    _L118670_
                                                    _main-id118717_))))
                                           (let ((__tmp128759
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118483_)))
                                                 (__tmp128758
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118713_)))
                                                 (__tmp128757
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118717_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128759
                                              '" => "
                                              __tmp128758
                                              '" => "
                                              __tmp128757))
                                           (let ((__tmp128760
                                                  (let ((__tmp128765
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126311126312_
                                                            _main-id118717_
                                                            _L118669_
                                                            '#f)))
                                                        (__tmp128761
                                                         (let ((__tmp128764
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126311126312_
                           _get-kws-id118713_
                           _new-get-kws118723_
                           '#f)))
                       (__tmp128762
                        (let ((__tmp128763
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126311126312_
                                  _L118483_
                                  _new-kw-dispatch118721_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128763 _rest118359_))))
                   (declare (not safe))
                   (cons __tmp128764 __tmp128762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128765
                                                          __tmp128761))))
                                             (declare (not safe))
                                             (_lp118336_
                                              __tmp128760
                                              _bind118339_))))
                                       _hd118544118662_
                                       _hd118541118654_
                                       _hd118538118646_
                                       _hd118535118638_
                                       _hd118517118590_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118497118550_ _g118498118553_)))))
                              (let ()
                                (declare (not safe))
                                (_g118497118550_ _g118498118553_)))
                          (let ()
                            (declare (not safe))
                            (_g118497118550_ _g118498118553_)))
                      (let ()
                        (declare (not safe))
                        (_g118497118550_ _g118498118553_)))
                  (let ()
                    (declare (not safe))
                    (_g118497118550_ _g118498118553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118497118550_
                                                     _g118498118553_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118497118550_
                                                 _g118498118553_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118497118550_
                                             _g118498118553_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118497118550_ _g118498118553_)))
                              (let ()
                                (declare (not safe))
                                (_g118497118550_ _g118498118553_)))))
                      (let ()
                        (declare (not safe))
                        (_g118497118550_ _g118498118553_)))))
              (let ()
                (declare (not safe))
                (_g118497118550_ _g118498118553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118497118550_
                                                 _g118498118553_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118497118550_ _g118498118553_)))))
                              (let ()
                                (declare (not safe))
                                (_g118497118550_ _g118498118553_)))))
                      (let ()
                        (declare (not safe))
                        (_g118497118550_ _g118498118553_)))
                  (let ()
                    (declare (not safe))
                    (_g118497118550_ _g118498118553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118497118550_
                                                     _g118498118553_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118497118550_
                                             _g118498118553_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118497118550_ _g118498118553_)))))
                          (let ()
                            (declare (not safe))
                            (_g118497118550_ _g118498118553_)))))
                  (let ()
                    (declare (not safe))
                    (_g118497118550_ _g118498118553_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118496118726_ _L118482_))))
                                         (___kont128246128247_
                                          (lambda (_L118433_ _L118434_)
                                            (let ((__tmp128766
                                                   (let ((__tmp128767
                                                          (let ((__tmp128768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128769
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118433_))))
                           (declare (not safe))
                           (cons __tmp128769 '()))))
                    (declare (not safe))
                    (cons _L118434_ __tmp128768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128767
                                                           _bind118339_))))
                                              (declare (not safe))
                                              (_lp118336_
                                               _rest118359_
                                               __tmp128766)))))
                                     (let* ((___match128313128314_
                                             (lambda (_e118393118458_
                                                      _hd118392118461_
                                                      _tl118391118463_
                                                      _e118396118466_
                                                      _hd118395118469_
                                                      _tl118394118471_
                                                      _e118399118474_
                                                      _hd118398118477_
                                                      _tl118397118479_)
                                               (let ((_L118482_
                                                      _hd118398118477_)
                                                     (_L118483_
                                                      _hd118395118469_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118483_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118482_)))
                                                     (___kont128244128245_
                                                      _L118482_
                                                      _L118483_)
                                                     (___kont128246128247_
                                                      _hd118398118477_
                                                      _hd118392118461_)))))
                                            (___match128291128292_
                                             (lambda (_e118382118734_
                                                      _hd118381118737_
                                                      _tl118380118739_
                                                      _e118385118742_
                                                      _hd118384118745_
                                                      _tl118383118747_
                                                      _e118388118750_
                                                      _hd118387118753_
                                                      _tl118386118755_)
                                               (let ((_L118758_
                                                      _hd118387118753_)
                                                     (_L118759_
                                                      _hd118384118745_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118759_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118758_)))
                                                     (___kont128242128243_
                                                      _L118758_
                                                      _L118759_)
                                                     (___match128313128314_
                                                      _e118382118734_
                                                      _hd118381118737_
                                                      _tl118380118739_
                                                      _e118385118742_
                                                      _hd118384118745_
                                                      _tl118383118747_
                                                      _e118388118750_
                                                      _hd118387118753_
                                                      _tl118386118755_)))))
                                            (___match128269128270_
                                             (lambda (_e118371118906_
                                                      _hd118370118909_
                                                      _tl118369118911_
                                                      _e118374118914_
                                                      _hd118373118917_
                                                      _tl118372118919_
                                                      _e118377118922_
                                                      _hd118376118925_
                                                      _tl118375118927_)
                                               (let ((_L118930_
                                                      _hd118376118925_)
                                                     (_L118931_
                                                      _hd118373118917_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118931_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118930_)))
                                                     (___kont128240128241_
                                                      _L118930_
                                                      _L118931_)
                                                     (___match128291128292_
                                                      _e118371118906_
                                                      _hd118370118909_
                                                      _tl118369118911_
                                                      _e118374118914_
                                                      _hd118373118917_
                                                      _tl118372118919_
                                                      _e118377118922_
                                                      _hd118376118925_
                                                      _tl118375118927_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128238128239_))
                                           (let ((_e118371118906_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128238128239_))))
                                             (let ((_tl118369118911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118371118906_)))
                                                   (_hd118370118909_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118371118906_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118370118909_))
                                                   (let ((_e118374118914_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118370118909_))))
                                                     (let ((_tl118372118919_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118374118914_)))
                                                           (_hd118373118917_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118374118914_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118372118919_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118369118911_))
                       (let ((_e118377118922_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118369118911_))))
                         (let ((_tl118375118927_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118377118922_)))
                               (_hd118376118925_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118377118922_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118375118927_))
                               (___match128269128270_
                                _e118371118906_
                                _hd118370118909_
                                _tl118369118911_
                                _e118374118914_
                                _hd118373118917_
                                _tl118372118919_
                                _e118377118922_
                                _hd118376118925_
                                _tl118375118927_)
                               (let ()
                                 (declare (not safe))
                                 (_g118365118412_)))))
                       (let () (declare (not safe)) (_g118365118412_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118369118911_))
                       (let ((_e118407118425_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118369118911_))))
                         (let ((_tl118405118430_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118407118425_)))
                               (_hd118406118428_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118407118425_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118405118430_))
                               (___kont128246128247_
                                _hd118406118428_
                                _hd118370118909_)
                               (let ()
                                 (declare (not safe))
                                 (_g118365118412_)))))
                       (let () (declare (not safe)) (_g118365118412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118369118911_))
                                                       (let ((_e118407118425_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118369118911_))))
                 (let ((_tl118405118430_
                        (let () (declare (not safe)) (##cdr _e118407118425_)))
                       (_hd118406118428_
                        (let () (declare (not safe)) (##car _e118407118425_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118405118430_))
                       (___kont128246128247_ _hd118406118428_ _hd118370118909_)
                       (let () (declare (not safe)) (_g118365118412_)))))
               (let () (declare (not safe)) (_g118365118412_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118365118412_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118340118348_))
                             (let ((_hd118345119026_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118340118348_)))
                                   (_tl118346119028_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118340118348_))))
                               (let* ((_hd119031_ _hd118345119026_)
                                      (_rest119033_ _tl118346119028_))
                                 (declare (not safe))
                                 (_K118344119023_ _rest119033_ _hd119031_)))
                             (let ()
                               (declare (not safe))
                               (_else118342118356_))))))))
          (let* ((___stx128330128331_ _stx118196_)
                 (_g118202118229_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128330128331_)))))
            (let ((___kont128332128333_
                   (lambda (_L118289_ _L118290_ _L118291_)
                     (let ((__tmp128771
                            (lambda ()
                              (let ((_hd118328_
                                     (let ((__tmp128772
                                            (let ((__tmp128773
                                                   (lambda (_g118320118323_
                                                            _g118321118325_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118320118323_
                                                             _g118321118325_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128773
                                                      '()
                                                      _L118290_))))
                                       (declare (not safe))
                                       (_compile-bindings118199_ __tmp128772)))
                                    (_body118329_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118289_))))
                                (let ((__tmp128774
                                       (let ((__tmp128775
                                              (let ((__tmp128776
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118329_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118328_
                                                      __tmp128776))))
                                         (declare (not safe))
                                         (cons _L118291_ __tmp128775))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128774
                                   _stx118196_)))))
                           (__tmp128770
                            (let ((__obj128395
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128395)
                              __obj128395)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128771
                        gx#current-expander-context
                        __tmp128770))))
                  (___kont128336128337_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118196_)))))
              (let ((___match128357128358_
                     (lambda (_e118209118241_
                              _hd118208118244_
                              _tl118207118246_
                              _e118212118249_
                              _hd118211118252_
                              _tl118210118254_
                              ___splice128334128335_
                              _target118213118257_
                              _tl118215118259_)
                       (letrec ((_loop118216118262_
                                 (lambda (_hd118214118265_ _bind118220118267_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118214118265_))
                                       (let ((_e118217118270_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118214118265_))))
                                         (let ((_lp-tl118219118275_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118217118270_)))
                                               (_lp-hd118218118273_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118217118270_))))
                                           (let ((__tmp128779
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118218118273_
                                                          _bind118220118267_))))
                                             (declare (not safe))
                                             (_loop118216118262_
                                              _lp-tl118219118275_
                                              __tmp128779))))
                                       (let ((_bind118221118278_
                                              (reverse _bind118220118267_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118210118254_))
                                             (let ((_e118224118281_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118210118254_))))
                                               (let ((_tl118222118286_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118224118281_)))
                                                     (_hd118223118284_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118224118281_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118222118286_))
                                                     (let ((_L118289_
                                                            _hd118223118284_)
                                                           (_L118290_
                                                            _bind118221118278_)
                                                           (_L118291_
                                                            _hd118208118244_))
                                                       (if (let ((__tmp128777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128778
                                 (lambda (_g118312118315_ _g118313118317_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118312118315_ _g118313118317_)))))
                            (declare (not safe))
                            (foldr1 __tmp128778 '() _L118290_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128777))
                   (___kont128332128333_ _L118289_ _L118290_ _L118291_)
                   (___kont128336128337_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128336128337_))))
                                             (___kont128336128337_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118216118262_ _target118213118257_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128330128331_))
                    (let ((_e118209118241_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128330128331_))))
                      (let ((_tl118207118246_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118209118241_)))
                            (_hd118208118244_
                             (let ()
                               (declare (not safe))
                               (##car _e118209118241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118207118246_))
                            (let ((_e118212118249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118207118246_))))
                              (let ((_tl118210118254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118212118249_)))
                                    (_hd118211118252_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118212118249_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118211118252_))
                                    (let ((___splice128334128335_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118211118252_
                                              '0))))
                                      (let ((_tl118215118259_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128334128335_
                                                '1)))
                                            (_target118213118257_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128334128335_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118215118259_))
                                            (___match128357128358_
                                             _e118209118241_
                                             _hd118208118244_
                                             _tl118207118246_
                                             _e118212118249_
                                             _hd118211118252_
                                             _tl118210118254_
                                             ___splice128334128335_
                                             _target118213118257_
                                             _tl118215118259_)
                                            (___kont128336128337_))))
                                    (___kont128336128337_))))
                            (___kont128336128337_))))
                    (___kont128336128337_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118114_)
        (let* ((___stx128360128361_ _bind118114_)
               (_g118117118134_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128360128361_)))))
          (let ((___kont128362128363_
                 (lambda (_L118170_ _L118171_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118171_))
                       (let ((_$e118187_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118170_))))
                         (if _$e118187_
                             _$e118187_
                             (let ((_$e118190_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118170_))))
                               (if _$e118190_
                                   _$e118190_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118170_))))))
                       '#f)))
                (___kont128364128365_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128360128361_))
                (let ((_e118123118146_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128360128361_))))
                  (let ((_tl118121118151_
                         (let () (declare (not safe)) (##cdr _e118123118146_)))
                        (_hd118122118149_
                         (let ()
                           (declare (not safe))
                           (##car _e118123118146_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118122118149_))
                        (let ((_e118126118154_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118122118149_))))
                          (let ((_tl118124118159_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118126118154_)))
                                (_hd118125118157_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118126118154_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118124118159_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118121118151_))
                                    (let ((_e118129118162_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118121118151_))))
                                      (let ((_tl118127118167_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118129118162_)))
                                            (_hd118128118165_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118129118162_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118127118167_))
                                            (___kont128362128363_
                                             _hd118128118165_
                                             _hd118125118157_)
                                            (___kont128364128365_))))
                                    (___kont128364128365_))
                                (___kont128364128365_))))
                        (___kont128364128365_))))
                (___kont128364128365_))))))))
