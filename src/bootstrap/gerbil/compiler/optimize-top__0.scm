(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708337967)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl242517_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp248596 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl242517_ __tmp248596))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242517_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242517_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242517_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242517_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl242517_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx242500_ . _args242502_)
        (let ((__tmp248598
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242502_)
                     (gxc#compile-e__0 _stx242500_)
                     (let ((_arg1242507_ (car _args242502_))
                           (_rest242509_ (cdr _args242502_)))
                       (if (null? _rest242509_)
                           (gxc#compile-e__1 _stx242500_ _arg1242507_)
                           (let ((_arg2242512_ (car _rest242509_))
                                 (_rest242514_ (cdr _rest242509_)))
                             (if (null? _rest242514_)
                                 (gxc#compile-e__2
                                  _stx242500_
                                  _arg1242507_
                                  _arg2242512_)
                                 (apply gxc#compile-e
                                        _stx242500_
                                        _arg1242507_
                                        _arg2242512_
                                        _rest242514_))))))))
              (__tmp248597 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp248598
           gxc#current-compile-methods
           __tmp248597))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl242497_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp248599 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl242497_ __tmp248599))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242497_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242497_ '%#call gxc#basic-expression-type-call%))
           _tbl242497_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx242480_ . _args242482_)
        (let ((__tmp248601
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242482_)
                     (gxc#compile-e__0 _stx242480_)
                     (let ((_arg1242487_ (car _args242482_))
                           (_rest242489_ (cdr _args242482_)))
                       (if (null? _rest242489_)
                           (gxc#compile-e__1 _stx242480_ _arg1242487_)
                           (let ((_arg2242492_ (car _rest242489_))
                                 (_rest242494_ (cdr _rest242489_)))
                             (if (null? _rest242494_)
                                 (gxc#compile-e__2
                                  _stx242480_
                                  _arg1242487_
                                  _arg2242492_)
                                 (apply gxc#compile-e
                                        _stx242480_
                                        _arg1242487_
                                        _arg2242492_
                                        _rest242494_))))))))
              (__tmp248600 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp248601
           gxc#current-compile-methods
           __tmp248600))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl242477_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp248602 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl242477_ __tmp248602))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242477_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242477_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242477_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242477_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242477_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242477_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242477_ '%#set! gxc#collect-body-setq%))
           _tbl242477_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx242460_ . _args242462_)
        (let ((__tmp248604
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242462_)
                     (gxc#compile-e__0 _stx242460_)
                     (let ((_arg1242467_ (car _args242462_))
                           (_rest242469_ (cdr _args242462_)))
                       (if (null? _rest242469_)
                           (gxc#compile-e__1 _stx242460_ _arg1242467_)
                           (let ((_arg2242472_ (car _rest242469_))
                                 (_rest242474_ (cdr _rest242469_)))
                             (if (null? _rest242474_)
                                 (gxc#compile-e__2
                                  _stx242460_
                                  _arg1242467_
                                  _arg2242472_)
                                 (apply gxc#compile-e
                                        _stx242460_
                                        _arg1242467_
                                        _arg2242472_
                                        _rest242474_))))))))
              (__tmp248603 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp248604
           gxc#current-compile-methods
           __tmp248603))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl242457_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp248605 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl242457_ __tmp248605))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242457_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242457_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242457_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242457_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242457_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242457_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242457_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242457_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl242457_ '%#ref gxc#basic-expression-type-ref%))
           _tbl242457_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx242440_ . _args242442_)
        (let ((__tmp248607
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242442_)
                     (gxc#compile-e__0 _stx242440_)
                     (let ((_arg1242447_ (car _args242442_))
                           (_rest242449_ (cdr _args242442_)))
                       (if (null? _rest242449_)
                           (gxc#compile-e__1 _stx242440_ _arg1242447_)
                           (let ((_arg2242452_ (car _rest242449_))
                                 (_rest242454_ (cdr _rest242449_)))
                             (if (null? _rest242454_)
                                 (gxc#compile-e__2
                                  _stx242440_
                                  _arg1242447_
                                  _arg2242452_)
                                 (apply gxc#compile-e
                                        _stx242440_
                                        _arg1242447_
                                        _arg2242452_
                                        _rest242454_))))))))
              (__tmp248606 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp248607
           gxc#current-compile-methods
           __tmp248606))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl242437_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp248608 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl242437_ __tmp248608))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242437_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242437_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242437_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl242437_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl242437_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx242420_ . _args242422_)
        (let ((__tmp248610
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242422_)
                     (gxc#compile-e__0 _stx242420_)
                     (let ((_arg1242427_ (car _args242422_))
                           (_rest242429_ (cdr _args242422_)))
                       (if (null? _rest242429_)
                           (gxc#compile-e__1 _stx242420_ _arg1242427_)
                           (let ((_arg2242432_ (car _rest242429_))
                                 (_rest242434_ (cdr _rest242429_)))
                             (if (null? _rest242434_)
                                 (gxc#compile-e__2
                                  _stx242420_
                                  _arg1242427_
                                  _arg2242432_)
                                 (apply gxc#compile-e
                                        _stx242420_
                                        _arg1242427_
                                        _arg2242432_
                                        _rest242434_))))))))
              (__tmp248609 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp248610
           gxc#current-compile-methods
           __tmp248609))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx242323_)
        (let* ((___stx246516246517_ _stx242323_)
               (_g242326242346_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246516246517_)))))
          (let ((___kont246518246519_
                 (lambda (_L242390_ _L242391_)
                   (let ((_sym242409_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242391_))))
                     (if (let ((__tmp248611 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp248611 _sym242409_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym242409_))
                         (let ((_type242410242412_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L242390_))))
                           (if _type242410242412_
                               (let ((_type242415_ _type242410242412_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym242409_
                                  _type242415_))
                               '#f))))))
                (___kont246520246521_ (lambda () '#!void)))
            (let ((___match246549246550_
                   (lambda (_e242332242358_
                            _hd242331242361_
                            _tl242330242363_
                            _e242335242366_
                            _hd242334242369_
                            _tl242333242371_
                            _e242338242374_
                            _hd242337242377_
                            _tl242336242379_
                            _e242341242382_
                            _hd242340242385_
                            _tl242339242387_)
                     (let ((_L242390_ _hd242340242385_)
                           (_L242391_ _hd242337242377_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L242391_))
                           (___kont246518246519_ _L242390_ _L242391_)
                           (___kont246520246521_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246516246517_))
                  (let ((_e242332242358_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246516246517_))))
                    (let ((_tl242330242363_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242332242358_)))
                          (_hd242331242361_
                           (let ()
                             (declare (not safe))
                             (##car _e242332242358_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242330242363_))
                          (let ((_e242335242366_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242330242363_))))
                            (let ((_tl242333242371_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242335242366_)))
                                  (_hd242334242369_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242335242366_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242334242369_))
                                  (let ((_e242338242374_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242334242369_))))
                                    (let ((_tl242336242379_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242338242374_)))
                                          (_hd242337242377_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242338242374_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242336242379_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242333242371_))
                                              (let ((_e242341242382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242333242371_))))
                                                (let ((_tl242339242387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242341242382_)))
                                                      (_hd242340242385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242341242382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242339242387_))
                                                      (___match246549246550_
                                                       _e242332242358_
                                                       _hd242331242361_
                                                       _tl242330242363_
                                                       _e242335242366_
                                                       _hd242334242369_
                                                       _tl242333242371_
                                                       _e242338242374_
                                                       _hd242337242377_
                                                       _tl242336242379_
                                                       _e242341242382_
                                                       _hd242340242385_
                                                       _tl242339242387_)
                                                      (___kont246520246521_))))
                                              (___kont246520246521_))
                                          (___kont246520246521_))))
                                  (___kont246520246521_))))
                          (___kont246520246521_))))
                  (___kont246520246521_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx242179_)
        (let* ((___stx246552246553_ _stx242179_)
               (_g242182242213_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246552246553_)))))
          (let ((___kont246554246555_
                 (lambda (_L242295_ _L242296_)
                   (let ((_sym242312_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L242296_))))
                     (if (let ((__tmp248612 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp248612 _sym242312_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym242312_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym242312_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym242312_))
                             (let ((_type242313242315_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L242295_))))
                               (if _type242313242315_
                                   (let ((_type242318_ _type242313242315_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym242312_
                                      _type242318_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L242295_)))))
                (___kont246556246557_
                 (lambda (_L242242_ _L242243_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L242242_)))))
            (let ((___match246585246586_
                   (lambda (_e242188242263_
                            _hd242187242266_
                            _tl242186242268_
                            _e242191242271_
                            _hd242190242274_
                            _tl242189242276_
                            _e242194242279_
                            _hd242193242282_
                            _tl242192242284_
                            _e242197242287_
                            _hd242196242290_
                            _tl242195242292_)
                     (let ((_L242295_ _hd242196242290_)
                           (_L242296_ _hd242193242282_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L242296_))
                           (___kont246554246555_ _L242295_ _L242296_)
                           (___kont246556246557_
                            _hd242196242290_
                            _hd242190242274_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246552246553_))
                  (let ((_e242188242263_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246552246553_))))
                    (let ((_tl242186242268_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242188242263_)))
                          (_hd242187242266_
                           (let ()
                             (declare (not safe))
                             (##car _e242188242263_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242186242268_))
                          (let ((_e242191242271_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242186242268_))))
                            (let ((_tl242189242276_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242191242271_)))
                                  (_hd242190242274_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242191242271_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242190242274_))
                                  (let ((_e242194242279_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242190242274_))))
                                    (let ((_tl242192242284_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242194242279_)))
                                          (_hd242193242282_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242194242279_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242192242284_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242189242276_))
                                              (let ((_e242197242287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242189242276_))))
                                                (let ((_tl242195242292_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242197242287_)))
                                                      (_hd242196242290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242197242287_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242195242292_))
                                                      (___match246585246586_
                                                       _e242188242263_
                                                       _hd242187242266_
                                                       _tl242186242268_
                                                       _e242191242271_
                                                       _hd242190242274_
                                                       _tl242189242276_
                                                       _e242194242279_
                                                       _hd242193242282_
                                                       _tl242192242284_
                                                       _e242197242287_
                                                       _hd242196242290_
                                                       _tl242195242292_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242182242213_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242182242213_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242189242276_))
                                              (let ((_e242208242234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242189242276_))))
                                                (let ((_tl242206242239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242208242234_)))
                                                      (_hd242207242237_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242208242234_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242206242239_))
                                                      (___kont246556246557_
                                                       _hd242207242237_
                                                       _hd242190242274_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g242182242213_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g242182242213_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl242189242276_))
                                      (let ((_e242208242234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl242189242276_))))
                                        (let ((_tl242206242239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242208242234_)))
                                              (_hd242207242237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242208242234_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242206242239_))
                                              (___kont246556246557_
                                               _hd242207242237_
                                               _hd242190242274_)
                                              (let ()
                                                (declare (not safe))
                                                (_g242182242213_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g242182242213_))))))
                          (let () (declare (not safe)) (_g242182242213_)))))
                  (let () (declare (not safe)) (_g242182242213_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx241964_)
        (letrec ((_collect-e241966_
                  (lambda (_hd242123_ _expr242124_)
                    (let* ((___stx246608246609_ _hd242123_)
                           (_g242127242137_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx246608246609_)))))
                      (let ((___kont246610246611_
                             (lambda (_L242157_)
                               (let ((_sym242168_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L242157_))))
                                 (if (let ((__tmp248613
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp248613 _sym242168_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym242168_))
                                     (let ((_type242169242171_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr242124_))))
                                       (if _type242169242171_
                                           (let ((_type242174_
                                                  _type242169242171_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym242168_
                                              _type242174_
                                              '#t))
                                           '#f))))))
                            (___kont246612246613_ (lambda () '#!void)))
                        (let ((___match246621246622_
                               (lambda (_e242132242149_
                                        _hd242131242152_
                                        _tl242130242154_)
                                 (let ((_L242157_ _hd242131242152_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L242157_))
                                       (___kont246610246611_ _L242157_)
                                       (___kont246612246613_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx246608246609_))
                              (let ((_e242132242149_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx246608246609_))))
                                (let ((_tl242130242154_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242132242149_)))
                                      (_hd242131242152_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242132242149_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242130242154_))
                                      (___match246621246622_
                                       _e242132242149_
                                       _hd242131242152_
                                       _tl242130242154_)
                                      (___kont246612246613_))))
                              (___kont246612246613_))))))))
          (let* ((_g241968242003_
                  (lambda (_g241969242000_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g241969242000_))))
                 (_g241967242120_
                  (lambda (_g241969242006_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g241969242006_))
                        (let ((_e241975242008_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g241969242006_))))
                          (let ((_hd241974242011_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241975242008_)))
                                (_tl241973242013_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241975242008_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241973242013_))
                                (let ((_e241978242016_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241973242013_))))
                                  (let ((_hd241977242019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241978242016_)))
                                        (_tl241976242021_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241978242016_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd241977242019_))
                                        (let ((_g248614_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd241977242019_
                                                  '0))))
                                          (begin
                                            (let ((_g248615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g248614_)
                                                         (##vector-length
                                                          _g248614_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g248615_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g248615_)))
                                            (let ((_target241979242024_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g248614_
                                                      0)))
                                                  (_tl241981242026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g248614_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241981242026_))
                                                  (letrec ((_loop241982242029_
                                                            (lambda (_hd241980242032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr241986242034_
                             _hd241987242036_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241980242032_))
                          (let ((_e241983242039_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241980242032_))))
                            (let ((_lp-hd241984242042_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241983242039_)))
                                  (_lp-tl241985242044_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241983242039_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd241984242042_))
                                  (let ((_e241992242047_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd241984242042_))))
                                    (let ((_hd241991242050_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241992242047_)))
                                          (_tl241990242052_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241992242047_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241990242052_))
                                          (let ((_e241995242055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241990242052_))))
                                            (let ((_hd241994242058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241995242055_)))
                                                  (_tl241993242060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241995242055_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241993242060_))
                                                  (let ((__tmp248620
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd241994242058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr241986242034_)))
                (__tmp248619
                 (let ()
                   (declare (not safe))
                   (cons _hd241991242050_ _hd241987242036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop241982242029_
                                                     _lp-tl241985242044_
                                                     __tmp248620
                                                     __tmp248619))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241968242003_
                                                     _g241969242006_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g241968242003_
                                             _g241969242006_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g241968242003_ _g241969242006_)))))
                          (let ((_expr241988242063_
                                 (reverse _expr241986242034_))
                                (_hd241989242065_ (reverse _hd241987242036_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241976242021_))
                                (let ((_e241998242068_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241976242021_))))
                                  (let ((_hd241997242071_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241998242068_)))
                                        (_tl241996242073_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241998242068_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241996242073_))
                                        ((lambda (_L242076_
                                                  _L242077_
                                                  _L242078_)
                                           (for-each
                                            _collect-e241966_
                                            (let ((__tmp248616
                                                   (lambda (_g242098242101_
                                                            _g242099242103_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g242098242101_
                                                             _g242099242103_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp248616
                                                      '()
                                                      _L242078_))
                                            (let ((__tmp248617
                                                   (lambda (_g242105242108_
                                                            _g242106242110_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g242105242108_
                                                             _g242106242110_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp248617
                                                      '()
                                                      _L242077_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp248618
                                                   (lambda (_g242112242115_
                                                            _g242113242117_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g242112242115_
                                                             _g242113242117_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp248618
                                                      '()
                                                      _L242077_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L242076_)))
                                         _hd241997242071_
                                         _expr241988242063_
                                         _hd241989242065_)
                                        (let ()
                                          (declare (not safe))
                                          (_g241968242003_ _g241969242006_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g241968242003_ _g241969242006_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop241982242029_
                                                       _target241979242024_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241968242003_
                                                     _g241969242006_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g241968242003_ _g241969242006_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g241968242003_ _g241969242006_)))))
                        (let ()
                          (declare (not safe))
                          (_g241968242003_ _g241969242006_))))))
            (declare (not safe))
            (_g241967242120_ _stx241964_)))))
    (define gxc#collect-type-call%
      (lambda (_stx241456_)
        (let* ((___stx246624246625_ _stx241456_)
               (_g241460241575_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246624246625_)))))
          (let ((___kont246626246627_
                 (lambda (_L241914_ _L241915_ _L241916_ _L241917_ _L241918_)
                   (let ((__tmp248624
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L241917_)))
                         (__tmp248623
                          (let () (declare (not safe)) (gx#stx-e _L241916_)))
                         (__tmp248622
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L241915_)))
                         (__tmp248621
                          (let () (declare (not safe)) (gx#stx-e _L241914_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp248624
                      __tmp248623
                      __tmp248622
                      __tmp248621))))
                (___kont246628246629_
                 (lambda (_L241742_ _L241743_ _L241744_ _L241745_)
                   (let ((__tmp248627
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L241744_)))
                         (__tmp248626
                          (let () (declare (not safe)) (gx#stx-e _L241743_)))
                         (__tmp248625
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L241742_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp248627
                      __tmp248626
                      __tmp248625
                      '#f))))
                (___kont246630246631_
                 (lambda (_L241612_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp248628
                           (lambda (_g241625241628_ _g241626241630_)
                             (let ()
                               (declare (not safe))
                               (cons _g241625241628_ _g241626241630_)))))
                      (declare (not safe))
                      (foldr1 __tmp248628 '() _L241612_))))))
            (let* ((___match246881246882_
                    (lambda (_e241561241580_
                             _hd241560241583_
                             _tl241559241585_
                             ___splice246632246633_
                             _target241562241588_
                             _tl241564241590_)
                      (letrec ((_loop241565241593_
                                (lambda (_hd241563241596_ _expr241569241598_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd241563241596_))
                                      (let ((_e241566241601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd241563241596_))))
                                        (let ((_lp-tl241568241606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241566241601_)))
                                              (_lp-hd241567241604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241566241601_))))
                                          (let ((__tmp248629
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd241567241604_
                                                         _expr241569241598_))))
                                            (declare (not safe))
                                            (_loop241565241593_
                                             _lp-tl241568241606_
                                             __tmp248629))))
                                      (let ((_expr241570241609_
                                             (reverse _expr241569241598_)))
                                        (___kont246630246631_
                                         _expr241570241609_))))))
                        (let ()
                          (declare (not safe))
                          (_loop241565241593_ _target241562241588_ '())))))
                   (___match246761246762_
                    (lambda (_e241469241786_
                             _hd241468241789_
                             _tl241467241791_
                             _e241472241794_
                             _hd241471241797_
                             _tl241470241799_
                             _e241475241802_
                             _hd241474241805_
                             _tl241473241807_
                             _e241478241810_
                             _hd241477241813_
                             _tl241476241815_
                             _e241481241818_
                             _hd241480241821_
                             _tl241479241823_
                             _e241484241826_
                             _hd241483241829_
                             _tl241482241831_
                             _e241487241834_
                             _hd241486241837_
                             _tl241485241839_
                             _e241490241842_
                             _hd241489241845_
                             _tl241488241847_
                             _e241493241850_
                             _hd241492241853_
                             _tl241491241855_
                             _e241496241858_
                             _hd241495241861_
                             _tl241494241863_
                             _e241499241866_
                             _hd241498241869_
                             _tl241497241871_
                             _e241502241874_
                             _hd241501241877_
                             _tl241500241879_
                             _e241505241882_
                             _hd241504241885_
                             _tl241503241887_
                             _e241508241890_
                             _hd241507241893_
                             _tl241506241895_
                             _e241511241898_
                             _hd241510241901_
                             _tl241509241903_
                             _e241514241906_
                             _hd241513241909_
                             _tl241512241911_)
                      (let ((_L241914_ _hd241513241909_)
                            (_L241915_ _hd241504241885_)
                            (_L241916_ _hd241495241861_)
                            (_L241917_ _hd241486241837_)
                            (_L241918_ _hd241477241813_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L241918_
                               'bind-method!))
                            (___kont246626246627_
                             _L241914_
                             _L241915_
                             _L241916_
                             _L241917_
                             _L241918_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl241467241791_))
                                (let ((___splice246632246633_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl241467241791_
                                          '0))))
                                  (let ((_tl241564241590_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice246632246633_
                                            '1)))
                                        (_target241562241588_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice246632246633_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241564241590_))
                                        (___match246881246882_
                                         _e241469241786_
                                         _hd241468241789_
                                         _tl241467241791_
                                         ___splice246632246633_
                                         _target241562241588_
                                         _tl241564241590_)
                                        (let ()
                                          (declare (not safe))
                                          (_g241460241575_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g241460241575_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246624246625_))
                  (let ((_e241469241786_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246624246625_))))
                    (let ((_tl241467241791_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241469241786_)))
                          (_hd241468241789_
                           (let ()
                             (declare (not safe))
                             (##car _e241469241786_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl241467241791_))
                          (let ((_e241472241794_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl241467241791_))))
                            (let ((_tl241470241799_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241472241794_)))
                                  (_hd241471241797_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241472241794_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd241471241797_))
                                  (let ((_e241475241802_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd241471241797_))))
                                    (let ((_tl241473241807_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241475241802_)))
                                          (_hd241474241805_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241475241802_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd241474241805_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd241474241805_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241473241807_))
                                                  (let ((_e241478241810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241473241807_))))
                                                    (let ((_tl241476241815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241478241810_)))
                                                          (_hd241477241813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241478241810_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241476241815_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl241470241799_))
                      (let ((_e241481241818_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl241470241799_))))
                        (let ((_tl241479241823_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241481241818_)))
                              (_hd241480241821_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241481241818_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd241480241821_))
                              (let ((_e241484241826_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd241480241821_))))
                                (let ((_tl241482241831_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241484241826_)))
                                      (_hd241483241829_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241484241826_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd241483241829_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd241483241829_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241482241831_))
                                              (let ((_e241487241834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241482241831_))))
                                                (let ((_tl241485241839_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241487241834_)))
                                                      (_hd241486241837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241487241834_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241485241839_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl241479241823_))
                                                          (let ((_e241490241842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl241479241823_))))
                    (let ((_tl241488241847_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241490241842_)))
                          (_hd241489241845_
                           (let ()
                             (declare (not safe))
                             (##car _e241490241842_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd241489241845_))
                          (let ((_e241493241850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd241489241845_))))
                            (let ((_tl241491241855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e241493241850_)))
                                  (_hd241492241853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e241493241850_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd241492241853_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd241492241853_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl241491241855_))
                                          (let ((_e241496241858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl241491241855_))))
                                            (let ((_tl241494241863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e241496241858_)))
                                                  (_hd241495241861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e241496241858_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241494241863_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241488241847_))
                                                      (let ((_e241499241866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241488241847_))))
                (let ((_tl241497241871_
                       (let () (declare (not safe)) (##cdr _e241499241866_)))
                      (_hd241498241869_
                       (let () (declare (not safe)) (##car _e241499241866_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241498241869_))
                      (let ((_e241502241874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241498241869_))))
                        (let ((_tl241500241879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241502241874_)))
                              (_hd241501241877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241502241874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd241501241877_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd241501241877_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241500241879_))
                                      (let ((_e241505241882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241500241879_))))
                                        (let ((_tl241503241887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241505241882_)))
                                              (_hd241504241885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241505241882_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241503241887_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl241497241871_))
                                                  (let ((_e241508241890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl241497241871_))))
                                                    (let ((_tl241506241895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e241508241890_)))
                                                          (_hd241507241893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e241508241890_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd241507241893_))
                                                          (let ((_e241511241898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd241507241893_))))
                    (let ((_tl241509241903_
                           (let ()
                             (declare (not safe))
                             (##cdr _e241511241898_)))
                          (_hd241510241901_
                           (let ()
                             (declare (not safe))
                             (##car _e241511241898_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd241510241901_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd241510241901_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl241509241903_))
                                  (let ((_e241514241906_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl241509241903_))))
                                    (let ((_tl241512241911_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e241514241906_)))
                                          (_hd241513241909_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e241514241906_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241512241911_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241506241895_))
                                              (___match246761246762_
                                               _e241469241786_
                                               _hd241468241789_
                                               _tl241467241791_
                                               _e241472241794_
                                               _hd241471241797_
                                               _tl241470241799_
                                               _e241475241802_
                                               _hd241474241805_
                                               _tl241473241807_
                                               _e241478241810_
                                               _hd241477241813_
                                               _tl241476241815_
                                               _e241481241818_
                                               _hd241480241821_
                                               _tl241479241823_
                                               _e241484241826_
                                               _hd241483241829_
                                               _tl241482241831_
                                               _e241487241834_
                                               _hd241486241837_
                                               _tl241485241839_
                                               _e241490241842_
                                               _hd241489241845_
                                               _tl241488241847_
                                               _e241493241850_
                                               _hd241492241853_
                                               _tl241491241855_
                                               _e241496241858_
                                               _hd241495241861_
                                               _tl241494241863_
                                               _e241499241866_
                                               _hd241498241869_
                                               _tl241497241871_
                                               _e241502241874_
                                               _hd241501241877_
                                               _tl241500241879_
                                               _e241505241882_
                                               _hd241504241885_
                                               _tl241503241887_
                                               _e241508241890_
                                               _hd241507241893_
                                               _tl241506241895_
                                               _e241511241898_
                                               _hd241510241901_
                                               _tl241509241903_
                                               _e241514241906_
                                               _hd241513241909_
                                               _tl241512241911_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl241467241791_))
                                                  (let ((___splice246632246633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl241467241791_
                                                            '0))))
                                                    (let ((_tl241564241590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '1)))
                                                          (_target241562241588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241564241590_))
                                                          (___match246881246882_
                                                           _e241469241786_
                                                           _hd241468241789_
                                                           _tl241467241791_
                                                           ___splice246632246633_
                                                           _target241562241588_
                                                           _tl241564241590_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g241460241575_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl241467241791_))
                                              (let ((___splice246632246633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl241467241791_
                                                        '0))))
                                                (let ((_tl241564241590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '1)))
                                                      (_target241562241588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241564241590_))
                                                      (___match246881246882_
                                                       _e241469241786_
                                                       _hd241468241789_
                                                       _tl241467241791_
                                                       ___splice246632246633_
                                                       _target241562241588_
                                                       _tl241564241590_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g241460241575_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl241467241791_))
                                      (let ((___splice246632246633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl241467241791_
                                                '0))))
                                        (let ((_tl241564241590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '1)))
                                              (_target241562241588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241564241590_))
                                              (___match246881246882_
                                               _e241469241786_
                                               _hd241468241789_
                                               _tl241467241791_
                                               ___splice246632246633_
                                               _target241562241588_
                                               _tl241564241590_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl241467241791_))
                                  (let ((___splice246632246633_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl241467241791_
                                            '0))))
                                    (let ((_tl241564241590_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice246632246633_
                                              '1)))
                                          (_target241562241588_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice246632246633_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241564241590_))
                                          (___match246881246882_
                                           _e241469241786_
                                           _hd241468241789_
                                           _tl241467241791_
                                           ___splice246632246633_
                                           _target241562241588_
                                           _tl241564241590_)
                                          (let ()
                                            (declare (not safe))
                                            (_g241460241575_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g241460241575_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl241467241791_))
                              (let ((___splice246632246633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl241467241791_
                                        '0))))
                                (let ((_tl241564241590_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice246632246633_
                                          '1)))
                                      (_target241562241588_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice246632246633_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241564241590_))
                                      (___match246881246882_
                                       _e241469241786_
                                       _hd241468241789_
                                       _tl241467241791_
                                       ___splice246632246633_
                                       _target241562241588_
                                       _tl241564241590_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_)))))
                              (let ()
                                (declare (not safe))
                                (_g241460241575_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl241467241791_))
                      (let ((___splice246632246633_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl241467241791_ '0))))
                        (let ((_tl241564241590_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '1)))
                              (_target241562241588_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl241564241590_))
                              (___match246881246882_
                               _e241469241786_
                               _hd241468241789_
                               _tl241467241791_
                               ___splice246632246633_
                               _target241562241588_
                               _tl241564241590_)
                              (let ()
                                (declare (not safe))
                                (_g241460241575_)))))
                      (let () (declare (not safe)) (_g241460241575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241497241871_))
                                                      (if (let ((__tmp248630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp248630 'bind-method!))
                  (let ((_L241742_ _hd241504241885_)
                        (_L241743_ _hd241495241861_)
                        (_L241744_ _hd241486241837_)
                        (_L241745_ _hd241477241813_))
                    (___kont246628246629_
                     _L241742_
                     _L241743_
                     _L241744_
                     _L241745_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl241467241791_))
                      (let ((___splice246632246633_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl241467241791_ '0))))
                        (let ((_tl241564241590_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '1)))
                              (_target241562241588_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl241564241590_))
                              (___match246881246882_
                               _e241469241786_
                               _hd241468241789_
                               _tl241467241791_
                               ___splice246632246633_
                               _target241562241588_
                               _tl241564241590_)
                              (let ()
                                (declare (not safe))
                                (_g241460241575_)))))
                      (let () (declare (not safe)) (_g241460241575_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl241467241791_))
                  (let ((___splice246632246633_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl241467241791_ '0))))
                    (let ((_tl241564241590_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice246632246633_ '1)))
                          (_target241562241588_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice246632246633_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241564241590_))
                          (___match246881246882_
                           _e241469241786_
                           _hd241468241789_
                           _tl241467241791_
                           ___splice246632246633_
                           _target241562241588_
                           _tl241564241590_)
                          (let () (declare (not safe)) (_g241460241575_)))))
                  (let () (declare (not safe)) (_g241460241575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl241467241791_))
                                                  (let ((___splice246632246633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl241467241791_
                                                            '0))))
                                                    (let ((_tl241564241590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '1)))
                                                          (_target241562241588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241564241590_))
                                                          (___match246881246882_
                                                           _e241469241786_
                                                           _hd241468241789_
                                                           _tl241467241791_
                                                           ___splice246632246633_
                                                           _target241562241588_
                                                           _tl241564241590_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g241460241575_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl241467241791_))
                                          (let ((___splice246632246633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl241467241791_
                                                    '0))))
                                            (let ((_tl241564241590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice246632246633_
                                                      '1)))
                                                  (_target241562241588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice246632246633_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241564241590_))
                                                  (___match246881246882_
                                                   _e241469241786_
                                                   _hd241468241789_
                                                   _tl241467241791_
                                                   ___splice246632246633_
                                                   _target241562241588_
                                                   _tl241564241590_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g241460241575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl241467241791_))
                                      (let ((___splice246632246633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl241467241791_
                                                '0))))
                                        (let ((_tl241564241590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '1)))
                                              (_target241562241588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241564241590_))
                                              (___match246881246882_
                                               _e241469241786_
                                               _hd241468241789_
                                               _tl241467241791_
                                               ___splice246632246633_
                                               _target241562241588_
                                               _tl241564241590_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl241467241791_))
                                  (let ((___splice246632246633_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl241467241791_
                                            '0))))
                                    (let ((_tl241564241590_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice246632246633_
                                              '1)))
                                          (_target241562241588_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice246632246633_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241564241590_))
                                          (___match246881246882_
                                           _e241469241786_
                                           _hd241468241789_
                                           _tl241467241791_
                                           ___splice246632246633_
                                           _target241562241588_
                                           _tl241564241590_)
                                          (let ()
                                            (declare (not safe))
                                            (_g241460241575_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g241460241575_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl241467241791_))
                          (let ((___splice246632246633_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl241467241791_
                                    '0))))
                            (let ((_tl241564241590_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice246632246633_ '1)))
                                  (_target241562241588_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice246632246633_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241564241590_))
                                  (___match246881246882_
                                   _e241469241786_
                                   _hd241468241789_
                                   _tl241467241791_
                                   ___splice246632246633_
                                   _target241562241588_
                                   _tl241564241590_)
                                  (let ()
                                    (declare (not safe))
                                    (_g241460241575_)))))
                          (let () (declare (not safe)) (_g241460241575_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl241467241791_))
                  (let ((___splice246632246633_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl241467241791_ '0))))
                    (let ((_tl241564241590_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice246632246633_ '1)))
                          (_target241562241588_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice246632246633_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241564241590_))
                          (___match246881246882_
                           _e241469241786_
                           _hd241468241789_
                           _tl241467241791_
                           ___splice246632246633_
                           _target241562241588_
                           _tl241564241590_)
                          (let () (declare (not safe)) (_g241460241575_)))))
                  (let () (declare (not safe)) (_g241460241575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl241467241791_))
                                                      (let ((___splice246632246633_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl241467241791_ '0))))
                (let ((_tl241564241590_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246632246633_ '1)))
                      (_target241562241588_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246632246633_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl241564241590_))
                      (___match246881246882_
                       _e241469241786_
                       _hd241468241789_
                       _tl241467241791_
                       ___splice246632246633_
                       _target241562241588_
                       _tl241564241590_)
                      (let () (declare (not safe)) (_g241460241575_)))))
              (let () (declare (not safe)) (_g241460241575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl241467241791_))
                                              (let ((___splice246632246633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl241467241791_
                                                        '0))))
                                                (let ((_tl241564241590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '1)))
                                                      (_target241562241588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241564241590_))
                                                      (___match246881246882_
                                                       _e241469241786_
                                                       _hd241468241789_
                                                       _tl241467241791_
                                                       ___splice246632246633_
                                                       _target241562241588_
                                                       _tl241564241590_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g241460241575_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl241467241791_))
                                          (let ((___splice246632246633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl241467241791_
                                                    '0))))
                                            (let ((_tl241564241590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice246632246633_
                                                      '1)))
                                                  (_target241562241588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice246632246633_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241564241590_))
                                                  (___match246881246882_
                                                   _e241469241786_
                                                   _hd241468241789_
                                                   _tl241467241791_
                                                   ___splice246632246633_
                                                   _target241562241588_
                                                   _tl241564241590_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g241460241575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl241467241791_))
                                      (let ((___splice246632246633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl241467241791_
                                                '0))))
                                        (let ((_tl241564241590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '1)))
                                              (_target241562241588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241564241590_))
                                              (___match246881246882_
                                               _e241469241786_
                                               _hd241468241789_
                                               _tl241467241791_
                                               ___splice246632246633_
                                               _target241562241588_
                                               _tl241564241590_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl241467241791_))
                              (let ((___splice246632246633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl241467241791_
                                        '0))))
                                (let ((_tl241564241590_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice246632246633_
                                          '1)))
                                      (_target241562241588_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice246632246633_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241564241590_))
                                      (___match246881246882_
                                       _e241469241786_
                                       _hd241468241789_
                                       _tl241467241791_
                                       ___splice246632246633_
                                       _target241562241588_
                                       _tl241564241590_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_)))))
                              (let ()
                                (declare (not safe))
                                (_g241460241575_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl241467241791_))
                      (let ((___splice246632246633_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl241467241791_ '0))))
                        (let ((_tl241564241590_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '1)))
                              (_target241562241588_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl241564241590_))
                              (___match246881246882_
                               _e241469241786_
                               _hd241468241789_
                               _tl241467241791_
                               ___splice246632246633_
                               _target241562241588_
                               _tl241564241590_)
                              (let ()
                                (declare (not safe))
                                (_g241460241575_)))))
                      (let () (declare (not safe)) (_g241460241575_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl241467241791_))
                  (let ((___splice246632246633_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl241467241791_ '0))))
                    (let ((_tl241564241590_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice246632246633_ '1)))
                          (_target241562241588_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice246632246633_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl241564241590_))
                          (___match246881246882_
                           _e241469241786_
                           _hd241468241789_
                           _tl241467241791_
                           ___splice246632246633_
                           _target241562241588_
                           _tl241564241590_)
                          (let () (declare (not safe)) (_g241460241575_)))))
                  (let () (declare (not safe)) (_g241460241575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl241467241791_))
                                                  (let ((___splice246632246633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl241467241791_
                                                            '0))))
                                                    (let ((_tl241564241590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '1)))
                                                          (_target241562241588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241564241590_))
                                                          (___match246881246882_
                                                           _e241469241786_
                                                           _hd241468241789_
                                                           _tl241467241791_
                                                           ___splice246632246633_
                                                           _target241562241588_
                                                           _tl241564241590_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g241460241575_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl241467241791_))
                                              (let ((___splice246632246633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl241467241791_
                                                        '0))))
                                                (let ((_tl241564241590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '1)))
                                                      (_target241562241588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241564241590_))
                                                      (___match246881246882_
                                                       _e241469241786_
                                                       _hd241468241789_
                                                       _tl241467241791_
                                                       ___splice246632246633_
                                                       _target241562241588_
                                                       _tl241564241590_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g241460241575_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl241467241791_))
                                          (let ((___splice246632246633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl241467241791_
                                                    '0))))
                                            (let ((_tl241564241590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice246632246633_
                                                      '1)))
                                                  (_target241562241588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice246632246633_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl241564241590_))
                                                  (___match246881246882_
                                                   _e241469241786_
                                                   _hd241468241789_
                                                   _tl241467241791_
                                                   ___splice246632246633_
                                                   _target241562241588_
                                                   _tl241564241590_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g241460241575_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl241467241791_))
                                  (let ((___splice246632246633_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl241467241791_
                                            '0))))
                                    (let ((_tl241564241590_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice246632246633_
                                              '1)))
                                          (_target241562241588_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice246632246633_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl241564241590_))
                                          (___match246881246882_
                                           _e241469241786_
                                           _hd241468241789_
                                           _tl241467241791_
                                           ___splice246632246633_
                                           _target241562241588_
                                           _tl241564241590_)
                                          (let ()
                                            (declare (not safe))
                                            (_g241460241575_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g241460241575_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl241467241791_))
                          (let ((___splice246632246633_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl241467241791_
                                    '0))))
                            (let ((_tl241564241590_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice246632246633_ '1)))
                                  (_target241562241588_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice246632246633_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl241564241590_))
                                  (___match246881246882_
                                   _e241469241786_
                                   _hd241468241789_
                                   _tl241467241791_
                                   ___splice246632246633_
                                   _target241562241588_
                                   _tl241564241590_)
                                  (let ()
                                    (declare (not safe))
                                    (_g241460241575_)))))
                          (let () (declare (not safe)) (_g241460241575_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl241467241791_))
                      (let ((___splice246632246633_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl241467241791_ '0))))
                        (let ((_tl241564241590_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '1)))
                              (_target241562241588_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice246632246633_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl241564241590_))
                              (___match246881246882_
                               _e241469241786_
                               _hd241468241789_
                               _tl241467241791_
                               ___splice246632246633_
                               _target241562241588_
                               _tl241564241590_)
                              (let ()
                                (declare (not safe))
                                (_g241460241575_)))))
                      (let () (declare (not safe)) (_g241460241575_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl241467241791_))
                                                      (let ((___splice246632246633_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl241467241791_ '0))))
                (let ((_tl241564241590_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246632246633_ '1)))
                      (_target241562241588_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246632246633_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl241564241590_))
                      (___match246881246882_
                       _e241469241786_
                       _hd241468241789_
                       _tl241467241791_
                       ___splice246632246633_
                       _target241562241588_
                       _tl241564241590_)
                      (let () (declare (not safe)) (_g241460241575_)))))
              (let () (declare (not safe)) (_g241460241575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl241467241791_))
                                                  (let ((___splice246632246633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl241467241791_
                                                            '0))))
                                                    (let ((_tl241564241590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '1)))
                                                          (_target241562241588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246632246633_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl241564241590_))
                                                          (___match246881246882_
                                                           _e241469241786_
                                                           _hd241468241789_
                                                           _tl241467241791_
                                                           ___splice246632246633_
                                                           _target241562241588_
                                                           _tl241564241590_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g241460241575_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g241460241575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl241467241791_))
                                              (let ((___splice246632246633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl241467241791_
                                                        '0))))
                                                (let ((_tl241564241590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '1)))
                                                      (_target241562241588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice246632246633_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl241564241590_))
                                                      (___match246881246882_
                                                       _e241469241786_
                                                       _hd241468241789_
                                                       _tl241467241791_
                                                       ___splice246632246633_
                                                       _target241562241588_
                                                       _tl241564241590_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g241460241575_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl241467241791_))
                                      (let ((___splice246632246633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl241467241791_
                                                '0))))
                                        (let ((_tl241564241590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '1)))
                                              (_target241562241588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246632246633_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241564241590_))
                                              (___match246881246882_
                                               _e241469241786_
                                               _hd241468241789_
                                               _tl241467241791_
                                               ___splice246632246633_
                                               _target241562241588_
                                               _tl241564241590_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241460241575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl241467241791_))
                              (let ((___splice246632246633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl241467241791_
                                        '0))))
                                (let ((_tl241564241590_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice246632246633_
                                          '1)))
                                      (_target241562241588_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice246632246633_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241564241590_))
                                      (___match246881246882_
                                       _e241469241786_
                                       _hd241468241789_
                                       _tl241467241791_
                                       ___splice246632246633_
                                       _target241562241588_
                                       _tl241564241590_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241460241575_)))))
                              (let ()
                                (declare (not safe))
                                (_g241460241575_))))))
                  (let () (declare (not safe)) (_g241460241575_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx241396_)
        (let* ((___stx246884246885_ _stx241396_)
               (_g241399241412_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246884246885_)))))
          (let ((___kont246886246887_
                 (lambda (_L241440_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L241440_))))
                (___kont246888246889_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx246884246885_))
                (let ((_e241404241424_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx246884246885_))))
                  (let ((_tl241402241429_
                         (let () (declare (not safe)) (##cdr _e241404241424_)))
                        (_hd241403241427_
                         (let ()
                           (declare (not safe))
                           (##car _e241404241424_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241402241429_))
                        (let ((_e241407241432_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241402241429_))))
                          (let ((_tl241405241437_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241407241432_)))
                                (_hd241406241435_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241407241432_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl241405241437_))
                                (___kont246886246887_ _hd241406241435_)
                                (___kont246888246889_))))
                        (___kont246888246889_))))
                (___kont246888246889_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx241276_)
        (let* ((_g241278241295_
                (lambda (_g241279241292_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241279241292_))))
               (_g241277241393_
                (lambda (_g241279241298_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241279241298_))
                      (let ((_e241284241300_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241279241298_))))
                        (let ((_hd241283241303_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241284241300_)))
                              (_tl241282241305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241284241300_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241282241305_))
                              (let ((_e241287241308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241282241305_))))
                                (let ((_hd241286241311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241287241308_)))
                                      (_tl241285241313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241287241308_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241285241313_))
                                      (let ((_e241290241316_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241285241313_))))
                                        (let ((_hd241289241319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241290241316_)))
                                              (_tl241288241321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241290241316_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241288241321_))
                                              ((lambda (_L241324_ _L241325_)
                                                 (let* ((___stx246906246907_
                                                         _L241325_)
                                                        (_g241341241352_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx246906246907_)))))
                                                   (let ((___kont246908246909_
                                                          (lambda (_L241372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L241373_)
                    (let ((_$e241385_
                           (let ((__tmp248631
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L241373_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp248631))))
                      (if _$e241385_
                          ((lambda (_type-e241388_)
                             (_type-e241388_ _stx241276_ _L241325_))
                           _$e241385_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L241324_))))))
                 (___kont246910246911_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L241324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match246917246918_
                                                            (lambda (_e241347241364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd241346241367_
                             _tl241345241369_)
                      (let ((_L241372_ _tl241345241369_)
                            (_L241373_ _hd241346241367_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L241373_))
                            (___kont246908246909_ _L241372_ _L241373_)
                            (___kont246910246911_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx246906246907_))
                   (let ((_e241347241364_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx246906246907_))))
                     (let ((_tl241345241369_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241347241364_)))
                           (_hd241346241367_
                            (let ()
                              (declare (not safe))
                              (##car _e241347241364_))))
                       (___match246917246918_
                        _e241347241364_
                        _hd241346241367_
                        _tl241345241369_)))
                   (___kont246910246911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd241289241319_
                                               _hd241286241311_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241278241295_
                                                 _g241279241298_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241278241295_ _g241279241298_)))))
                              (let ()
                                (declare (not safe))
                                (_g241278241295_ _g241279241298_)))))
                      (let ()
                        (declare (not safe))
                        (_g241278241295_ _g241279241298_))))))
          (declare (not safe))
          (_g241277241393_ _stx241276_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx241120_ _ann241121_)
        (let* ((_g241123241160_
                (lambda (_g241124241157_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241124241157_))))
               (_g241122241273_
                (lambda (_g241124241163_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241124241163_))
                      (let ((_e241134241165_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241124241163_))))
                        (let ((_hd241133241168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241134241165_)))
                              (_tl241132241170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241134241165_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241132241170_))
                              (let ((_e241137241173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241132241170_))))
                                (let ((_hd241136241176_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241137241173_)))
                                      (_tl241135241178_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241137241173_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241135241178_))
                                      (let ((_e241140241181_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241135241178_))))
                                        (let ((_hd241139241184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241140241181_)))
                                              (_tl241138241186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241140241181_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl241138241186_))
                                              (let ((_e241143241189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl241138241186_))))
                                                (let ((_hd241142241192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e241143241189_)))
                                                      (_tl241141241194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e241143241189_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl241141241194_))
                                                      (let ((_e241146241197_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl241141241194_))))
                (let ((_hd241145241200_
                       (let () (declare (not safe)) (##car _e241146241197_)))
                      (_tl241144241202_
                       (let () (declare (not safe)) (##cdr _e241146241197_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl241144241202_))
                      (let ((_e241149241205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl241144241202_))))
                        (let ((_hd241148241208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241149241205_)))
                              (_tl241147241210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241149241205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241147241210_))
                              (let ((_e241152241213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241147241210_))))
                                (let ((_hd241151241216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241152241213_)))
                                      (_tl241150241218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241152241213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241150241218_))
                                      (let ((_e241155241221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241150241218_))))
                                        (let ((_hd241154241224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241155241221_)))
                                              (_tl241153241226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241155241221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241153241226_))
                                              ((lambda (_L241229_
                                                        _L241230_
                                                        _L241231_
                                                        _L241232_
                                                        _L241233_
                                                        _L241234_
                                                        _L241235_)
                                                 (let ((_type-id241265_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L241235_)))
                                                       (_super241266_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L241234_)))
                                                       (_slots241267_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L241233_)))
                                                       (_ctor-method241268_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L241232_)))
                                                       (_struct?241269_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L241231_)))
                                                       (_final?241270_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L241230_)))
                                                       (_metaclass241271_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L241229_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L241229_))
                                                            '#f)))
                                                   (let ((__obj248589
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
                                                      __obj248589
                                                      _type-id241265_
                                                      _super241266_
                                                      _slots241267_
                                                      _ctor-method241268_
                                                      _struct?241269_
                                                      _final?241270_
                                                      _metaclass241271_)
                                                     __obj248589)))
                                               _hd241154241224_
                                               _hd241151241216_
                                               _hd241148241208_
                                               _hd241145241200_
                                               _hd241142241192_
                                               _hd241139241184_
                                               _hd241136241176_)
                                              (let ()
                                                (declare (not safe))
                                                (_g241123241160_
                                                 _g241124241163_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241123241160_ _g241124241163_)))))
                              (let ()
                                (declare (not safe))
                                (_g241123241160_ _g241124241163_)))))
                      (let ()
                        (declare (not safe))
                        (_g241123241160_ _g241124241163_)))))
              (let ()
                (declare (not safe))
                (_g241123241160_ _g241124241163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g241123241160_
                                                 _g241124241163_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241123241160_ _g241124241163_)))))
                              (let ()
                                (declare (not safe))
                                (_g241123241160_ _g241124241163_)))))
                      (let ()
                        (declare (not safe))
                        (_g241123241160_ _g241124241163_))))))
          (declare (not safe))
          (_g241122241273_ _ann241121_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx241068_ _ann241069_)
        (let* ((_g241071241084_
                (lambda (_g241072241081_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241072241081_))))
               (_g241070241117_
                (lambda (_g241072241087_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241072241087_))
                      (let ((_e241076241089_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241072241087_))))
                        (let ((_hd241075241092_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241076241089_)))
                              (_tl241074241094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241076241089_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241074241094_))
                              (let ((_e241079241097_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241074241094_))))
                                (let ((_hd241078241100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241079241097_)))
                                      (_tl241077241102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241079241097_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241077241102_))
                                      ((lambda (_L241105_)
                                         (let ((__tmp248632
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L241105_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp248632)))
                                       _hd241078241100_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241071241084_ _g241072241087_)))))
                              (let ()
                                (declare (not safe))
                                (_g241071241084_ _g241072241087_)))))
                      (let ()
                        (declare (not safe))
                        (_g241071241084_ _g241072241087_))))))
          (declare (not safe))
          (_g241070241117_ _ann241069_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx241016_ _ann241017_)
        (let* ((_g241019241032_
                (lambda (_g241020241029_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g241020241029_))))
               (_g241018241065_
                (lambda (_g241020241035_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g241020241035_))
                      (let ((_e241024241037_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g241020241035_))))
                        (let ((_hd241023241040_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241024241037_)))
                              (_tl241022241042_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241024241037_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl241022241042_))
                              (let ((_e241027241045_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl241022241042_))))
                                (let ((_hd241026241048_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241027241045_)))
                                      (_tl241025241050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241027241045_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241025241050_))
                                      ((lambda (_L241053_)
                                         (let ((__tmp248633
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L241053_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp248633)))
                                       _hd241026241048_)
                                      (let ()
                                        (declare (not safe))
                                        (_g241019241032_ _g241020241035_)))))
                              (let ()
                                (declare (not safe))
                                (_g241019241032_ _g241020241035_)))))
                      (let ()
                        (declare (not safe))
                        (_g241019241032_ _g241020241035_))))))
          (declare (not safe))
          (_g241018241065_ _ann241017_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx240932_ _ann240933_)
        (let* ((_g240935240956_
                (lambda (_g240936240953_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240936240953_))))
               (_g240934241013_
                (lambda (_g240936240959_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240936240959_))
                      (let ((_e240942240961_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240936240959_))))
                        (let ((_hd240941240964_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240942240961_)))
                              (_tl240940240966_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240942240961_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240940240966_))
                              (let ((_e240945240969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240940240966_))))
                                (let ((_hd240944240972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240945240969_)))
                                      (_tl240943240974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240945240969_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240943240974_))
                                      (let ((_e240948240977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240943240974_))))
                                        (let ((_hd240947240980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240948240977_)))
                                              (_tl240946240982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240948240977_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240946240982_))
                                              (let ((_e240951240985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240946240982_))))
                                                (let ((_hd240950240988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240951240985_)))
                                                      (_tl240949240990_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240951240985_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240949240990_))
                                                      ((lambda (_L240993_
                                                                _L240994_
                                                                _L240995_)
                                                         (let ((__tmp248636
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L240995_)))
                       (__tmp248635
                        (let () (declare (not safe)) (gx#stx-e _L240994_)))
                       (__tmp248634
                        (let () (declare (not safe)) (gx#stx-e _L240993_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp248636
                    __tmp248635
                    __tmp248634)))
               _hd240950240988_
               _hd240947240980_
               _hd240944240972_)
              (let ()
                (declare (not safe))
                (_g240935240956_ _g240936240959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g240935240956_
                                                 _g240936240959_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240935240956_ _g240936240959_)))))
                              (let ()
                                (declare (not safe))
                                (_g240935240956_ _g240936240959_)))))
                      (let ()
                        (declare (not safe))
                        (_g240935240956_ _g240936240959_))))))
          (declare (not safe))
          (_g240934241013_ _ann240933_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx240848_ _ann240849_)
        (let* ((_g240851240872_
                (lambda (_g240852240869_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g240852240869_))))
               (_g240850240929_
                (lambda (_g240852240875_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g240852240875_))
                      (let ((_e240858240877_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g240852240875_))))
                        (let ((_hd240857240880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240858240877_)))
                              (_tl240856240882_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240858240877_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240856240882_))
                              (let ((_e240861240885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240856240882_))))
                                (let ((_hd240860240888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240861240885_)))
                                      (_tl240859240890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240861240885_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240859240890_))
                                      (let ((_e240864240893_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240859240890_))))
                                        (let ((_hd240863240896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240864240893_)))
                                              (_tl240862240898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240864240893_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240862240898_))
                                              (let ((_e240867240901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240862240898_))))
                                                (let ((_hd240866240904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240867240901_)))
                                                      (_tl240865240906_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240867240901_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240865240906_))
                                                      ((lambda (_L240909_
                                                                _L240910_
                                                                _L240911_)
                                                         (let ((__tmp248639
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L240911_)))
                       (__tmp248638
                        (let () (declare (not safe)) (gx#stx-e _L240910_)))
                       (__tmp248637
                        (let () (declare (not safe)) (gx#stx-e _L240909_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp248639
                    __tmp248638
                    __tmp248637)))
               _hd240866240904_
               _hd240863240896_
               _hd240860240888_)
              (let ()
                (declare (not safe))
                (_g240851240872_ _g240852240875_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g240851240872_
                                                 _g240852240875_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240851240872_ _g240852240875_)))))
                              (let ()
                                (declare (not safe))
                                (_g240851240872_ _g240852240875_)))))
                      (let ()
                        (declare (not safe))
                        (_g240851240872_ _g240852240875_))))))
          (declare (not safe))
          (_g240850240929_ _ann240849_))))
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
      (lambda (_stx239968_)
        (let* ((___stx246920246921_ _stx239968_)
               (_g239974240170_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246920246921_)))))
          (let ((___kont246922246923_
                 (lambda (_L240836_)
                   (let ((__obj248590
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj248590
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L240836_))
                      '#f)
                     __obj248590)))
                (___kont246924246925_
                 (lambda (_L240763_
                          _L240764_
                          _L240765_
                          _L240766_
                          _L240767_
                          _L240768_)
                   (let* ((_tab240818_
                           (let () (declare (not safe)) (gx#stx-e _L240765_)))
                          (_keys240820_
                           (if _tab240818_
                               (let ((__tmp248640 (vector->list _tab240818_)))
                                 (declare (not safe))
                                 (filter values __tmp248640))
                               '#f)))
                     (let ((__tmp248641
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L240764_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys240820_
                        __tmp248641)))))
                (___kont246926246927_
                 (lambda (_L240496_
                          _L240497_
                          _L240498_
                          _L240499_
                          _L240500_
                          _L240501_
                          _L240502_
                          _L240503_
                          _L240504_
                          _L240505_)
                   (let ((__tmp248643
                          (map gx#stx-e
                               (let ((__tmp248644
                                      (lambda (_g240598240601_ _g240599240603_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g240598240601_
                                                _g240599240603_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp248644 '() _L240498_))))
                         (__tmp248642
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L240502_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp248643
                      __tmp248642))))
                (___kont246930246931_
                 (lambda (_L240206_)
                   (let ((__obj248591
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj248591
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L240206_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L240206_)))
                     __obj248591)))
                (___kont246932246933_
                 (lambda (_L240183_)
                   (let ((__obj248592
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj248592
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L240183_))
                      '#f)
                     __obj248592))))
            (let* ((___match247239247240_
                    (lambda (_e240161240198_ _hd240160240201_ _tl240159240203_)
                      (let ((_L240206_ _tl240159240203_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L240206_))
                            (___kont246930246931_ _L240206_)
                            (___kont246932246933_ _tl240159240203_)))))
                   (___match247233247234_
                    (lambda (_e240055240220_
                             _hd240054240223_
                             _tl240053240225_
                             _e240058240228_
                             _hd240057240231_
                             _tl240056240233_
                             _e240061240236_
                             _hd240060240239_
                             _tl240059240241_
                             _e240064240244_
                             _hd240063240247_
                             _tl240062240249_
                             _e240067240252_
                             _hd240066240255_
                             _tl240065240257_
                             _e240070240260_
                             _hd240069240263_
                             _tl240068240265_
                             _e240073240268_
                             _hd240072240271_
                             _tl240071240273_
                             _e240076240276_
                             _hd240075240279_
                             _tl240074240281_
                             _e240079240284_
                             _hd240078240287_
                             _tl240077240289_
                             _e240082240292_
                             _hd240081240295_
                             _tl240080240297_
                             _e240085240300_
                             _hd240084240303_
                             _tl240083240305_
                             _e240088240308_
                             _hd240087240311_
                             _tl240086240313_
                             _e240091240316_
                             _hd240090240319_
                             _tl240089240321_
                             _e240094240324_
                             _hd240093240327_
                             _tl240092240329_
                             ___splice246928246929_
                             _target240095240332_
                             _tl240097240334_
                             _e240112240337_
                             _hd240111240340_
                             _tl240110240342_
                             _e240115240345_
                             _hd240114240348_
                             _tl240113240350_
                             _e240118240353_
                             _hd240117240356_
                             _tl240116240358_)
                      (letrec ((_loop240098240361_
                                (lambda (_hd240096240364_
                                         _-absent-value240102240366_
                                         _key240103240368_
                                         _-xkwvar240104240370_
                                         _-hash-ref240105240372_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd240096240364_))
                                      (let ((_e240099240375_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd240096240364_))))
                                        (let ((_lp-tl240101240380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240099240375_)))
                                              (_lp-hd240100240378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240099240375_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd240100240378_))
                                              (let ((_e240121240383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd240100240378_))))
                                                (let ((_tl240119240388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240121240383_)))
                                                      (_hd240120240386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240121240383_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd240120240386_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd240120240386_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl240119240388_))
                      (let ((_e240124240391_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl240119240388_))))
                        (let ((_tl240122240396_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240124240391_)))
                              (_hd240123240394_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240124240391_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd240123240394_))
                              (let ((_e240127240399_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd240123240394_))))
                                (let ((_tl240125240404_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240127240399_)))
                                      (_hd240126240402_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240127240399_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd240126240402_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd240126240402_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240125240404_))
                                              (let ((_e240130240407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240125240404_))))
                                                (let ((_tl240128240412_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240130240407_)))
                                                      (_hd240129240410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240130240407_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240128240412_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240122240396_))
                                                          (let ((_e240133240415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240122240396_))))
                    (let ((_tl240131240420_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240133240415_)))
                          (_hd240132240418_
                           (let ()
                             (declare (not safe))
                             (##car _e240133240415_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240132240418_))
                          (let ((_e240136240423_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240132240418_))))
                            (let ((_tl240134240428_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240136240423_)))
                                  (_hd240135240426_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240136240423_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240135240426_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd240135240426_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240134240428_))
                                          (let ((_e240139240431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240134240428_))))
                                            (let ((_tl240137240436_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240139240431_)))
                                                  (_hd240138240434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240139240431_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240137240436_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240131240420_))
                                                      (let ((_e240142240439_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240131240420_))))
                (let ((_tl240140240444_
                       (let () (declare (not safe)) (##cdr _e240142240439_)))
                      (_hd240141240442_
                       (let () (declare (not safe)) (##car _e240142240439_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240141240442_))
                      (let ((_e240145240447_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240141240442_))))
                        (let ((_tl240143240452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240145240447_)))
                              (_hd240144240450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240145240447_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240144240450_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd240144240450_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240143240452_))
                                      (let ((_e240148240455_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240143240452_))))
                                        (let ((_tl240146240460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240148240455_)))
                                              (_hd240147240458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240148240455_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240146240460_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240140240444_))
                                                  (let ((_e240151240463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240140240444_))))
                                                    (let ((_tl240149240468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240151240463_)))
                                                          (_hd240150240466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240151240463_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240150240466_))
                                                          (let ((_e240154240471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240150240466_))))
                    (let ((_tl240152240476_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240154240471_)))
                          (_hd240153240474_
                           (let ()
                             (declare (not safe))
                             (##car _e240154240471_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240153240474_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd240153240474_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240152240476_))
                                  (let ((_e240157240479_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240152240476_))))
                                    (let ((_tl240155240484_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240157240479_)))
                                          (_hd240156240482_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240157240479_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240155240484_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240149240468_))
                                              (let ((__tmp248659
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd240156240482_
                                                             _-absent-value240102240366_)))
                                                    (__tmp248658
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd240147240458_
                                                             _key240103240368_)))
                                                    (__tmp248657
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd240138240434_
                                                             _-xkwvar240104240370_)))
                                                    (__tmp248656
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd240129240410_
                                                             _-hash-ref240105240372_))))
                                                (declare (not safe))
                                                (_loop240098240361_
                                                 _lp-tl240101240380_
                                                 __tmp248659
                                                 __tmp248658
                                                 __tmp248657
                                                 __tmp248656))
                                              (___match247239247240_
                                               _e240055240220_
                                               _hd240054240223_
                                               _tl240053240225_))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))
                              (___match247239247240_
                               _e240055240220_
                               _hd240054240223_
                               _tl240053240225_))
                          (___match247239247240_
                           _e240055240220_
                           _hd240054240223_
                           _tl240053240225_))))
                  (___match247239247240_
                   _e240055240220_
                   _hd240054240223_
                   _tl240053240225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))
                                              (___match247239247240_
                                               _e240055240220_
                                               _hd240054240223_
                                               _tl240053240225_))))
                                      (___match247239247240_
                                       _e240055240220_
                                       _hd240054240223_
                                       _tl240053240225_))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))
                              (___match247239247240_
                               _e240055240220_
                               _hd240054240223_
                               _tl240053240225_))))
                      (___match247239247240_
                       _e240055240220_
                       _hd240054240223_
                       _tl240053240225_))))
              (___match247239247240_
               _e240055240220_
               _hd240054240223_
               _tl240053240225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))
                                      (___match247239247240_
                                       _e240055240220_
                                       _hd240054240223_
                                       _tl240053240225_))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))))
                          (___match247239247240_
                           _e240055240220_
                           _hd240054240223_
                           _tl240053240225_))))
                  (___match247239247240_
                   _e240055240220_
                   _hd240054240223_
                   _tl240053240225_))
              (___match247239247240_
               _e240055240220_
               _hd240054240223_
               _tl240053240225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match247239247240_
                                               _e240055240220_
                                               _hd240054240223_
                                               _tl240053240225_))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))
                                      (___match247239247240_
                                       _e240055240220_
                                       _hd240054240223_
                                       _tl240053240225_))))
                              (___match247239247240_
                               _e240055240220_
                               _hd240054240223_
                               _tl240053240225_))))
                      (___match247239247240_
                       _e240055240220_
                       _hd240054240223_
                       _tl240053240225_))
                  (___match247239247240_
                   _e240055240220_
                   _hd240054240223_
                   _tl240053240225_))
              (___match247239247240_
               _e240055240220_
               _hd240054240223_
               _tl240053240225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match247239247240_
                                               _e240055240220_
                                               _hd240054240223_
                                               _tl240053240225_))))
                                      (let ((_-hash-ref240109240493_
                                             (reverse _-hash-ref240105240372_))
                                            (_-xkwvar240108240491_
                                             (reverse _-xkwvar240104240370_))
                                            (_key240107240489_
                                             (reverse _key240103240368_))
                                            (_-absent-value240106240487_
                                             (reverse _-absent-value240102240366_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl240062240249_))
                                            (let ((_L240496_ _hd240117240356_)
                                                  (_L240497_
                                                   _-absent-value240106240487_)
                                                  (_L240498_ _key240107240489_)
                                                  (_L240499_
                                                   _-xkwvar240108240491_)
                                                  (_L240500_
                                                   _-hash-ref240109240493_)
                                                  (_L240501_ _hd240093240327_)
                                                  (_L240502_ _hd240084240303_)
                                                  (_L240503_ _hd240075240279_)
                                                  (_L240504_ _tl240059240241_)
                                                  (_L240505_ _hd240060240239_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L240505_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L240504_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L240503_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L240505_
                                                          _L240501_))
                                                       (let ((__tmp248654
                                                              (let ((__tmp248655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g240558240561_ _g240559240563_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g240558240561_ _g240559240563_)))))
                        (declare (not safe))
                        (foldr1 __tmp248655 '() _L240498_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp248654))
               (let ((__tmp248653
                      (lambda (_g240565240567_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g240565240567_
                           'hash-ref))))
                     (__tmp248651
                      (let ((__tmp248652
                             (lambda (_g240569240572_ _g240570240574_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g240569240572_ _g240570240574_)))))
                        (declare (not safe))
                        (foldr1 __tmp248652 '() _L240500_))))
                 (declare (not safe))
                 (andmap1 __tmp248653 __tmp248651))
               (let ((__tmp248650
                      (lambda (_g240576240578_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g240576240578_
                           'absent-value))))
                     (__tmp248648
                      (let ((__tmp248649
                             (lambda (_g240580240583_ _g240581240585_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g240580240583_ _g240581240585_)))))
                        (declare (not safe))
                        (foldr1 __tmp248649 '() _L240497_))))
                 (declare (not safe))
                 (andmap1 __tmp248650 __tmp248648))
               (let ((__tmp248647
                      (lambda (_g240587240589_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g240587240589_ _L240505_))))
                     (__tmp248645
                      (let ((__tmp248646
                             (lambda (_g240591240594_ _g240592240596_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g240591240594_ _g240592240596_)))))
                        (declare (not safe))
                        (foldr1 __tmp248646 '() _L240499_))))
                 (declare (not safe))
                 (andmap1 __tmp248647 __tmp248645)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246926246927_
                                                   _L240496_
                                                   _L240497_
                                                   _L240498_
                                                   _L240499_
                                                   _L240500_
                                                   _L240501_
                                                   _L240502_
                                                   _L240503_
                                                   _L240504_
                                                   _L240505_)
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_)))
                                            (___match247239247240_
                                             _e240055240220_
                                             _hd240054240223_
                                             _tl240053240225_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop240098240361_
                           _target240095240332_
                           '()
                           '()
                           '()
                           '())))))
                   (___match247105247106_
                    (lambda (_e240055240220_
                             _hd240054240223_
                             _tl240053240225_
                             _e240058240228_
                             _hd240057240231_
                             _tl240056240233_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240057240231_))
                          (let ((_e240061240236_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240057240231_))))
                            (let ((_tl240059240241_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240061240236_)))
                                  (_hd240060240239_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240061240236_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240056240233_))
                                  (let ((_e240064240244_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240056240233_))))
                                    (let ((_tl240062240249_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240064240244_)))
                                          (_hd240063240247_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240064240244_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd240063240247_))
                                          (let ((_e240067240252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd240063240247_))))
                                            (let ((_tl240065240257_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240067240252_)))
                                                  (_hd240066240255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240067240252_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd240066240255_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd240066240255_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240065240257_))
                                                          (let ((_e240070240260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240065240257_))))
                    (let ((_tl240068240265_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240070240260_)))
                          (_hd240069240263_
                           (let ()
                             (declare (not safe))
                             (##car _e240070240260_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240069240263_))
                          (let ((_e240073240268_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240069240263_))))
                            (let ((_tl240071240273_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240073240268_)))
                                  (_hd240072240271_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240073240268_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240072240271_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd240072240271_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240071240273_))
                                          (let ((_e240076240276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240071240273_))))
                                            (let ((_tl240074240281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240076240276_)))
                                                  (_hd240075240279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240076240276_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240074240281_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl240068240265_))
                                                      (let ((_e240079240284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl240068240265_))))
                (let ((_tl240077240289_
                       (let () (declare (not safe)) (##cdr _e240079240284_)))
                      (_hd240078240287_
                       (let () (declare (not safe)) (##car _e240079240284_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240078240287_))
                      (let ((_e240082240292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240078240287_))))
                        (let ((_tl240080240297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240082240292_)))
                              (_hd240081240295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240082240292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240081240295_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240081240295_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240080240297_))
                                      (let ((_e240085240300_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240080240297_))))
                                        (let ((_tl240083240305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240085240300_)))
                                              (_hd240084240303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240085240300_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240083240305_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240077240289_))
                                                  (let ((_e240088240308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240077240289_))))
                                                    (let ((_tl240086240313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240088240308_)))
                                                          (_hd240087240311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240088240308_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240087240311_))
                                                          (let ((_e240091240316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240087240311_))))
                    (let ((_tl240089240321_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240091240316_)))
                          (_hd240090240319_
                           (let ()
                             (declare (not safe))
                             (##car _e240091240316_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240090240319_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd240090240319_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240089240321_))
                                  (let ((_e240094240324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240089240321_))))
                                    (let ((_tl240092240329_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240094240324_)))
                                          (_hd240093240327_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240094240324_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240092240329_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl240086240313_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl240086240313_))
                                                        '1)
                                                  (let ((___splice246928246929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl240086240313_
                                                            '1))))
                                                    (let ((_tl240097240334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246928246929_
                                                              '1)))
                                                          (_target240095240332_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice246928246929_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl240097240334_))
                                                          (let ((_e240112240337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl240097240334_))))
                    (let ((_tl240110240342_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240112240337_)))
                          (_hd240111240340_
                           (let ()
                             (declare (not safe))
                             (##car _e240112240337_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd240111240340_))
                          (let ((_e240115240345_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd240111240340_))))
                            (let ((_tl240113240350_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240115240345_)))
                                  (_hd240114240348_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240115240345_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240114240348_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd240114240348_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240113240350_))
                                          (let ((_e240118240353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240113240350_))))
                                            (let ((_tl240116240358_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240118240353_)))
                                                  (_hd240117240356_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240118240353_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240116240358_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl240110240342_))
                                                      (___match247233247234_
                                                       _e240055240220_
                                                       _hd240054240223_
                                                       _tl240053240225_
                                                       _e240058240228_
                                                       _hd240057240231_
                                                       _tl240056240233_
                                                       _e240061240236_
                                                       _hd240060240239_
                                                       _tl240059240241_
                                                       _e240064240244_
                                                       _hd240063240247_
                                                       _tl240062240249_
                                                       _e240067240252_
                                                       _hd240066240255_
                                                       _tl240065240257_
                                                       _e240070240260_
                                                       _hd240069240263_
                                                       _tl240068240265_
                                                       _e240073240268_
                                                       _hd240072240271_
                                                       _tl240071240273_
                                                       _e240076240276_
                                                       _hd240075240279_
                                                       _tl240074240281_
                                                       _e240079240284_
                                                       _hd240078240287_
                                                       _tl240077240289_
                                                       _e240082240292_
                                                       _hd240081240295_
                                                       _tl240080240297_
                                                       _e240085240300_
                                                       _hd240084240303_
                                                       _tl240083240305_
                                                       _e240088240308_
                                                       _hd240087240311_
                                                       _tl240086240313_
                                                       _e240091240316_
                                                       _hd240090240319_
                                                       _tl240089240321_
                                                       _e240094240324_
                                                       _hd240093240327_
                                                       _tl240092240329_
                                                       ___splice246928246929_
                                                       _target240095240332_
                                                       _tl240097240334_
                                                       _e240112240337_
                                                       _hd240111240340_
                                                       _tl240110240342_
                                                       _e240115240345_
                                                       _hd240114240348_
                                                       _tl240113240350_
                                                       _e240118240353_
                                                       _hd240117240356_
                                                       _tl240116240358_)
                                                      (___match247239247240_
                                                       _e240055240220_
                                                       _hd240054240223_
                                                       _tl240053240225_))
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))
                                      (___match247239247240_
                                       _e240055240220_
                                       _hd240054240223_
                                       _tl240053240225_))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))))
                          (___match247239247240_
                           _e240055240220_
                           _hd240054240223_
                           _tl240053240225_))))
                  (___match247239247240_
                   _e240055240220_
                   _hd240054240223_
                   _tl240053240225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))
                                              (___match247239247240_
                                               _e240055240220_
                                               _hd240054240223_
                                               _tl240053240225_))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))
                              (___match247239247240_
                               _e240055240220_
                               _hd240054240223_
                               _tl240053240225_))
                          (___match247239247240_
                           _e240055240220_
                           _hd240054240223_
                           _tl240053240225_))))
                  (___match247239247240_
                   _e240055240220_
                   _hd240054240223_
                   _tl240053240225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))
                                              (___match247239247240_
                                               _e240055240220_
                                               _hd240054240223_
                                               _tl240053240225_))))
                                      (___match247239247240_
                                       _e240055240220_
                                       _hd240054240223_
                                       _tl240053240225_))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))
                              (___match247239247240_
                               _e240055240220_
                               _hd240054240223_
                               _tl240053240225_))))
                      (___match247239247240_
                       _e240055240220_
                       _hd240054240223_
                       _tl240053240225_))))
              (___match247239247240_
               _e240055240220_
               _hd240054240223_
               _tl240053240225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))
                                      (___match247239247240_
                                       _e240055240220_
                                       _hd240054240223_
                                       _tl240053240225_))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))))
                          (___match247239247240_
                           _e240055240220_
                           _hd240054240223_
                           _tl240053240225_))))
                  (___match247239247240_
                   _e240055240220_
                   _hd240054240223_
                   _tl240053240225_))
              (___match247239247240_
               _e240055240220_
               _hd240054240223_
               _tl240053240225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247239247240_
                                                   _e240055240220_
                                                   _hd240054240223_
                                                   _tl240053240225_))))
                                          (___match247239247240_
                                           _e240055240220_
                                           _hd240054240223_
                                           _tl240053240225_))))
                                  (___match247239247240_
                                   _e240055240220_
                                   _hd240054240223_
                                   _tl240053240225_))))
                          (___match247239247240_
                           _e240055240220_
                           _hd240054240223_
                           _tl240053240225_))))
                   (___match247093247094_
                    (lambda (_e239988240611_
                             _hd239987240614_
                             _tl239986240616_
                             _e239991240619_
                             _hd239990240622_
                             _tl239989240624_
                             _e239994240627_
                             _hd239993240630_
                             _tl239992240632_
                             _e239997240635_
                             _hd239996240638_
                             _tl239995240640_
                             _e240000240643_
                             _hd239999240646_
                             _tl239998240648_
                             _e240003240651_
                             _hd240002240654_
                             _tl240001240656_
                             _e240006240659_
                             _hd240005240662_
                             _tl240004240664_
                             _e240009240667_
                             _hd240008240670_
                             _tl240007240672_
                             _e240012240675_
                             _hd240011240678_
                             _tl240010240680_
                             _e240015240683_
                             _hd240014240686_
                             _tl240013240688_
                             _e240018240691_
                             _hd240017240694_
                             _tl240016240696_
                             _e240021240699_
                             _hd240020240702_
                             _tl240019240704_
                             _e240024240707_
                             _hd240023240710_
                             _tl240022240712_
                             _e240027240715_
                             _hd240026240718_
                             _tl240025240720_
                             _e240030240723_
                             _hd240029240726_
                             _tl240028240728_
                             _e240033240731_
                             _hd240032240734_
                             _tl240031240736_
                             _e240036240739_
                             _hd240035240742_
                             _tl240034240744_
                             _e240039240747_
                             _hd240038240750_
                             _tl240037240752_
                             _e240042240755_
                             _hd240041240758_
                             _tl240040240760_)
                      (let ((_L240763_ _hd240041240758_)
                            (_L240764_ _hd240032240734_)
                            (_L240765_ _hd240023240710_)
                            (_L240766_ _hd240014240686_)
                            (_L240767_ _hd240005240662_)
                            (_L240768_ _hd239990240622_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L240768_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L240767_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L240766_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L240768_ _L240763_)))
                            (___kont246924246925_
                             _L240763_
                             _L240764_
                             _L240765_
                             _L240766_
                             _L240767_
                             _L240768_)
                            (___match247105247106_
                             _e239988240611_
                             _hd239987240614_
                             _tl239986240616_
                             _e239991240619_
                             _hd239990240622_
                             _tl239989240624_)))))
                   (___match246947246948_
                    (lambda (_e239988240611_ _hd239987240614_ _tl239986240616_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl239986240616_))
                          (let ((_e239991240619_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl239986240616_))))
                            (let ((_tl239989240624_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e239991240619_)))
                                  (_hd239990240622_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e239991240619_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl239989240624_))
                                  (let ((_e239994240627_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl239989240624_))))
                                    (let ((_tl239992240632_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239994240627_)))
                                          (_hd239993240630_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239994240627_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd239993240630_))
                                          (let ((_e239997240635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd239993240630_))))
                                            (let ((_tl239995240640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e239997240635_)))
                                                  (_hd239996240638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e239997240635_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd239996240638_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd239996240638_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl239995240640_))
                                                          (let ((_e240000240643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl239995240640_))))
                    (let ((_tl239998240648_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240000240643_)))
                          (_hd239999240646_
                           (let ()
                             (declare (not safe))
                             (##car _e240000240643_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd239999240646_))
                          (let ((_e240003240651_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd239999240646_))))
                            (let ((_tl240001240656_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240003240651_)))
                                  (_hd240002240654_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240003240651_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd240002240654_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd240002240654_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240001240656_))
                                          (let ((_e240006240659_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240001240656_))))
                                            (let ((_tl240004240664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240006240659_)))
                                                  (_hd240005240662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240006240659_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl240004240664_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl239998240648_))
                                                      (let ((_e240009240667_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl239998240648_))))
                (let ((_tl240007240672_
                       (let () (declare (not safe)) (##cdr _e240009240667_)))
                      (_hd240008240670_
                       (let () (declare (not safe)) (##car _e240009240667_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd240008240670_))
                      (let ((_e240012240675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd240008240670_))))
                        (let ((_tl240010240680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e240012240675_)))
                              (_hd240011240678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e240012240675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd240011240678_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd240011240678_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240010240680_))
                                      (let ((_e240015240683_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240010240680_))))
                                        (let ((_tl240013240688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240015240683_)))
                                              (_hd240014240686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240015240683_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl240013240688_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl240007240672_))
                                                  (let ((_e240018240691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl240007240672_))))
                                                    (let ((_tl240016240696_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240018240691_)))
                                                          (_hd240017240694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240018240691_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd240017240694_))
                                                          (let ((_e240021240699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd240017240694_))))
                    (let ((_tl240019240704_
                           (let ()
                             (declare (not safe))
                             (##cdr _e240021240699_)))
                          (_hd240020240702_
                           (let ()
                             (declare (not safe))
                             (##car _e240021240699_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd240020240702_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd240020240702_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl240019240704_))
                                  (let ((_e240024240707_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl240019240704_))))
                                    (let ((_tl240022240712_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e240024240707_)))
                                          (_hd240023240710_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e240024240707_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl240022240712_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl240016240696_))
                                              (let ((_e240027240715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl240016240696_))))
                                                (let ((_tl240025240720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240027240715_)))
                                                      (_hd240026240718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240027240715_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd240026240718_))
                                                      (let ((_e240030240723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd240026240718_))))
                (let ((_tl240028240728_
                       (let () (declare (not safe)) (##cdr _e240030240723_)))
                      (_hd240029240726_
                       (let () (declare (not safe)) (##car _e240030240723_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd240029240726_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd240029240726_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl240028240728_))
                              (let ((_e240033240731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl240028240728_))))
                                (let ((_tl240031240736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240033240731_)))
                                      (_hd240032240734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240033240731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240031240736_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl240025240720_))
                                          (let ((_e240036240739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl240025240720_))))
                                            (let ((_tl240034240744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e240036240739_)))
                                                  (_hd240035240742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e240036240739_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd240035240742_))
                                                  (let ((_e240039240747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd240035240742_))))
                                                    (let ((_tl240037240752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240039240747_)))
                                                          (_hd240038240750_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240039240747_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd240038240750_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd240038240750_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl240037240752_))
                          (let ((_e240042240755_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl240037240752_))))
                            (let ((_tl240040240760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e240042240755_)))
                                  (_hd240041240758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e240042240755_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240040240760_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl240034240744_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239992240632_))
                                          (___match247093247094_
                                           _e239988240611_
                                           _hd239987240614_
                                           _tl239986240616_
                                           _e239991240619_
                                           _hd239990240622_
                                           _tl239989240624_
                                           _e239994240627_
                                           _hd239993240630_
                                           _tl239992240632_
                                           _e239997240635_
                                           _hd239996240638_
                                           _tl239995240640_
                                           _e240000240643_
                                           _hd239999240646_
                                           _tl239998240648_
                                           _e240003240651_
                                           _hd240002240654_
                                           _tl240001240656_
                                           _e240006240659_
                                           _hd240005240662_
                                           _tl240004240664_
                                           _e240009240667_
                                           _hd240008240670_
                                           _tl240007240672_
                                           _e240012240675_
                                           _hd240011240678_
                                           _tl240010240680_
                                           _e240015240683_
                                           _hd240014240686_
                                           _tl240013240688_
                                           _e240018240691_
                                           _hd240017240694_
                                           _tl240016240696_
                                           _e240021240699_
                                           _hd240020240702_
                                           _tl240019240704_
                                           _e240024240707_
                                           _hd240023240710_
                                           _tl240022240712_
                                           _e240027240715_
                                           _hd240026240718_
                                           _tl240025240720_
                                           _e240030240723_
                                           _hd240029240726_
                                           _tl240028240728_
                                           _e240033240731_
                                           _hd240032240734_
                                           _tl240031240736_
                                           _e240036240739_
                                           _hd240035240742_
                                           _tl240034240744_
                                           _e240039240747_
                                           _hd240038240750_
                                           _tl240037240752_
                                           _e240042240755_
                                           _hd240041240758_
                                           _tl240040240760_)
                                          (___match247105247106_
                                           _e239988240611_
                                           _hd239987240614_
                                           _tl239986240616_
                                           _e239991240619_
                                           _hd239990240622_
                                           _tl239989240624_))
                                      (___match247105247106_
                                       _e239988240611_
                                       _hd239987240614_
                                       _tl239986240616_
                                       _e239991240619_
                                       _hd239990240622_
                                       _tl239989240624_))
                                  (___match247105247106_
                                   _e239988240611_
                                   _hd239987240614_
                                   _tl239986240616_
                                   _e239991240619_
                                   _hd239990240622_
                                   _tl239989240624_))))
                          (___match247105247106_
                           _e239988240611_
                           _hd239987240614_
                           _tl239986240616_
                           _e239991240619_
                           _hd239990240622_
                           _tl239989240624_))
                      (___match247105247106_
                       _e239988240611_
                       _hd239987240614_
                       _tl239986240616_
                       _e239991240619_
                       _hd239990240622_
                       _tl239989240624_))
                  (___match247105247106_
                   _e239988240611_
                   _hd239987240614_
                   _tl239986240616_
                   _e239991240619_
                   _hd239990240622_
                   _tl239989240624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247105247106_
                                                   _e239988240611_
                                                   _hd239987240614_
                                                   _tl239986240616_
                                                   _e239991240619_
                                                   _hd239990240622_
                                                   _tl239989240624_))))
                                          (___match247105247106_
                                           _e239988240611_
                                           _hd239987240614_
                                           _tl239986240616_
                                           _e239991240619_
                                           _hd239990240622_
                                           _tl239989240624_))
                                      (___match247105247106_
                                       _e239988240611_
                                       _hd239987240614_
                                       _tl239986240616_
                                       _e239991240619_
                                       _hd239990240622_
                                       _tl239989240624_))))
                              (___match247105247106_
                               _e239988240611_
                               _hd239987240614_
                               _tl239986240616_
                               _e239991240619_
                               _hd239990240622_
                               _tl239989240624_))
                          (___match247105247106_
                           _e239988240611_
                           _hd239987240614_
                           _tl239986240616_
                           _e239991240619_
                           _hd239990240622_
                           _tl239989240624_))
                      (___match247105247106_
                       _e239988240611_
                       _hd239987240614_
                       _tl239986240616_
                       _e239991240619_
                       _hd239990240622_
                       _tl239989240624_))))
              (___match247105247106_
               _e239988240611_
               _hd239987240614_
               _tl239986240616_
               _e239991240619_
               _hd239990240622_
               _tl239989240624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match247105247106_
                                               _e239988240611_
                                               _hd239987240614_
                                               _tl239986240616_
                                               _e239991240619_
                                               _hd239990240622_
                                               _tl239989240624_))
                                          (___match247105247106_
                                           _e239988240611_
                                           _hd239987240614_
                                           _tl239986240616_
                                           _e239991240619_
                                           _hd239990240622_
                                           _tl239989240624_))))
                                  (___match247105247106_
                                   _e239988240611_
                                   _hd239987240614_
                                   _tl239986240616_
                                   _e239991240619_
                                   _hd239990240622_
                                   _tl239989240624_))
                              (___match247105247106_
                               _e239988240611_
                               _hd239987240614_
                               _tl239986240616_
                               _e239991240619_
                               _hd239990240622_
                               _tl239989240624_))
                          (___match247105247106_
                           _e239988240611_
                           _hd239987240614_
                           _tl239986240616_
                           _e239991240619_
                           _hd239990240622_
                           _tl239989240624_))))
                  (___match247105247106_
                   _e239988240611_
                   _hd239987240614_
                   _tl239986240616_
                   _e239991240619_
                   _hd239990240622_
                   _tl239989240624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247105247106_
                                                   _e239988240611_
                                                   _hd239987240614_
                                                   _tl239986240616_
                                                   _e239991240619_
                                                   _hd239990240622_
                                                   _tl239989240624_))
                                              (___match247105247106_
                                               _e239988240611_
                                               _hd239987240614_
                                               _tl239986240616_
                                               _e239991240619_
                                               _hd239990240622_
                                               _tl239989240624_))))
                                      (___match247105247106_
                                       _e239988240611_
                                       _hd239987240614_
                                       _tl239986240616_
                                       _e239991240619_
                                       _hd239990240622_
                                       _tl239989240624_))
                                  (___match247105247106_
                                   _e239988240611_
                                   _hd239987240614_
                                   _tl239986240616_
                                   _e239991240619_
                                   _hd239990240622_
                                   _tl239989240624_))
                              (___match247105247106_
                               _e239988240611_
                               _hd239987240614_
                               _tl239986240616_
                               _e239991240619_
                               _hd239990240622_
                               _tl239989240624_))))
                      (___match247105247106_
                       _e239988240611_
                       _hd239987240614_
                       _tl239986240616_
                       _e239991240619_
                       _hd239990240622_
                       _tl239989240624_))))
              (___match247105247106_
               _e239988240611_
               _hd239987240614_
               _tl239986240616_
               _e239991240619_
               _hd239990240622_
               _tl239989240624_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247105247106_
                                                   _e239988240611_
                                                   _hd239987240614_
                                                   _tl239986240616_
                                                   _e239991240619_
                                                   _hd239990240622_
                                                   _tl239989240624_))))
                                          (___match247105247106_
                                           _e239988240611_
                                           _hd239987240614_
                                           _tl239986240616_
                                           _e239991240619_
                                           _hd239990240622_
                                           _tl239989240624_))
                                      (___match247105247106_
                                       _e239988240611_
                                       _hd239987240614_
                                       _tl239986240616_
                                       _e239991240619_
                                       _hd239990240622_
                                       _tl239989240624_))
                                  (___match247105247106_
                                   _e239988240611_
                                   _hd239987240614_
                                   _tl239986240616_
                                   _e239991240619_
                                   _hd239990240622_
                                   _tl239989240624_))))
                          (___match247105247106_
                           _e239988240611_
                           _hd239987240614_
                           _tl239986240616_
                           _e239991240619_
                           _hd239990240622_
                           _tl239989240624_))))
                  (___match247105247106_
                   _e239988240611_
                   _hd239987240614_
                   _tl239986240616_
                   _e239991240619_
                   _hd239990240622_
                   _tl239989240624_))
              (___match247105247106_
               _e239988240611_
               _hd239987240614_
               _tl239986240616_
               _e239991240619_
               _hd239990240622_
               _tl239989240624_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247105247106_
                                                   _e239988240611_
                                                   _hd239987240614_
                                                   _tl239986240616_
                                                   _e239991240619_
                                                   _hd239990240622_
                                                   _tl239989240624_))))
                                          (___match247105247106_
                                           _e239988240611_
                                           _hd239987240614_
                                           _tl239986240616_
                                           _e239991240619_
                                           _hd239990240622_
                                           _tl239989240624_))))
                                  (___match247105247106_
                                   _e239988240611_
                                   _hd239987240614_
                                   _tl239986240616_
                                   _e239991240619_
                                   _hd239990240622_
                                   _tl239989240624_))))
                          (___match247239247240_
                           _e239988240611_
                           _hd239987240614_
                           _tl239986240616_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246920246921_))
                  (let ((_e239979240828_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246920246921_))))
                    (let ((_tl239977240833_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239979240828_)))
                          (_hd239978240831_
                           (let ()
                             (declare (not safe))
                             (##car _e239979240828_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L240836_ _tl239977240833_))
                            (___kont246922246923_ _L240836_))
                          (___match246947246948_
                           _e239979240828_
                           _hd239978240831_
                           _tl239977240833_))))
                  (let () (declare (not safe)) (_g239974240170_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx239923_)
        (letrec ((_clause-e239925_
                  (lambda (_form239966_)
                    (let ((__obj248593
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
                       __obj248593
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form239966_))
                       (if (let ((__tmp248660
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp248660))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form239966_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form239966_))
                               '#f)
                           '#f))
                      __obj248593))))
          (let* ((_g239927239937_
                  (lambda (_g239928239934_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g239928239934_))))
                 (_g239926239963_
                  (lambda (_g239928239940_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g239928239940_))
                        (let ((_e239932239942_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g239928239940_))))
                          (let ((_hd239931239945_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239932239942_)))
                                (_tl239930239947_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239932239942_))))
                            ((lambda (_L239950_)
                               (let ((_clauses239961_
                                      (map _clause-e239925_ _L239950_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses239961_)))
                             _tl239930239947_)))
                        (let ()
                          (declare (not safe))
                          (_g239927239937_ _g239928239940_))))))
            (declare (not safe))
            (_g239926239963_ _stx239923_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx239855_)
        (let* ((_g239857239874_
                (lambda (_g239858239871_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g239858239871_))))
               (_g239856239920_
                (lambda (_g239858239877_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g239858239877_))
                      (let ((_e239863239879_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g239858239877_))))
                        (let ((_hd239862239882_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239863239879_)))
                              (_tl239861239884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239863239879_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239861239884_))
                              (let ((_e239866239887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239861239884_))))
                                (let ((_hd239865239890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239866239887_)))
                                      (_tl239864239892_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239866239887_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl239864239892_))
                                      (let ((_e239869239895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl239864239892_))))
                                        (let ((_hd239868239898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239869239895_)))
                                              (_tl239867239900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239869239895_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239867239900_))
                                              ((lambda (_L239903_ _L239904_)
                                                 (let ((__tmp248661
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L239903_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp248661
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd239868239898_
                                               _hd239865239890_)
                                              (let ()
                                                (declare (not safe))
                                                (_g239857239874_
                                                 _g239858239877_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g239857239874_ _g239858239877_)))))
                              (let ()
                                (declare (not safe))
                                (_g239857239874_ _g239858239877_)))))
                      (let ()
                        (declare (not safe))
                        (_g239857239874_ _g239858239877_))))))
          (declare (not safe))
          (_g239856239920_ _stx239855_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx239760_)
        (let* ((___stx247248247249_ _stx239760_)
               (_g239763239783_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247248247249_)))))
          (let ((___kont247250247251_
                 (lambda (_L239827_ _L239828_)
                   (let ((_type-e239845239847_
                          (let ((__tmp248662
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L239828_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp248662))))
                     (if _type-e239845239847_
                         (let ((_type-e239850_ _type-e239845239847_))
                           (_type-e239850_ _stx239760_ _L239827_))
                         '#f))))
                (___kont247252247253_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx247248247249_))
                (let ((_e239769239795_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx247248247249_))))
                  (let ((_tl239767239800_
                         (let () (declare (not safe)) (##cdr _e239769239795_)))
                        (_hd239768239798_
                         (let ()
                           (declare (not safe))
                           (##car _e239769239795_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239767239800_))
                        (let ((_e239772239803_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239767239800_))))
                          (let ((_tl239770239808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239772239803_)))
                                (_hd239771239806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239772239803_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239771239806_))
                                (let ((_e239775239811_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239771239806_))))
                                  (let ((_tl239773239816_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239775239811_)))
                                        (_hd239774239814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239775239811_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239774239814_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239774239814_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239773239816_))
                                                (let ((_e239778239819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239773239816_))))
                                                  (let ((_tl239776239824_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239778239819_)))
                                                        (_hd239777239822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239778239819_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239776239824_))
                                                        (___kont247250247251_
                                                         _tl239770239808_
                                                         _hd239777239822_)
                                                        (___kont247252247253_))))
                                                (___kont247252247253_))
                                            (___kont247252247253_))
                                        (___kont247252247253_))))
                                (___kont247252247253_))))
                        (___kont247252247253_))))
                (___kont247252247253_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx239709_)
        (let* ((_g239711239724_
                (lambda (_g239712239721_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g239712239721_))))
               (_g239710239757_
                (lambda (_g239712239727_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g239712239727_))
                      (let ((_e239716239729_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g239712239727_))))
                        (let ((_hd239715239732_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239716239729_)))
                              (_tl239714239734_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239716239729_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239714239734_))
                              (let ((_e239719239737_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239714239734_))))
                                (let ((_hd239718239740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239719239737_)))
                                      (_tl239717239742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239719239737_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239717239742_))
                                      ((lambda (_L239745_)
                                         (let ((__tmp248663
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L239745_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp248663)))
                                       _hd239718239740_)
                                      (let ()
                                        (declare (not safe))
                                        (_g239711239724_ _g239712239727_)))))
                              (let ()
                                (declare (not safe))
                                (_g239711239724_ _g239712239727_)))))
                      (let ()
                        (declare (not safe))
                        (_g239711239724_ _g239712239727_))))))
          (declare (not safe))
          (_g239710239757_ _stx239709_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form238943_)
        (let* ((___stx247286247287_ _form238943_)
               (_g238948239105_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247286247287_)))))
          (let ((___kont247288247289_
                 (lambda (_L239629_ _L239630_ _L239631_) '#t))
                (___kont247294247295_
                 (lambda (_L239417_
                          _L239418_
                          _L239419_
                          _L239420_
                          _L239421_
                          _L239422_)
                   '#t))
                (___kont247300247301_
                 (lambda (_L239213_ _L239214_ _L239215_ _L239216_) '#t))
                (___kont247302247303_ (lambda () '#f)))
            (let* ((___match247427247428_
                    (lambda (_e239067239117_
                             _hd239066239120_
                             _tl239065239122_
                             _e239070239125_
                             _hd239069239128_
                             _tl239068239130_
                             _e239073239133_
                             _hd239072239136_
                             _tl239071239138_
                             _e239076239141_
                             _hd239075239144_
                             _tl239074239146_
                             _e239079239149_
                             _hd239078239152_
                             _tl239077239154_
                             _e239082239157_
                             _hd239081239160_
                             _tl239080239162_
                             _e239085239165_
                             _hd239084239168_
                             _tl239083239170_
                             _e239088239173_
                             _hd239087239176_
                             _tl239086239178_
                             _e239091239181_
                             _hd239090239184_
                             _tl239089239186_
                             _e239094239189_
                             _hd239093239192_
                             _tl239092239194_
                             _e239097239197_
                             _hd239096239200_
                             _tl239095239202_
                             _e239100239205_
                             _hd239099239208_
                             _tl239098239210_)
                      (let ((_L239213_ _hd239099239208_)
                            (_L239214_ _hd239090239184_)
                            (_L239215_ _hd239081239160_)
                            (_L239216_ _hd239066239120_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L239216_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L239215_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L239216_ _L239213_))
                                 (let ((__tmp248664
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L239214_
                                           _L239216_))))
                                   (declare (not safe))
                                   (not __tmp248664)))
                            (___kont247300247301_
                             _L239213_
                             _L239214_
                             _L239215_
                             _L239216_)
                            (___kont247302247303_)))))
                   (___match247399247400_
                    (lambda (_e239067239117_
                             _hd239066239120_
                             _tl239065239122_
                             _e239070239125_
                             _hd239069239128_
                             _tl239068239130_
                             _e239073239133_
                             _hd239072239136_
                             _tl239071239138_
                             _e239076239141_
                             _hd239075239144_
                             _tl239074239146_
                             _e239079239149_
                             _hd239078239152_
                             _tl239077239154_
                             _e239082239157_
                             _hd239081239160_
                             _tl239080239162_
                             _e239085239165_
                             _hd239084239168_
                             _tl239083239170_
                             _e239088239173_
                             _hd239087239176_
                             _tl239086239178_
                             _e239091239181_
                             _hd239090239184_
                             _tl239089239186_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl239083239170_))
                          (let ((_e239094239189_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl239083239170_))))
                            (let ((_tl239092239194_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e239094239189_)))
                                  (_hd239093239192_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e239094239189_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd239093239192_))
                                  (let ((_e239097239197_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd239093239192_))))
                                    (let ((_tl239095239202_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239097239197_)))
                                          (_hd239096239200_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239097239197_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd239096239200_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd239096239200_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl239095239202_))
                                                  (let ((_e239100239205_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl239095239202_))))
                                                    (let ((_tl239098239210_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e239100239205_)))
                                                          (_hd239099239208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e239100239205_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl239098239210_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl239092239194_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl239068239130_))
                          (___match247427247428_
                           _e239067239117_
                           _hd239066239120_
                           _tl239065239122_
                           _e239070239125_
                           _hd239069239128_
                           _tl239068239130_
                           _e239073239133_
                           _hd239072239136_
                           _tl239071239138_
                           _e239076239141_
                           _hd239075239144_
                           _tl239074239146_
                           _e239079239149_
                           _hd239078239152_
                           _tl239077239154_
                           _e239082239157_
                           _hd239081239160_
                           _tl239080239162_
                           _e239085239165_
                           _hd239084239168_
                           _tl239083239170_
                           _e239088239173_
                           _hd239087239176_
                           _tl239086239178_
                           _e239091239181_
                           _hd239090239184_
                           _tl239089239186_
                           _e239094239189_
                           _hd239093239192_
                           _tl239092239194_
                           _e239097239197_
                           _hd239096239200_
                           _tl239095239202_
                           _e239100239205_
                           _hd239099239208_
                           _tl239098239210_)
                          (___kont247302247303_))
                      (___kont247302247303_))
                  (___kont247302247303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont247302247303_))
                                              (___kont247302247303_))
                                          (___kont247302247303_))))
                                  (___kont247302247303_))))
                          (___kont247302247303_))))
                   (___match247329247330_
                    (lambda (_e239003239257_
                             _hd239002239260_
                             _tl239001239262_
                             ___splice247296247297_
                             _target239004239265_
                             _tl239006239267_)
                      (letrec ((_loop239007239270_
                                (lambda (_hd239005239273_ _arg239011239275_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239005239273_))
                                      (let ((_e239008239278_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239005239273_))))
                                        (let ((_lp-tl239010239283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239008239278_)))
                                              (_lp-hd239009239281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239008239278_))))
                                          (let ((__tmp248679
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd239009239281_
                                                         _arg239011239275_))))
                                            (declare (not safe))
                                            (_loop239007239270_
                                             _lp-tl239010239283_
                                             __tmp248679))))
                                      (let ((_arg239012239286_
                                             (reverse _arg239011239275_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl239001239262_))
                                            (let ((_e239015239289_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl239001239262_))))
                                              (let ((_tl239013239294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239015239289_)))
                                                    (_hd239014239292_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239015239289_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd239014239292_))
                                                    (let ((_e239018239297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd239014239292_))))
                                                      (let ((_tl239016239302_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239018239297_)))
                    (_hd239017239300_
                     (let () (declare (not safe)) (##car _e239018239297_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239017239300_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd239017239300_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239016239302_))
                            (let ((_e239021239305_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239016239302_))))
                              (let ((_tl239019239310_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239021239305_)))
                                    (_hd239020239308_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239021239305_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239020239308_))
                                    (let ((_e239024239313_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239020239308_))))
                                      (let ((_tl239022239318_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239024239313_)))
                                            (_hd239023239316_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239024239313_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd239023239316_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd239023239316_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl239022239318_))
                                                    (let ((_e239027239321_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl239022239318_))))
                                                      (let ((_tl239025239326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239027239321_)))
                    (_hd239026239324_
                     (let () (declare (not safe)) (##car _e239027239321_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl239025239326_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl239019239310_))
                        (let ((_e239030239329_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl239019239310_))))
                          (let ((_tl239028239334_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e239030239329_)))
                                (_hd239029239332_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e239030239329_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd239029239332_))
                                (let ((_e239033239337_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd239029239332_))))
                                  (let ((_tl239031239342_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239033239337_)))
                                        (_hd239032239340_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239033239337_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd239032239340_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd239032239340_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239031239342_))
                                                (let ((_e239036239345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239031239342_))))
                                                  (let ((_tl239034239350_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239036239345_)))
                                                        (_hd239035239348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239036239345_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239034239350_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl239028239334_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl239028239334_))
                              '1)
                        (let ((___splice247298247299_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl239028239334_
                                  '1))))
                          (let ((_tl239039239355_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice247298247299_ '1)))
                                (_target239037239353_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice247298247299_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl239039239355_))
                                (let ((_e239048239358_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl239039239355_))))
                                  (let ((_tl239046239363_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e239048239358_)))
                                        (_hd239047239361_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e239048239358_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd239047239361_))
                                        (let ((_e239051239366_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd239047239361_))))
                                          (let ((_tl239049239371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e239051239366_)))
                                                (_hd239050239369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e239051239366_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd239050239369_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd239050239369_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl239049239371_))
                                                        (let ((_e239054239374_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl239049239371_))))
                  (let ((_tl239052239379_
                         (let () (declare (not safe)) (##cdr _e239054239374_)))
                        (_hd239053239377_
                         (let ()
                           (declare (not safe))
                           (##car _e239054239374_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl239052239379_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl239046239363_))
                            (letrec ((_loop239040239382_
                                      (lambda (_hd239038239385_
                                               _xarg239044239387_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd239038239385_))
                                            (let ((_e239041239390_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd239038239385_))))
                                              (let ((_lp-tl239043239395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e239041239390_)))
                                                    (_lp-hd239042239393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e239041239390_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd239042239393_))
                                                    (let ((_e239057239398_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd239042239393_))))
                                                      (let ((_tl239055239403_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e239057239398_)))
                    (_hd239056239401_
                     (let () (declare (not safe)) (##car _e239057239398_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd239056239401_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd239056239401_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239055239403_))
                            (let ((_e239060239406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239055239403_))))
                              (let ((_tl239058239411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239060239406_)))
                                    (_hd239059239409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239060239406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl239058239411_))
                                    (let ((__tmp248678
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd239059239409_
                                                   _xarg239044239387_))))
                                      (declare (not safe))
                                      (_loop239040239382_
                                       _lp-tl239043239395_
                                       __tmp248678))
                                    (___match247399247400_
                                     _e239003239257_
                                     _hd239002239260_
                                     _tl239001239262_
                                     _e239015239289_
                                     _hd239014239292_
                                     _tl239013239294_
                                     _e239018239297_
                                     _hd239017239300_
                                     _tl239016239302_
                                     _e239021239305_
                                     _hd239020239308_
                                     _tl239019239310_
                                     _e239024239313_
                                     _hd239023239316_
                                     _tl239022239318_
                                     _e239027239321_
                                     _hd239026239324_
                                     _tl239025239326_
                                     _e239030239329_
                                     _hd239029239332_
                                     _tl239028239334_
                                     _e239033239337_
                                     _hd239032239340_
                                     _tl239031239342_
                                     _e239036239345_
                                     _hd239035239348_
                                     _tl239034239350_))))
                            (___match247399247400_
                             _e239003239257_
                             _hd239002239260_
                             _tl239001239262_
                             _e239015239289_
                             _hd239014239292_
                             _tl239013239294_
                             _e239018239297_
                             _hd239017239300_
                             _tl239016239302_
                             _e239021239305_
                             _hd239020239308_
                             _tl239019239310_
                             _e239024239313_
                             _hd239023239316_
                             _tl239022239318_
                             _e239027239321_
                             _hd239026239324_
                             _tl239025239326_
                             _e239030239329_
                             _hd239029239332_
                             _tl239028239334_
                             _e239033239337_
                             _hd239032239340_
                             _tl239031239342_
                             _e239036239345_
                             _hd239035239348_
                             _tl239034239350_))
                        (___match247399247400_
                         _e239003239257_
                         _hd239002239260_
                         _tl239001239262_
                         _e239015239289_
                         _hd239014239292_
                         _tl239013239294_
                         _e239018239297_
                         _hd239017239300_
                         _tl239016239302_
                         _e239021239305_
                         _hd239020239308_
                         _tl239019239310_
                         _e239024239313_
                         _hd239023239316_
                         _tl239022239318_
                         _e239027239321_
                         _hd239026239324_
                         _tl239025239326_
                         _e239030239329_
                         _hd239029239332_
                         _tl239028239334_
                         _e239033239337_
                         _hd239032239340_
                         _tl239031239342_
                         _e239036239345_
                         _hd239035239348_
                         _tl239034239350_))
                    (___match247399247400_
                     _e239003239257_
                     _hd239002239260_
                     _tl239001239262_
                     _e239015239289_
                     _hd239014239292_
                     _tl239013239294_
                     _e239018239297_
                     _hd239017239300_
                     _tl239016239302_
                     _e239021239305_
                     _hd239020239308_
                     _tl239019239310_
                     _e239024239313_
                     _hd239023239316_
                     _tl239022239318_
                     _e239027239321_
                     _hd239026239324_
                     _tl239025239326_
                     _e239030239329_
                     _hd239029239332_
                     _tl239028239334_
                     _e239033239337_
                     _hd239032239340_
                     _tl239031239342_
                     _e239036239345_
                     _hd239035239348_
                     _tl239034239350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247399247400_
                                                     _e239003239257_
                                                     _hd239002239260_
                                                     _tl239001239262_
                                                     _e239015239289_
                                                     _hd239014239292_
                                                     _tl239013239294_
                                                     _e239018239297_
                                                     _hd239017239300_
                                                     _tl239016239302_
                                                     _e239021239305_
                                                     _hd239020239308_
                                                     _tl239019239310_
                                                     _e239024239313_
                                                     _hd239023239316_
                                                     _tl239022239318_
                                                     _e239027239321_
                                                     _hd239026239324_
                                                     _tl239025239326_
                                                     _e239030239329_
                                                     _hd239029239332_
                                                     _tl239028239334_
                                                     _e239033239337_
                                                     _hd239032239340_
                                                     _tl239031239342_
                                                     _e239036239345_
                                                     _hd239035239348_
                                                     _tl239034239350_))))
                                            (let ((_xarg239045239414_
                                                   (reverse _xarg239044239387_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl239013239294_))
                                                  (let ((_L239417_
                                                         _hd239053239377_)
                                                        (_L239418_
                                                         _xarg239045239414_)
                                                        (_L239419_
                                                         _hd239035239348_)
                                                        (_L239420_
                                                         _hd239026239324_)
                                                        (_L239421_
                                                         _tl239006239267_)
                                                        (_L239422_
                                                         _arg239012239286_))
                                                    (if (and (let ((__tmp248676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp248677
                                   (lambda (_g239465239468_ _g239466239470_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g239465239468_
                                             _g239466239470_)))))
                              (declare (not safe))
                              (foldr1 __tmp248677 '() _L239422_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp248676))
                     (let () (declare (not safe)) (gx#identifier? _L239421_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L239420_ 'apply))
                     (fx= (length (let ((__tmp248674
                                         (lambda (_g239472239475_
                                                  _g239473239477_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g239472239475_
                                                   _g239473239477_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp248674 '() _L239422_)))
                          (length (let ((__tmp248675
                                         (lambda (_g239479239482_
                                                  _g239480239484_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g239479239482_
                                                   _g239480239484_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp248675 '() _L239418_))))
                     (let ((__tmp248672
                            (let ((__tmp248673
                                   (lambda (_g239486239489_ _g239487239491_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g239486239489_
                                             _g239487239491_)))))
                              (declare (not safe))
                              (foldr1 __tmp248673 '() _L239422_)))
                           (__tmp248670
                            (let ((__tmp248671
                                   (lambda (_g239493239496_ _g239494239498_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g239493239496_
                                             _g239494239498_)))))
                              (declare (not safe))
                              (foldr1 __tmp248671 '() _L239418_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp248672 __tmp248670))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L239421_ _L239417_))
                     (let ((__tmp248665
                            (let ((__tmp248669
                                   (lambda (_g239500239502_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g239500239502_
                                        _L239419_))))
                                  (__tmp248666
                                   (let ((__tmp248668
                                          (lambda (_g239504239507_
                                                   _g239505239509_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g239504239507_
                                                    _g239505239509_))))
                                         (__tmp248667
                                          (let ()
                                            (declare (not safe))
                                            (cons _L239421_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp248668
                                             __tmp248667
                                             _L239422_))))
                              (declare (not safe))
                              (find __tmp248669 __tmp248666))))
                       (declare (not safe))
                       (not __tmp248665)))
                (___kont247294247295_
                 _L239417_
                 _L239418_
                 _L239419_
                 _L239420_
                 _L239421_
                 _L239422_)
                (___match247399247400_
                 _e239003239257_
                 _hd239002239260_
                 _tl239001239262_
                 _e239015239289_
                 _hd239014239292_
                 _tl239013239294_
                 _e239018239297_
                 _hd239017239300_
                 _tl239016239302_
                 _e239021239305_
                 _hd239020239308_
                 _tl239019239310_
                 _e239024239313_
                 _hd239023239316_
                 _tl239022239318_
                 _e239027239321_
                 _hd239026239324_
                 _tl239025239326_
                 _e239030239329_
                 _hd239029239332_
                 _tl239028239334_
                 _e239033239337_
                 _hd239032239340_
                 _tl239031239342_
                 _e239036239345_
                 _hd239035239348_
                 _tl239034239350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247399247400_
                                                   _e239003239257_
                                                   _hd239002239260_
                                                   _tl239001239262_
                                                   _e239015239289_
                                                   _hd239014239292_
                                                   _tl239013239294_
                                                   _e239018239297_
                                                   _hd239017239300_
                                                   _tl239016239302_
                                                   _e239021239305_
                                                   _hd239020239308_
                                                   _tl239019239310_
                                                   _e239024239313_
                                                   _hd239023239316_
                                                   _tl239022239318_
                                                   _e239027239321_
                                                   _hd239026239324_
                                                   _tl239025239326_
                                                   _e239030239329_
                                                   _hd239029239332_
                                                   _tl239028239334_
                                                   _e239033239337_
                                                   _hd239032239340_
                                                   _tl239031239342_
                                                   _e239036239345_
                                                   _hd239035239348_
                                                   _tl239034239350_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop239040239382_ _target239037239353_ '())))
                            (___match247399247400_
                             _e239003239257_
                             _hd239002239260_
                             _tl239001239262_
                             _e239015239289_
                             _hd239014239292_
                             _tl239013239294_
                             _e239018239297_
                             _hd239017239300_
                             _tl239016239302_
                             _e239021239305_
                             _hd239020239308_
                             _tl239019239310_
                             _e239024239313_
                             _hd239023239316_
                             _tl239022239318_
                             _e239027239321_
                             _hd239026239324_
                             _tl239025239326_
                             _e239030239329_
                             _hd239029239332_
                             _tl239028239334_
                             _e239033239337_
                             _hd239032239340_
                             _tl239031239342_
                             _e239036239345_
                             _hd239035239348_
                             _tl239034239350_))
                        (___match247399247400_
                         _e239003239257_
                         _hd239002239260_
                         _tl239001239262_
                         _e239015239289_
                         _hd239014239292_
                         _tl239013239294_
                         _e239018239297_
                         _hd239017239300_
                         _tl239016239302_
                         _e239021239305_
                         _hd239020239308_
                         _tl239019239310_
                         _e239024239313_
                         _hd239023239316_
                         _tl239022239318_
                         _e239027239321_
                         _hd239026239324_
                         _tl239025239326_
                         _e239030239329_
                         _hd239029239332_
                         _tl239028239334_
                         _e239033239337_
                         _hd239032239340_
                         _tl239031239342_
                         _e239036239345_
                         _hd239035239348_
                         _tl239034239350_))))
                (___match247399247400_
                 _e239003239257_
                 _hd239002239260_
                 _tl239001239262_
                 _e239015239289_
                 _hd239014239292_
                 _tl239013239294_
                 _e239018239297_
                 _hd239017239300_
                 _tl239016239302_
                 _e239021239305_
                 _hd239020239308_
                 _tl239019239310_
                 _e239024239313_
                 _hd239023239316_
                 _tl239022239318_
                 _e239027239321_
                 _hd239026239324_
                 _tl239025239326_
                 _e239030239329_
                 _hd239029239332_
                 _tl239028239334_
                 _e239033239337_
                 _hd239032239340_
                 _tl239031239342_
                 _e239036239345_
                 _hd239035239348_
                 _tl239034239350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247399247400_
                                                     _e239003239257_
                                                     _hd239002239260_
                                                     _tl239001239262_
                                                     _e239015239289_
                                                     _hd239014239292_
                                                     _tl239013239294_
                                                     _e239018239297_
                                                     _hd239017239300_
                                                     _tl239016239302_
                                                     _e239021239305_
                                                     _hd239020239308_
                                                     _tl239019239310_
                                                     _e239024239313_
                                                     _hd239023239316_
                                                     _tl239022239318_
                                                     _e239027239321_
                                                     _hd239026239324_
                                                     _tl239025239326_
                                                     _e239030239329_
                                                     _hd239029239332_
                                                     _tl239028239334_
                                                     _e239033239337_
                                                     _hd239032239340_
                                                     _tl239031239342_
                                                     _e239036239345_
                                                     _hd239035239348_
                                                     _tl239034239350_))
                                                (___match247399247400_
                                                 _e239003239257_
                                                 _hd239002239260_
                                                 _tl239001239262_
                                                 _e239015239289_
                                                 _hd239014239292_
                                                 _tl239013239294_
                                                 _e239018239297_
                                                 _hd239017239300_
                                                 _tl239016239302_
                                                 _e239021239305_
                                                 _hd239020239308_
                                                 _tl239019239310_
                                                 _e239024239313_
                                                 _hd239023239316_
                                                 _tl239022239318_
                                                 _e239027239321_
                                                 _hd239026239324_
                                                 _tl239025239326_
                                                 _e239030239329_
                                                 _hd239029239332_
                                                 _tl239028239334_
                                                 _e239033239337_
                                                 _hd239032239340_
                                                 _tl239031239342_
                                                 _e239036239345_
                                                 _hd239035239348_
                                                 _tl239034239350_))))
                                        (___match247399247400_
                                         _e239003239257_
                                         _hd239002239260_
                                         _tl239001239262_
                                         _e239015239289_
                                         _hd239014239292_
                                         _tl239013239294_
                                         _e239018239297_
                                         _hd239017239300_
                                         _tl239016239302_
                                         _e239021239305_
                                         _hd239020239308_
                                         _tl239019239310_
                                         _e239024239313_
                                         _hd239023239316_
                                         _tl239022239318_
                                         _e239027239321_
                                         _hd239026239324_
                                         _tl239025239326_
                                         _e239030239329_
                                         _hd239029239332_
                                         _tl239028239334_
                                         _e239033239337_
                                         _hd239032239340_
                                         _tl239031239342_
                                         _e239036239345_
                                         _hd239035239348_
                                         _tl239034239350_))))
                                (___match247399247400_
                                 _e239003239257_
                                 _hd239002239260_
                                 _tl239001239262_
                                 _e239015239289_
                                 _hd239014239292_
                                 _tl239013239294_
                                 _e239018239297_
                                 _hd239017239300_
                                 _tl239016239302_
                                 _e239021239305_
                                 _hd239020239308_
                                 _tl239019239310_
                                 _e239024239313_
                                 _hd239023239316_
                                 _tl239022239318_
                                 _e239027239321_
                                 _hd239026239324_
                                 _tl239025239326_
                                 _e239030239329_
                                 _hd239029239332_
                                 _tl239028239334_
                                 _e239033239337_
                                 _hd239032239340_
                                 _tl239031239342_
                                 _e239036239345_
                                 _hd239035239348_
                                 _tl239034239350_))))
                        (___match247399247400_
                         _e239003239257_
                         _hd239002239260_
                         _tl239001239262_
                         _e239015239289_
                         _hd239014239292_
                         _tl239013239294_
                         _e239018239297_
                         _hd239017239300_
                         _tl239016239302_
                         _e239021239305_
                         _hd239020239308_
                         _tl239019239310_
                         _e239024239313_
                         _hd239023239316_
                         _tl239022239318_
                         _e239027239321_
                         _hd239026239324_
                         _tl239025239326_
                         _e239030239329_
                         _hd239029239332_
                         _tl239028239334_
                         _e239033239337_
                         _hd239032239340_
                         _tl239031239342_
                         _e239036239345_
                         _hd239035239348_
                         _tl239034239350_))
                    (___match247399247400_
                     _e239003239257_
                     _hd239002239260_
                     _tl239001239262_
                     _e239015239289_
                     _hd239014239292_
                     _tl239013239294_
                     _e239018239297_
                     _hd239017239300_
                     _tl239016239302_
                     _e239021239305_
                     _hd239020239308_
                     _tl239019239310_
                     _e239024239313_
                     _hd239023239316_
                     _tl239022239318_
                     _e239027239321_
                     _hd239026239324_
                     _tl239025239326_
                     _e239030239329_
                     _hd239029239332_
                     _tl239028239334_
                     _e239033239337_
                     _hd239032239340_
                     _tl239031239342_
                     _e239036239345_
                     _hd239035239348_
                     _tl239034239350_))
                (___kont247302247303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247302247303_))
                                            (___kont247302247303_))
                                        (___kont247302247303_))))
                                (___kont247302247303_))))
                        (___kont247302247303_))
                    (___kont247302247303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247302247303_))
                                                (___kont247302247303_))
                                            (___kont247302247303_))))
                                    (___kont247302247303_))))
                            (___kont247302247303_))
                        (___kont247302247303_))
                    (___kont247302247303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247302247303_))))
                                            (___kont247302247303_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop239007239270_ _target239004239265_ '())))))
                   (___match247317247318_
                    (lambda (_e238955239517_
                             _hd238954239520_
                             _tl238953239522_
                             ___splice247290247291_
                             _target238956239525_
                             _tl238958239527_)
                      (letrec ((_loop238959239530_
                                (lambda (_hd238957239533_ _arg238963239535_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238957239533_))
                                      (let ((_e238960239538_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238957239533_))))
                                        (let ((_lp-tl238962239543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238960239538_)))
                                              (_lp-hd238961239541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238960239538_))))
                                          (let ((__tmp248693
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238961239541_
                                                         _arg238963239535_))))
                                            (declare (not safe))
                                            (_loop238959239530_
                                             _lp-tl238962239543_
                                             __tmp248693))))
                                      (let ((_arg238964239546_
                                             (reverse _arg238963239535_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238953239522_))
                                            (let ((_e238967239549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238953239522_))))
                                              (let ((_tl238965239554_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238967239549_)))
                                                    (_hd238966239552_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238967239549_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238966239552_))
                                                    (let ((_e238970239557_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238966239552_))))
                                                      (let ((_tl238968239562_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238970239557_)))
                    (_hd238969239560_
                     (let () (declare (not safe)) (##car _e238970239557_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238969239560_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd238969239560_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238968239562_))
                            (let ((_e238973239565_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238968239562_))))
                              (let ((_tl238971239570_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238973239565_)))
                                    (_hd238972239568_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238973239565_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238972239568_))
                                    (let ((_e238976239573_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238972239568_))))
                                      (let ((_tl238974239578_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238976239573_)))
                                            (_hd238975239576_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238976239573_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238975239576_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd238975239576_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238974239578_))
                                                    (let ((_e238979239581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238974239578_))))
                                                      (let ((_tl238977239586_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238979239581_)))
                    (_hd238978239584_
                     (let () (declare (not safe)) (##car _e238979239581_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl238977239586_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl238971239570_))
                        (let ((___splice247292247293_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl238971239570_
                                  '0))))
                          (let ((_tl238982239591_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice247292247293_ '1)))
                                (_target238980239589_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice247292247293_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl238982239591_))
                                (letrec ((_loop238983239594_
                                          (lambda (_hd238981239597_
                                                   _xarg238987239599_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238981239597_))
                                                (let ((_e238984239602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238981239597_))))
                                                  (let ((_lp-tl238986239607_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238984239602_)))
                                                        (_lp-hd238985239605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238984239602_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd238985239605_))
                                                        (let ((_e238991239610_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd238985239605_))))
                  (let ((_tl238989239615_
                         (let () (declare (not safe)) (##cdr _e238991239610_)))
                        (_hd238990239613_
                         (let ()
                           (declare (not safe))
                           (##car _e238991239610_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238990239613_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd238990239613_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238989239615_))
                                (let ((_e238994239618_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238989239615_))))
                                  (let ((_tl238992239623_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238994239618_)))
                                        (_hd238993239621_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238994239618_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238992239623_))
                                        (let ((__tmp248692
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd238993239621_
                                                       _xarg238987239599_))))
                                          (declare (not safe))
                                          (_loop238983239594_
                                           _lp-tl238986239607_
                                           __tmp248692))
                                        (___match247329247330_
                                         _e238955239517_
                                         _hd238954239520_
                                         _tl238953239522_
                                         ___splice247290247291_
                                         _target238956239525_
                                         _tl238958239527_))))
                                (___match247329247330_
                                 _e238955239517_
                                 _hd238954239520_
                                 _tl238953239522_
                                 ___splice247290247291_
                                 _target238956239525_
                                 _tl238958239527_))
                            (___match247329247330_
                             _e238955239517_
                             _hd238954239520_
                             _tl238953239522_
                             ___splice247290247291_
                             _target238956239525_
                             _tl238958239527_))
                        (___match247329247330_
                         _e238955239517_
                         _hd238954239520_
                         _tl238953239522_
                         ___splice247290247291_
                         _target238956239525_
                         _tl238958239527_))))
                (___match247329247330_
                 _e238955239517_
                 _hd238954239520_
                 _tl238953239522_
                 ___splice247290247291_
                 _target238956239525_
                 _tl238958239527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg238988239626_
                                                       (reverse _xarg238987239599_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238965239554_))
                                                      (let ((_L239629_
                                                             _xarg238988239626_)
                                                            (_L239630_
                                                             _hd238978239584_)
                                                            (_L239631_
                                                             _arg238964239546_))
                                                        (if (and (let ((__tmp248690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp248691
                                       (lambda (_g239659239662_
                                                _g239660239664_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g239659239662_
                                                 _g239660239664_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp248691 '() _L239631_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp248690))
                         (fx= (length (let ((__tmp248688
                                             (lambda (_g239666239669_
                                                      _g239667239671_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g239666239669_
                                                       _g239667239671_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp248688 '() _L239631_)))
                              (length (let ((__tmp248689
                                             (lambda (_g239673239676_
                                                      _g239674239678_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g239673239676_
                                                       _g239674239678_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp248689 '() _L239629_))))
                         (let ((__tmp248686
                                (let ((__tmp248687
                                       (lambda (_g239680239683_
                                                _g239681239685_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g239680239683_
                                                 _g239681239685_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp248687 '() _L239631_)))
                               (__tmp248684
                                (let ((__tmp248685
                                       (lambda (_g239687239690_
                                                _g239688239692_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g239687239690_
                                                 _g239688239692_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp248685 '() _L239629_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp248686
                                    __tmp248684))
                         (let ((__tmp248680
                                (let ((__tmp248683
                                       (lambda (_g239694239696_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g239694239696_
                                            _L239630_))))
                                      (__tmp248681
                                       (let ((__tmp248682
                                              (lambda (_g239698239701_
                                                       _g239699239703_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g239698239701_
                                                        _g239699239703_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp248682 '() _L239631_))))
                                  (declare (not safe))
                                  (find __tmp248683 __tmp248681))))
                           (declare (not safe))
                           (not __tmp248680)))
                    (___kont247288247289_ _L239629_ _L239630_ _L239631_)
                    (___match247329247330_
                     _e238955239517_
                     _hd238954239520_
                     _tl238953239522_
                     ___splice247290247291_
                     _target238956239525_
                     _tl238958239527_)))
              (___match247329247330_
               _e238955239517_
               _hd238954239520_
               _tl238953239522_
               ___splice247290247291_
               _target238956239525_
               _tl238958239527_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop238983239594_
                                     _target238980239589_
                                     '())))
                                (___match247329247330_
                                 _e238955239517_
                                 _hd238954239520_
                                 _tl238953239522_
                                 ___splice247290247291_
                                 _target238956239525_
                                 _tl238958239527_))))
                        (___match247329247330_
                         _e238955239517_
                         _hd238954239520_
                         _tl238953239522_
                         ___splice247290247291_
                         _target238956239525_
                         _tl238958239527_))
                    (___match247329247330_
                     _e238955239517_
                     _hd238954239520_
                     _tl238953239522_
                     ___splice247290247291_
                     _target238956239525_
                     _tl238958239527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247329247330_
                                                     _e238955239517_
                                                     _hd238954239520_
                                                     _tl238953239522_
                                                     ___splice247290247291_
                                                     _target238956239525_
                                                     _tl238958239527_))
                                                (___match247329247330_
                                                 _e238955239517_
                                                 _hd238954239520_
                                                 _tl238953239522_
                                                 ___splice247290247291_
                                                 _target238956239525_
                                                 _tl238958239527_))
                                            (___match247329247330_
                                             _e238955239517_
                                             _hd238954239520_
                                             _tl238953239522_
                                             ___splice247290247291_
                                             _target238956239525_
                                             _tl238958239527_))))
                                    (___match247329247330_
                                     _e238955239517_
                                     _hd238954239520_
                                     _tl238953239522_
                                     ___splice247290247291_
                                     _target238956239525_
                                     _tl238958239527_))))
                            (___match247329247330_
                             _e238955239517_
                             _hd238954239520_
                             _tl238953239522_
                             ___splice247290247291_
                             _target238956239525_
                             _tl238958239527_))
                        (___match247329247330_
                         _e238955239517_
                         _hd238954239520_
                         _tl238953239522_
                         ___splice247290247291_
                         _target238956239525_
                         _tl238958239527_))
                    (___match247329247330_
                     _e238955239517_
                     _hd238954239520_
                     _tl238953239522_
                     ___splice247290247291_
                     _target238956239525_
                     _tl238958239527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247329247330_
                                                     _e238955239517_
                                                     _hd238954239520_
                                                     _tl238953239522_
                                                     ___splice247290247291_
                                                     _target238956239525_
                                                     _tl238958239527_))))
                                            (___match247329247330_
                                             _e238955239517_
                                             _hd238954239520_
                                             _tl238953239522_
                                             ___splice247290247291_
                                             _target238956239525_
                                             _tl238958239527_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop238959239530_ _target238956239525_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx247286247287_))
                  (let ((_e238955239517_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx247286247287_))))
                    (let ((_tl238953239522_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238955239517_)))
                          (_hd238954239520_
                           (let ()
                             (declare (not safe))
                             (##car _e238955239517_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd238954239520_))
                          (let ((___splice247290247291_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd238954239520_
                                    '0))))
                            (let ((_tl238958239527_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice247290247291_ '1)))
                                  (_target238956239525_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice247290247291_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238958239527_))
                                  (___match247317247318_
                                   _e238955239517_
                                   _hd238954239520_
                                   _tl238953239522_
                                   ___splice247290247291_
                                   _target238956239525_
                                   _tl238958239527_)
                                  (___match247329247330_
                                   _e238955239517_
                                   _hd238954239520_
                                   _tl238953239522_
                                   ___splice247290247291_
                                   _target238956239525_
                                   _tl238958239527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238953239522_))
                              (let ((_e239070239125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238953239522_))))
                                (let ((_tl239068239130_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239070239125_)))
                                      (_hd239069239128_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239070239125_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd239069239128_))
                                      (let ((_e239073239133_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd239069239128_))))
                                        (let ((_tl239071239138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239073239133_)))
                                              (_hd239072239136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239073239133_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd239072239136_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd239072239136_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl239071239138_))
                                                      (let ((_e239076239141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl239071239138_))))
                (let ((_tl239074239146_
                       (let () (declare (not safe)) (##cdr _e239076239141_)))
                      (_hd239075239144_
                       (let () (declare (not safe)) (##car _e239076239141_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd239075239144_))
                      (let ((_e239079239149_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd239075239144_))))
                        (let ((_tl239077239154_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e239079239149_)))
                              (_hd239078239152_
                               (let ()
                                 (declare (not safe))
                                 (##car _e239079239149_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd239078239152_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd239078239152_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl239077239154_))
                                      (let ((_e239082239157_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl239077239154_))))
                                        (let ((_tl239080239162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e239082239157_)))
                                              (_hd239081239160_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e239082239157_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239080239162_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl239074239146_))
                                                  (let ((_e239085239165_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl239074239146_))))
                                                    (let ((_tl239083239170_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e239085239165_)))
                                                          (_hd239084239168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e239085239165_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd239084239168_))
                                                          (let ((_e239088239173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd239084239168_))))
                    (let ((_tl239086239178_
                           (let ()
                             (declare (not safe))
                             (##cdr _e239088239173_)))
                          (_hd239087239176_
                           (let ()
                             (declare (not safe))
                             (##car _e239088239173_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd239087239176_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd239087239176_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl239086239178_))
                                  (let ((_e239091239181_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl239086239178_))))
                                    (let ((_tl239089239186_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e239091239181_)))
                                          (_hd239090239184_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e239091239181_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239089239186_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl239083239170_))
                                              (let ((_e239094239189_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl239083239170_))))
                                                (let ((_tl239092239194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e239094239189_)))
                                                      (_hd239093239192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e239094239189_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd239093239192_))
                                                      (let ((_e239097239197_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd239093239192_))))
                (let ((_tl239095239202_
                       (let () (declare (not safe)) (##cdr _e239097239197_)))
                      (_hd239096239200_
                       (let () (declare (not safe)) (##car _e239097239197_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd239096239200_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd239096239200_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl239095239202_))
                              (let ((_e239100239205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl239095239202_))))
                                (let ((_tl239098239210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e239100239205_)))
                                      (_hd239099239208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e239100239205_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl239098239210_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl239092239194_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl239068239130_))
                                              (___match247427247428_
                                               _e238955239517_
                                               _hd238954239520_
                                               _tl238953239522_
                                               _e239070239125_
                                               _hd239069239128_
                                               _tl239068239130_
                                               _e239073239133_
                                               _hd239072239136_
                                               _tl239071239138_
                                               _e239076239141_
                                               _hd239075239144_
                                               _tl239074239146_
                                               _e239079239149_
                                               _hd239078239152_
                                               _tl239077239154_
                                               _e239082239157_
                                               _hd239081239160_
                                               _tl239080239162_
                                               _e239085239165_
                                               _hd239084239168_
                                               _tl239083239170_
                                               _e239088239173_
                                               _hd239087239176_
                                               _tl239086239178_
                                               _e239091239181_
                                               _hd239090239184_
                                               _tl239089239186_
                                               _e239094239189_
                                               _hd239093239192_
                                               _tl239092239194_
                                               _e239097239197_
                                               _hd239096239200_
                                               _tl239095239202_
                                               _e239100239205_
                                               _hd239099239208_
                                               _tl239098239210_)
                                              (___kont247302247303_))
                                          (___kont247302247303_))
                                      (___kont247302247303_))))
                              (___kont247302247303_))
                          (___kont247302247303_))
                      (___kont247302247303_))))
              (___kont247302247303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont247302247303_))
                                          (___kont247302247303_))))
                                  (___kont247302247303_))
                              (___kont247302247303_))
                          (___kont247302247303_))))
                  (___kont247302247303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont247302247303_))
                                              (___kont247302247303_))))
                                      (___kont247302247303_))
                                  (___kont247302247303_))
                              (___kont247302247303_))))
                      (___kont247302247303_))))
              (___kont247302247303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont247302247303_))
                                              (___kont247302247303_))))
                                      (___kont247302247303_))))
                              (___kont247302247303_)))))
                  (___kont247302247303_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form238411_)
        (let* ((___stx247430247431_ _form238411_)
               (_g238415238539_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247430247431_)))))
          (let ((___kont247432247433_
                 (lambda (_L238909_ _L238910_ _L238911_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L238910_))))
                (___kont247438247439_
                 (lambda (_L238757_ _L238758_ _L238759_ _L238760_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L238757_))))
                (___kont247442247443_
                 (lambda (_L238624_ _L238625_ _L238626_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L238624_)))))
            (let* ((___match247539247540_
                    (lambda (_e238507238544_
                             _hd238506238547_
                             _tl238505238549_
                             _e238510238552_
                             _hd238509238555_
                             _tl238508238557_
                             _e238513238560_
                             _hd238512238563_
                             _tl238511238565_
                             _e238516238568_
                             _hd238515238571_
                             _tl238514238573_
                             _e238519238576_
                             _hd238518238579_
                             _tl238517238581_
                             _e238522238584_
                             _hd238521238587_
                             _tl238520238589_
                             _e238525238592_
                             _hd238524238595_
                             _tl238523238597_
                             _e238528238600_
                             _hd238527238603_
                             _tl238526238605_
                             _e238531238608_
                             _hd238530238611_
                             _tl238529238613_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238523238597_))
                          (let ((_e238534238616_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238523238597_))))
                            (let ((_tl238532238621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238534238616_)))
                                  (_hd238533238619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238534238616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238532238621_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238508238557_))
                                      (___kont247442247443_
                                       _hd238530238611_
                                       _hd238521238587_
                                       _hd238506238547_)
                                      (let ()
                                        (declare (not safe))
                                        (_g238415238539_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g238415238539_)))))
                          (let () (declare (not safe)) (_g238415238539_)))))
                   (___match247469247470_
                    (lambda (_e238468238661_
                             _hd238467238664_
                             _tl238466238666_
                             ___splice247440247441_
                             _target238469238669_
                             _tl238471238671_)
                      (letrec ((_loop238472238674_
                                (lambda (_hd238470238677_ _arg238476238679_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238470238677_))
                                      (let ((_e238473238682_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238470238677_))))
                                        (let ((_lp-tl238475238687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238473238682_)))
                                              (_lp-hd238474238685_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238473238682_))))
                                          (let ((__tmp248694
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238474238685_
                                                         _arg238476238679_))))
                                            (declare (not safe))
                                            (_loop238472238674_
                                             _lp-tl238475238687_
                                             __tmp248694))))
                                      (let ((_arg238477238690_
                                             (reverse _arg238476238679_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238466238666_))
                                            (let ((_e238480238693_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238466238666_))))
                                              (let ((_tl238478238698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238480238693_)))
                                                    (_hd238479238696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238480238693_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238479238696_))
                                                    (let ((_e238483238701_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238479238696_))))
                                                      (let ((_tl238481238706_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238483238701_)))
                    (_hd238482238704_
                     (let () (declare (not safe)) (##car _e238483238701_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238482238704_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd238482238704_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238481238706_))
                            (let ((_e238486238709_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238481238706_))))
                              (let ((_tl238484238714_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238486238709_)))
                                    (_hd238485238712_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238486238709_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238485238712_))
                                    (let ((_e238489238717_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238485238712_))))
                                      (let ((_tl238487238722_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238489238717_)))
                                            (_hd238488238720_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238489238717_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238488238720_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd238488238720_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238487238722_))
                                                    (let ((_e238492238725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238487238722_))))
                                                      (let ((_tl238490238730_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238492238725_)))
                    (_hd238491238728_
                     (let () (declare (not safe)) (##car _e238492238725_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl238490238730_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl238484238714_))
                        (let ((_e238495238733_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl238484238714_))))
                          (let ((_tl238493238738_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e238495238733_)))
                                (_hd238494238736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e238495238733_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd238494238736_))
                                (let ((_e238498238741_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd238494238736_))))
                                  (let ((_tl238496238746_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238498238741_)))
                                        (_hd238497238744_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238498238741_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd238497238744_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd238497238744_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl238496238746_))
                                                (let ((_e238501238749_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl238496238746_))))
                                                  (let ((_tl238499238754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238501238749_)))
                                                        (_hd238500238752_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238501238749_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl238499238754_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl238478238698_))
                                                            (___kont247438247439_
                                                             _hd238500238752_
                                                             _hd238491238728_
                                                             _tl238471238671_
                                                             _arg238477238690_)
                                                            (___match247539247540_
                                                             _e238468238661_
                                                             _hd238467238664_
                                                             _tl238466238666_
                                                             _e238480238693_
                                                             _hd238479238696_
                                                             _tl238478238698_
                                                             _e238483238701_
                                                             _hd238482238704_
                                                             _tl238481238706_
                                                             _e238486238709_
                                                             _hd238485238712_
                                                             _tl238484238714_
                                                             _e238489238717_
                                                             _hd238488238720_
                                                             _tl238487238722_
                                                             _e238492238725_
                                                             _hd238491238728_
                                                             _tl238490238730_
                                                             _e238495238733_
                                                             _hd238494238736_
                                                             _tl238493238738_
                                                             _e238498238741_
                                                             _hd238497238744_
                                                             _tl238496238746_
                                                             _e238501238749_
                                                             _hd238500238752_
                                                             _tl238499238754_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g238415238539_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238415238539_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g238415238539_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g238415238539_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g238415238539_)))))
                        (let () (declare (not safe)) (_g238415238539_)))
                    (let () (declare (not safe)) (_g238415238539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g238415238539_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g238415238539_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g238415238539_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g238415238539_)))))
                            (let () (declare (not safe)) (_g238415238539_)))
                        (let () (declare (not safe)) (_g238415238539_)))
                    (let () (declare (not safe)) (_g238415238539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g238415238539_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g238415238539_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238472238674_ _target238469238669_ '())))))
                   (___match247457247458_
                    (lambda (_e238422238797_
                             _hd238421238800_
                             _tl238420238802_
                             ___splice247434247435_
                             _target238423238805_
                             _tl238425238807_)
                      (letrec ((_loop238426238810_
                                (lambda (_hd238424238813_ _arg238430238815_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238424238813_))
                                      (let ((_e238427238818_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238424238813_))))
                                        (let ((_lp-tl238429238823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238427238818_)))
                                              (_lp-hd238428238821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238427238818_))))
                                          (let ((__tmp248696
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238428238821_
                                                         _arg238430238815_))))
                                            (declare (not safe))
                                            (_loop238426238810_
                                             _lp-tl238429238823_
                                             __tmp248696))))
                                      (let ((_arg238431238826_
                                             (reverse _arg238430238815_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238420238802_))
                                            (let ((_e238434238829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238420238802_))))
                                              (let ((_tl238432238834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238434238829_)))
                                                    (_hd238433238832_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238434238829_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd238433238832_))
                                                    (let ((_e238437238837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd238433238832_))))
                                                      (let ((_tl238435238842_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238437238837_)))
                    (_hd238436238840_
                     (let () (declare (not safe)) (##car _e238437238837_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd238436238840_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd238436238840_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238435238842_))
                            (let ((_e238440238845_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238435238842_))))
                              (let ((_tl238438238850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238440238845_)))
                                    (_hd238439238848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238440238845_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd238439238848_))
                                    (let ((_e238443238853_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd238439238848_))))
                                      (let ((_tl238441238858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e238443238853_)))
                                            (_hd238442238856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e238443238853_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd238442238856_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd238442238856_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl238441238858_))
                                                    (let ((_e238446238861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl238441238858_))))
                                                      (let ((_tl238444238866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e238446238861_)))
                    (_hd238445238864_
                     (let () (declare (not safe)) (##car _e238446238861_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl238444238866_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl238438238850_))
                        (let ((___splice247436247437_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl238438238850_
                                  '0))))
                          (let ((_tl238449238871_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice247436247437_ '1)))
                                (_target238447238869_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice247436247437_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl238449238871_))
                                (letrec ((_loop238450238874_
                                          (lambda (_hd238448238877_
                                                   _xarg238454238879_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238448238877_))
                                                (let ((_e238451238882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238448238877_))))
                                                  (let ((_lp-tl238453238887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238451238882_)))
                                                        (_lp-hd238452238885_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238451238882_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd238452238885_))
                                                        (let ((_e238458238890_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd238452238885_))))
                  (let ((_tl238456238895_
                         (let () (declare (not safe)) (##cdr _e238458238890_)))
                        (_hd238457238893_
                         (let ()
                           (declare (not safe))
                           (##car _e238458238890_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238457238893_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd238457238893_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl238456238895_))
                                (let ((_e238461238898_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl238456238895_))))
                                  (let ((_tl238459238903_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238461238898_)))
                                        (_hd238460238901_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238461238898_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238459238903_))
                                        (let ((__tmp248695
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd238460238901_
                                                       _xarg238454238879_))))
                                          (declare (not safe))
                                          (_loop238450238874_
                                           _lp-tl238453238887_
                                           __tmp248695))
                                        (___match247469247470_
                                         _e238422238797_
                                         _hd238421238800_
                                         _tl238420238802_
                                         ___splice247434247435_
                                         _target238423238805_
                                         _tl238425238807_))))
                                (___match247469247470_
                                 _e238422238797_
                                 _hd238421238800_
                                 _tl238420238802_
                                 ___splice247434247435_
                                 _target238423238805_
                                 _tl238425238807_))
                            (___match247469247470_
                             _e238422238797_
                             _hd238421238800_
                             _tl238420238802_
                             ___splice247434247435_
                             _target238423238805_
                             _tl238425238807_))
                        (___match247469247470_
                         _e238422238797_
                         _hd238421238800_
                         _tl238420238802_
                         ___splice247434247435_
                         _target238423238805_
                         _tl238425238807_))))
                (___match247469247470_
                 _e238422238797_
                 _hd238421238800_
                 _tl238420238802_
                 ___splice247434247435_
                 _target238423238805_
                 _tl238425238807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg238455238906_
                                                       (reverse _xarg238454238879_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238432238834_))
                                                      (___kont247432247433_
                                                       _xarg238455238906_
                                                       _hd238445238864_
                                                       _arg238431238826_)
                                                      (___match247469247470_
                                                       _e238422238797_
                                                       _hd238421238800_
                                                       _tl238420238802_
                                                       ___splice247434247435_
                                                       _target238423238805_
                                                       _tl238425238807_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop238450238874_
                                     _target238447238869_
                                     '())))
                                (___match247469247470_
                                 _e238422238797_
                                 _hd238421238800_
                                 _tl238420238802_
                                 ___splice247434247435_
                                 _target238423238805_
                                 _tl238425238807_))))
                        (___match247469247470_
                         _e238422238797_
                         _hd238421238800_
                         _tl238420238802_
                         ___splice247434247435_
                         _target238423238805_
                         _tl238425238807_))
                    (___match247469247470_
                     _e238422238797_
                     _hd238421238800_
                     _tl238420238802_
                     ___splice247434247435_
                     _target238423238805_
                     _tl238425238807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247469247470_
                                                     _e238422238797_
                                                     _hd238421238800_
                                                     _tl238420238802_
                                                     ___splice247434247435_
                                                     _target238423238805_
                                                     _tl238425238807_))
                                                (___match247469247470_
                                                 _e238422238797_
                                                 _hd238421238800_
                                                 _tl238420238802_
                                                 ___splice247434247435_
                                                 _target238423238805_
                                                 _tl238425238807_))
                                            (___match247469247470_
                                             _e238422238797_
                                             _hd238421238800_
                                             _tl238420238802_
                                             ___splice247434247435_
                                             _target238423238805_
                                             _tl238425238807_))))
                                    (___match247469247470_
                                     _e238422238797_
                                     _hd238421238800_
                                     _tl238420238802_
                                     ___splice247434247435_
                                     _target238423238805_
                                     _tl238425238807_))))
                            (___match247469247470_
                             _e238422238797_
                             _hd238421238800_
                             _tl238420238802_
                             ___splice247434247435_
                             _target238423238805_
                             _tl238425238807_))
                        (___match247469247470_
                         _e238422238797_
                         _hd238421238800_
                         _tl238420238802_
                         ___splice247434247435_
                         _target238423238805_
                         _tl238425238807_))
                    (___match247469247470_
                     _e238422238797_
                     _hd238421238800_
                     _tl238420238802_
                     ___splice247434247435_
                     _target238423238805_
                     _tl238425238807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247469247470_
                                                     _e238422238797_
                                                     _hd238421238800_
                                                     _tl238420238802_
                                                     ___splice247434247435_
                                                     _target238423238805_
                                                     _tl238425238807_))))
                                            (___match247469247470_
                                             _e238422238797_
                                             _hd238421238800_
                                             _tl238420238802_
                                             ___splice247434247435_
                                             _target238423238805_
                                             _tl238425238807_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop238426238810_ _target238423238805_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx247430247431_))
                  (let ((_e238422238797_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx247430247431_))))
                    (let ((_tl238420238802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238422238797_)))
                          (_hd238421238800_
                           (let ()
                             (declare (not safe))
                             (##car _e238422238797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd238421238800_))
                          (let ((___splice247434247435_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd238421238800_
                                    '0))))
                            (let ((_tl238425238807_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice247434247435_ '1)))
                                  (_target238423238805_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice247434247435_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238425238807_))
                                  (___match247457247458_
                                   _e238422238797_
                                   _hd238421238800_
                                   _tl238420238802_
                                   ___splice247434247435_
                                   _target238423238805_
                                   _tl238425238807_)
                                  (___match247469247470_
                                   _e238422238797_
                                   _hd238421238800_
                                   _tl238420238802_
                                   ___splice247434247435_
                                   _target238423238805_
                                   _tl238425238807_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238420238802_))
                              (let ((_e238510238552_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238420238802_))))
                                (let ((_tl238508238557_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238510238552_)))
                                      (_hd238509238555_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238510238552_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238509238555_))
                                      (let ((_e238513238560_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238509238555_))))
                                        (let ((_tl238511238565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238513238560_)))
                                              (_hd238512238563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238513238560_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd238512238563_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd238512238563_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl238511238565_))
                                                      (let ((_e238516238568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl238511238565_))))
                (let ((_tl238514238573_
                       (let () (declare (not safe)) (##cdr _e238516238568_)))
                      (_hd238515238571_
                       (let () (declare (not safe)) (##car _e238516238568_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd238515238571_))
                      (let ((_e238519238576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd238515238571_))))
                        (let ((_tl238517238581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238519238576_)))
                              (_hd238518238579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238519238576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd238518238579_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd238518238579_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl238517238581_))
                                      (let ((_e238522238584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl238517238581_))))
                                        (let ((_tl238520238589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238522238584_)))
                                              (_hd238521238587_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238522238584_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238520238589_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238514238573_))
                                                  (let ((_e238525238592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238514238573_))))
                                                    (let ((_tl238523238597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238525238592_)))
                                                          (_hd238524238595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238525238592_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd238524238595_))
                                                          (let ((_e238528238600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd238524238595_))))
                    (let ((_tl238526238605_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238528238600_)))
                          (_hd238527238603_
                           (let ()
                             (declare (not safe))
                             (##car _e238528238600_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd238527238603_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd238527238603_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl238526238605_))
                                  (let ((_e238531238608_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl238526238605_))))
                                    (let ((_tl238529238613_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238531238608_)))
                                          (_hd238530238611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238531238608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238529238613_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238523238597_))
                                              (let ((_e238534238616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238523238597_))))
                                                (let ((_tl238532238621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238534238616_)))
                                                      (_hd238533238619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238534238616_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238532238621_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238508238557_))
                                                          (___kont247442247443_
                                                           _hd238530238611_
                                                           _hd238521238587_
                                                           _hd238421238800_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g238415238539_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g238415238539_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g238415238539_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g238415238539_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g238415238539_)))
                              (let () (declare (not safe)) (_g238415238539_)))
                          (let () (declare (not safe)) (_g238415238539_)))))
                  (let () (declare (not safe)) (_g238415238539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238415238539_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g238415238539_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238415238539_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g238415238539_)))
                              (let ()
                                (declare (not safe))
                                (_g238415238539_)))))
                      (let () (declare (not safe)) (_g238415238539_)))))
              (let () (declare (not safe)) (_g238415238539_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g238415238539_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g238415238539_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g238415238539_)))))
                              (let ()
                                (declare (not safe))
                                (_g238415238539_))))))
                  (let () (declare (not safe)) (_g238415238539_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form238215_)
        (let* ((_g238217238231_
                (lambda (_g238218238228_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g238218238228_))))
               (_g238216238408_
                (lambda (_g238218238234_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g238218238234_))
                      (let ((_e238223238236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g238218238234_))))
                        (let ((_hd238222238239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238223238236_)))
                              (_tl238221238241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238223238236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238221238241_))
                              (let ((_e238226238244_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238221238241_))))
                                (let ((_hd238225238247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238226238244_)))
                                      (_tl238224238249_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238226238244_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238224238249_))
                                      ((lambda (_L238252_ _L238253_)
                                         (let* ((___stx247552247553_ _L238253_)
                                                (_g238268238296_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx247552247553_)))))
                                           (let ((___kont247554247555_
                                                  (lambda (_L238387_)
                                                    (length (let ((__tmp248697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g238397238400_ _g238398238402_)
                             (let ()
                               (declare (not safe))
                               (cons _g238397238400_ _g238398238402_)))))
                      (declare (not safe))
                      (foldr1 __tmp248697 '() _L238387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont247558247559_
                                                  (lambda (_L238338_ _L238339_)
                                                    (let ((__tmp248698
                                                           (length (let ((__tmp248699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g238350238353_ _g238351238355_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g238350238353_
                                            _g238351238355_)))))
                             (declare (not safe))
                             (foldr1 __tmp248699 '() _L238339_)))))
              (declare (not safe))
              (cons __tmp248698 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont247562247563_
                                                  (lambda (_L238301_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match247577247578_
                                                     (lambda (___splice247560247561_
                                                              _target238282238314_
                                                              _tl238284238316_)
                                                       (letrec ((_loop238285238319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd238283238322_ _arg238289238324_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238283238322_))
                               (let ((_e238286238327_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238283238322_))))
                                 (let ((_lp-tl238288238332_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238286238327_)))
                                       (_lp-hd238287238330_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238286238327_))))
                                   (let ((__tmp248700
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd238287238330_
                                                  _arg238289238324_))))
                                     (declare (not safe))
                                     (_loop238285238319_
                                      _lp-tl238288238332_
                                      __tmp248700))))
                               (let ((_arg238290238335_
                                      (reverse _arg238289238324_)))
                                 (___kont247558247559_
                                  _tl238284238316_
                                  _arg238290238335_))))))
                 (let ()
                   (declare (not safe))
                   (_loop238285238319_ _target238282238314_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247571247572_
                                                     (lambda (___splice247556247557_
                                                              _target238271238363_
                                                              _tl238273238365_)
                                                       (letrec ((_loop238274238368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd238272238371_ _arg238278238373_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd238272238371_))
                               (let ((_e238275238376_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd238272238371_))))
                                 (let ((_lp-tl238277238381_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e238275238376_)))
                                       (_lp-hd238276238379_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e238275238376_))))
                                   (let ((__tmp248701
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd238276238379_
                                                  _arg238278238373_))))
                                     (declare (not safe))
                                     (_loop238274238368_
                                      _lp-tl238277238381_
                                      __tmp248701))))
                               (let ((_arg238279238384_
                                      (reverse _arg238278238373_)))
                                 (___kont247554247555_ _arg238279238384_))))))
                 (let ()
                   (declare (not safe))
                   (_loop238274238368_ _target238271238363_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx247552247553_))
                                                   (let ((___splice247556247557_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx247552247553_
                                                             '0))))
                                                     (let ((_tl238273238365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice247556247557_
                                                               '1)))
                                                           (_target238271238363_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice247556247557_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl238273238365_))
                                                           (___match247571247572_
                                                            ___splice247556247557_
                                                            _target238271238363_
                                                            _tl238273238365_)
                                                           (___match247577247578_
                                                            ___splice247556247557_
                                                            _target238271238363_
                                                            _tl238273238365_))))
                                                   (___kont247562247563_
                                                    ___stx247552247553_))))))
                                       _hd238225238247_
                                       _hd238222238239_)
                                      (let ()
                                        (declare (not safe))
                                        (_g238217238231_ _g238218238234_)))))
                              (let ()
                                (declare (not safe))
                                (_g238217238231_ _g238218238234_)))))
                      (let ()
                        (declare (not safe))
                        (_g238217238231_ _g238218238234_))))))
          (declare (not safe))
          (_g238216238408_ _form238215_))))
    (define gxc#lambda-expr?
      (lambda (_expr238168_)
        (let* ((___stx247580247581_ _expr238168_)
               (_g238171238181_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247580247581_)))))
          (let ((___kont247582247583_ (lambda (_L238201_) '#t))
                (___kont247584247585_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx247580247581_))
                (let ((_e238176238193_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx247580247581_))))
                  (let ((_tl238174238198_
                         (let () (declare (not safe)) (##cdr _e238176238193_)))
                        (_hd238175238196_
                         (let ()
                           (declare (not safe))
                           (##car _e238176238193_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238175238196_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd238175238196_))
                            (___kont247582247583_ _tl238174238198_)
                            (___kont247584247585_))
                        (___kont247584247585_))))
                (___kont247584247585_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr238121_)
        (let* ((___stx247598247599_ _expr238121_)
               (_g238124238134_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247598247599_)))))
          (let ((___kont247600247601_ (lambda (_L238154_) '#t))
                (___kont247602247603_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx247598247599_))
                (let ((_e238129238146_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx247598247599_))))
                  (let ((_tl238127238151_
                         (let () (declare (not safe)) (##cdr _e238129238146_)))
                        (_hd238128238149_
                         (let ()
                           (declare (not safe))
                           (##car _e238129238146_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd238128238149_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd238128238149_))
                            (___kont247600247601_ _tl238127238151_)
                            (___kont247602247603_))
                        (___kont247602247603_))))
                (___kont247602247603_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr237990_)
        (let* ((___stx247616247617_ _expr237990_)
               (_g237993238023_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247616247617_)))))
          (let ((___kont247618247619_
                 (lambda (_L238091_ _L238092_ _L238093_)
                   (if (let () (declare (not safe)) (gx#identifier? _L238093_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L238092_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L238091_))
                           '#f)
                       '#f)))
                (___kont247620247621_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx247616247617_))
                (let ((_e238000238035_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx247616247617_))))
                  (let ((_tl237998238040_
                         (let () (declare (not safe)) (##cdr _e238000238035_)))
                        (_hd237999238038_
                         (let ()
                           (declare (not safe))
                           (##car _e238000238035_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd237999238038_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd237999238038_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237998238040_))
                                (let ((_e238003238043_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237998238040_))))
                                  (let ((_tl238001238048_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e238003238043_)))
                                        (_hd238002238046_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e238003238043_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd238002238046_))
                                        (let ((_e238006238051_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd238002238046_))))
                                          (let ((_tl238004238056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e238006238051_)))
                                                (_hd238005238054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e238006238051_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd238005238054_))
                                                (let ((_e238009238059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd238005238054_))))
                                                  (let ((_tl238007238064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e238009238059_)))
                                                        (_hd238008238062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e238009238059_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd238008238062_))
                                                        (let ((_e238012238067_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd238008238062_))))
                  (let ((_tl238010238072_
                         (let () (declare (not safe)) (##cdr _e238012238067_)))
                        (_hd238011238070_
                         (let ()
                           (declare (not safe))
                           (##car _e238012238067_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl238010238072_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl238007238064_))
                            (let ((_e238015238075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl238007238064_))))
                              (let ((_tl238013238080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e238015238075_)))
                                    (_hd238014238078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e238015238075_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl238013238080_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl238004238056_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl238001238048_))
                                            (let ((_e238018238083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl238001238048_))))
                                              (let ((_tl238016238088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e238018238083_)))
                                                    (_hd238017238086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e238018238083_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl238016238088_))
                                                    (___kont247618247619_
                                                     _hd238017238086_
                                                     _hd238014238078_
                                                     _hd238011238070_)
                                                    (___kont247620247621_))))
                                            (___kont247620247621_))
                                        (___kont247620247621_))
                                    (___kont247620247621_))))
                            (___kont247620247621_))
                        (___kont247620247621_))))
                (___kont247620247621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247620247621_))))
                                        (___kont247620247621_))))
                                (___kont247620247621_))
                            (___kont247620247621_))
                        (___kont247620247621_))))
                (___kont247620247621_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr237315_)
        (let* ((___stx247678247679_ _expr237315_)
               (_g237318237476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx247678247679_)))))
          (let ((___kont247680247681_
                 (lambda (_L237864_
                          _L237865_
                          _L237866_
                          _L237867_
                          _L237868_
                          _L237869_
                          _L237870_
                          _L237871_
                          _L237872_
                          _L237873_
                          _L237874_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L237871_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L237867_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L237866_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237874_
                                      _L237865_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L237873_
                                          _L237870_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L237868_
                                              _L237864_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L237872_
                                              _L237869_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont247682247683_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx247678247679_))
                (let ((_e237333237488_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx247678247679_))))
                  (let ((_tl237331237493_
                         (let () (declare (not safe)) (##cdr _e237333237488_)))
                        (_hd237332237491_
                         (let ()
                           (declare (not safe))
                           (##car _e237333237488_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd237332237491_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd237332237491_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237331237493_))
                                (let ((_e237336237496_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237331237493_))))
                                  (let ((_tl237334237501_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237336237496_)))
                                        (_hd237335237499_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237336237496_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237335237499_))
                                        (let ((_e237339237504_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237335237499_))))
                                          (let ((_tl237337237509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237339237504_)))
                                                (_hd237338237507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237339237504_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd237338237507_))
                                                (let ((_e237342237512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd237338237507_))))
                                                  (let ((_tl237340237517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237342237512_)))
                                                        (_hd237341237515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237342237512_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd237341237515_))
                                                        (let ((_e237345237520_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd237341237515_))))
                  (let ((_tl237343237525_
                         (let () (declare (not safe)) (##cdr _e237345237520_)))
                        (_hd237344237523_
                         (let ()
                           (declare (not safe))
                           (##car _e237345237520_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237343237525_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237340237517_))
                            (let ((_e237348237528_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237340237517_))))
                              (let ((_tl237346237533_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237348237528_)))
                                    (_hd237347237531_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237348237528_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237347237531_))
                                    (let ((_e237351237536_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237347237531_))))
                                      (let ((_tl237349237541_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237351237536_)))
                                            (_hd237350237539_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237351237536_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237350237539_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd237350237539_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237349237541_))
                                                    (let ((_e237354237544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237349237541_))))
                                                      (let ((_tl237352237549_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237354237544_)))
                    (_hd237353237547_
                     (let () (declare (not safe)) (##car _e237354237544_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237353237547_))
                    (let ((_e237357237552_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237353237547_))))
                      (let ((_tl237355237557_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237357237552_)))
                            (_hd237356237555_
                             (let ()
                               (declare (not safe))
                               (##car _e237357237552_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd237356237555_))
                            (let ((_e237360237560_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd237356237555_))))
                              (let ((_tl237358237565_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237360237560_)))
                                    (_hd237359237563_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237360237560_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237359237563_))
                                    (let ((_e237363237568_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237359237563_))))
                                      (let ((_tl237361237573_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237363237568_)))
                                            (_hd237362237571_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237363237568_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237361237573_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237358237565_))
                                                (let ((_e237366237576_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237358237565_))))
                                                  (let ((_tl237364237581_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237366237576_)))
                                                        (_hd237365237579_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237366237576_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237364237581_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl237355237557_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl237352237549_))
                        (let ((_e237369237584_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237352237549_))))
                          (let ((_tl237367237589_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237369237584_)))
                                (_hd237368237587_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237369237584_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd237368237587_))
                                (let ((_e237372237592_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd237368237587_))))
                                  (let ((_tl237370237597_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237372237592_)))
                                        (_hd237371237595_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237372237592_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd237371237595_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd237371237595_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237370237597_))
                                                (let ((_e237375237600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237370237597_))))
                                                  (let ((_tl237373237605_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237375237600_)))
                                                        (_hd237374237603_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237375237600_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd237374237603_))
                                                        (let ((_e237378237608_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd237374237603_))))
                  (let ((_tl237376237613_
                         (let () (declare (not safe)) (##cdr _e237378237608_)))
                        (_hd237377237611_
                         (let ()
                           (declare (not safe))
                           (##car _e237378237608_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237373237605_))
                        (let ((_e237381237616_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237373237605_))))
                          (let ((_tl237379237621_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237381237616_)))
                                (_hd237380237619_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237381237616_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd237380237619_))
                                (let ((_e237384237624_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd237380237619_))))
                                  (let ((_tl237382237629_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237384237624_)))
                                        (_hd237383237627_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237384237624_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd237383237627_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd237383237627_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237382237629_))
                                                (let ((_e237387237632_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237382237629_))))
                                                  (let ((_tl237385237637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237387237632_)))
                                                        (_hd237386237635_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237387237632_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd237386237635_))
                                                        (let ((_e237390237640_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd237386237635_))))
                  (let ((_tl237388237645_
                         (let () (declare (not safe)) (##cdr _e237390237640_)))
                        (_hd237389237643_
                         (let ()
                           (declare (not safe))
                           (##car _e237390237640_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd237389237643_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd237389237643_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237388237645_))
                                (let ((_e237393237648_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237388237645_))))
                                  (let ((_tl237391237653_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237393237648_)))
                                        (_hd237392237651_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237393237648_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237391237653_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237385237637_))
                                            (let ((_e237396237656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237385237637_))))
                                              (let ((_tl237394237661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237396237656_)))
                                                    (_hd237395237659_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237396237656_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd237395237659_))
                                                    (let ((_e237399237664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd237395237659_))))
                                                      (let ((_tl237397237669_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237399237664_)))
                    (_hd237398237667_
                     (let () (declare (not safe)) (##car _e237399237664_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd237398237667_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd237398237667_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237397237669_))
                            (let ((_e237402237672_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237397237669_))))
                              (let ((_tl237400237677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237402237672_)))
                                    (_hd237401237675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237402237672_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237400237677_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl237394237661_))
                                        (let ((_e237405237680_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl237394237661_))))
                                          (let ((_tl237403237685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237405237680_)))
                                                (_hd237404237683_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237405237680_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd237404237683_))
                                                (let ((_e237408237688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd237404237683_))))
                                                  (let ((_tl237406237693_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237408237688_)))
                                                        (_hd237407237691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237408237688_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd237407237691_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd237407237691_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl237406237693_))
                        (let ((_e237411237696_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237406237693_))))
                          (let ((_tl237409237701_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237411237696_)))
                                (_hd237410237699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237411237696_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl237409237701_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237379237621_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237367237589_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237346237533_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237337237509_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237334237501_))
                                                    (let ((_e237414237704_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237334237501_))))
                                                      (let ((_tl237412237709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237414237704_)))
                    (_hd237413237707_
                     (let () (declare (not safe)) (##car _e237414237704_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237413237707_))
                    (let ((_e237417237712_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237413237707_))))
                      (let ((_tl237415237717_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237417237712_)))
                            (_hd237416237715_
                             (let ()
                               (declare (not safe))
                               (##car _e237417237712_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd237416237715_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd237416237715_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl237415237717_))
                                    (let ((_e237420237720_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl237415237717_))))
                                      (let ((_tl237418237725_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237420237720_)))
                                            (_hd237419237723_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237420237720_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237418237725_))
                                            (let ((_e237423237728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237418237725_))))
                                              (let ((_tl237421237733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237423237728_)))
                                                    (_hd237422237731_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237423237728_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd237422237731_))
                                                    (let ((_e237426237736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd237422237731_))))
                                                      (let ((_tl237424237741_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237426237736_)))
                    (_hd237425237739_
                     (let () (declare (not safe)) (##car _e237426237736_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd237425237739_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd237425237739_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237424237741_))
                            (let ((_e237429237744_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237424237741_))))
                              (let ((_tl237427237749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237429237744_)))
                                    (_hd237428237747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237429237744_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237428237747_))
                                    (let ((_e237432237752_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237428237747_))))
                                      (let ((_tl237430237757_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237432237752_)))
                                            (_hd237431237755_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237432237752_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237431237755_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237431237755_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237430237757_))
                                                    (let ((_e237435237760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237430237757_))))
                                                      (let ((_tl237433237765_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237435237760_)))
                    (_hd237434237763_
                     (let () (declare (not safe)) (##car _e237435237760_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237433237765_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237427237749_))
                        (let ((_e237438237768_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237427237749_))))
                          (let ((_tl237436237773_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237438237768_)))
                                (_hd237437237771_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237438237768_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd237437237771_))
                                (let ((_e237441237776_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd237437237771_))))
                                  (let ((_tl237439237781_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237441237776_)))
                                        (_hd237440237779_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237441237776_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd237440237779_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd237440237779_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237439237781_))
                                                (let ((_e237444237784_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237439237781_))))
                                                  (let ((_tl237442237789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237444237784_)))
                                                        (_hd237443237787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237444237784_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237442237789_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237436237773_))
                                                            (let ((_e237447237792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237436237773_))))
                      (let ((_tl237445237797_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237447237792_)))
                            (_hd237446237795_
                             (let ()
                               (declare (not safe))
                               (##car _e237447237792_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd237446237795_))
                            (let ((_e237450237800_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd237446237795_))))
                              (let ((_tl237448237805_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237450237800_)))
                                    (_hd237449237803_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237450237800_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237449237803_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd237449237803_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237448237805_))
                                            (let ((_e237453237808_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237448237805_))))
                                              (let ((_tl237451237813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237453237808_)))
                                                    (_hd237452237811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237453237808_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl237451237813_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl237445237797_))
                                                        (let ((_e237456237816_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl237445237797_))))
                  (let ((_tl237454237821_
                         (let () (declare (not safe)) (##cdr _e237456237816_)))
                        (_hd237455237819_
                         (let ()
                           (declare (not safe))
                           (##car _e237456237816_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd237455237819_))
                        (let ((_e237459237824_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd237455237819_))))
                          (let ((_tl237457237829_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237459237824_)))
                                (_hd237458237827_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237459237824_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd237458237827_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd237458237827_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl237457237829_))
                                        (let ((_e237462237832_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl237457237829_))))
                                          (let ((_tl237460237837_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237462237832_)))
                                                (_hd237461237835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237462237832_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237460237837_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237454237821_))
                                                    (let ((_e237465237840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237454237821_))))
                                                      (let ((_tl237463237845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237465237840_)))
                    (_hd237464237843_
                     (let () (declare (not safe)) (##car _e237465237840_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd237464237843_))
                    (let ((_e237468237848_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd237464237843_))))
                      (let ((_tl237466237853_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237468237848_)))
                            (_hd237467237851_
                             (let ()
                               (declare (not safe))
                               (##car _e237468237848_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd237467237851_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd237467237851_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl237466237853_))
                                    (let ((_e237471237856_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl237466237853_))))
                                      (let ((_tl237469237861_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237471237856_)))
                                            (_hd237470237859_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237471237856_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237469237861_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237463237845_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl237421237733_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237412237709_))
                                                        (___kont247680247681_
                                                         _hd237470237859_
                                                         _hd237461237835_
                                                         _hd237443237787_
                                                         _hd237434237763_
                                                         _hd237419237723_
                                                         _hd237410237699_
                                                         _hd237401237675_
                                                         _hd237392237651_
                                                         _hd237377237611_
                                                         _hd237362237571_
                                                         _hd237344237523_)
                                                        (___kont247682247683_))
                                                    (___kont247682247683_))
                                                (___kont247682247683_))
                                            (___kont247682247683_))))
                                    (___kont247682247683_))
                                (___kont247682247683_))
                            (___kont247682247683_))))
                    (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))
                                                (___kont247682247683_))))
                                        (___kont247682247683_))
                                    (___kont247682247683_))
                                (___kont247682247683_))))
                        (___kont247682247683_))))
                (___kont247682247683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))))
                                            (___kont247682247683_))
                                        (___kont247682247683_))
                                    (___kont247682247683_))))
                            (___kont247682247683_))))
                    (___kont247682247683_))
                (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247682247683_))
                                            (___kont247682247683_))
                                        (___kont247682247683_))))
                                (___kont247682247683_))))
                        (___kont247682247683_))
                    (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))
                                                (___kont247682247683_))
                                            (___kont247682247683_))))
                                    (___kont247682247683_))))
                            (___kont247682247683_))
                        (___kont247682247683_))
                    (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))))
                                            (___kont247682247683_))))
                                    (___kont247682247683_))
                                (___kont247682247683_))
                            (___kont247682247683_))))
                    (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))
                                                (___kont247682247683_))
                                            (___kont247682247683_))
                                        (___kont247682247683_))
                                    (___kont247682247683_))
                                (___kont247682247683_))))
                        (___kont247682247683_))
                    (___kont247682247683_))
                (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247682247683_))))
                                        (___kont247682247683_))
                                    (___kont247682247683_))))
                            (___kont247682247683_))
                        (___kont247682247683_))
                    (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))))
                                            (___kont247682247683_))
                                        (___kont247682247683_))))
                                (___kont247682247683_))
                            (___kont247682247683_))
                        (___kont247682247683_))))
                (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247682247683_))
                                            (___kont247682247683_))
                                        (___kont247682247683_))))
                                (___kont247682247683_))))
                        (___kont247682247683_))))
                (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247682247683_))
                                            (___kont247682247683_))
                                        (___kont247682247683_))))
                                (___kont247682247683_))))
                        (___kont247682247683_))
                    (___kont247682247683_))
                (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247682247683_))
                                            (___kont247682247683_))))
                                    (___kont247682247683_))))
                            (___kont247682247683_))))
                    (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247682247683_))
                                                (___kont247682247683_))
                                            (___kont247682247683_))))
                                    (___kont247682247683_))))
                            (___kont247682247683_))
                        (___kont247682247683_))))
                (___kont247682247683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247682247683_))))
                                        (___kont247682247683_))))
                                (___kont247682247683_))
                            (___kont247682247683_))
                        (___kont247682247683_))))
                (___kont247682247683_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx237057_ _id237058_ _clauses237059_ _gensym?237060_)
        (let _lp237062_ ((_rest237064_ _clauses237059_)
                         (_ids237065_ '())
                         (_impls237066_ '())
                         (_clauses237067_ '()))
          (let* ((_rest237068237076_ _rest237064_)
                 (_else237070237084_
                  (lambda ()
                    (values (reverse _ids237065_)
                            (reverse _impls237066_)
                            (reverse _clauses237067_))))
                 (_K237072237289_
                  (lambda (_rest237087_ _clause237088_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause237088_))
                        (let ((__tmp248757
                               (let ()
                                 (declare (not safe))
                                 (cons _clause237088_ _clauses237067_))))
                          (declare (not safe))
                          (_lp237062_
                           _rest237087_
                           _ids237065_
                           _impls237066_
                           __tmp248757))
                        (let* ((_g237090237101_
                                (lambda (_g237091237098_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g237091237098_))))
                               (_g237089237286_
                                (lambda (_g237091237104_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g237091237104_))
                                      (let ((_e237096237106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g237091237104_))))
                                        (let ((_hd237095237109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e237096237106_)))
                                              (_tl237094237111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e237096237106_))))
                                          ((lambda (_L237114_ _L237115_)
                                             (let* ((_id237132_
                                                     (let ((__tmp248704
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id237058_)))
                                                           (__tmp248703
                                                            (length _clauses237067_))
                                                           (__tmp248702
                                                            (if _gensym?237060_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp248704
                                                        '"__"
                                                        __tmp248703
                                                        __tmp248702)))
                                                    (_id237134_
                                                     (let ((__tmp248705
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx237057_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id237132_
                                                        __tmp248705)))
                                                    (_impl237136_
                                                     (let ((__tmp248706
                                                            (let ((__tmp248708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp248707
                           (let ()
                             (declare (not safe))
                             (cons _L237115_ _L237114_))))
                      (declare (not safe))
                      (cons __tmp248708 __tmp248707))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp248706 _stx237057_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause237283_
                                                     (let* ((___stx248062248063_
                                                             _L237115_)
                                                            (_g237140237168_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx248062248063_)))))
               (let ((___kont248064248065_
                      (lambda (_L237262_)
                        (let ((__tmp248709
                               (let ((__tmp248710
                                      (let ((__tmp248711
                                             (let ((__tmp248712
                                                    (let ((__tmp248718
                                                           (let ((__tmp248719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id237134_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp248719)))
                  (__tmp248713
                   (let ((__tmp248714
                          (lambda (_g237272237275_ _g237273237277_)
                            (let ((__tmp248715
                                   (let ((__tmp248717
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp248716
                                          (let ()
                                            (declare (not safe))
                                            (cons _g237272237275_ '()))))
                                     (declare (not safe))
                                     (cons __tmp248717 __tmp248716))))
                              (declare (not safe))
                              (cons __tmp248715 _g237273237277_)))))
                     (declare (not safe))
                     (foldr1 __tmp248714 '() _L237262_))))
              (declare (not safe))
              (cons __tmp248718 __tmp248713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp248712))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp248711
                                         _stx237057_))))
                                 (declare (not safe))
                                 (cons __tmp248710 '()))))
                          (declare (not safe))
                          (cons _L237115_ __tmp248709))))
                     (___kont248068248069_
                      (lambda (_L237213_ _L237214_)
                        (let ((__tmp248720
                               (let ((__tmp248721
                                      (let ((__tmp248722
                                             (let ((__tmp248723
                                                    (let ((__tmp248737
                                                           (let ((__tmp248738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp248738)))
                  (__tmp248724
                   (let ((__tmp248735
                          (let ((__tmp248736
                                 (let ()
                                   (declare (not safe))
                                   (cons _id237134_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp248736)))
                         (__tmp248725
                          (let ((__tmp248731
                                 (let ((__tmp248732
                                        (let ((__tmp248734
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp248733
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L237213_ '()))))
                                          (declare (not safe))
                                          (cons __tmp248734 __tmp248733))))
                                   (declare (not safe))
                                   (cons __tmp248732 '())))
                                (__tmp248726
                                 (let ((__tmp248727
                                        (lambda (_g237225237228_
                                                 _g237226237230_)
                                          (let ((__tmp248728
                                                 (let ((__tmp248730
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp248729
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g237225237228_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp248730
                                                         __tmp248729))))
                                            (declare (not safe))
                                            (cons __tmp248728
                                                  _g237226237230_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248727 '() _L237214_))))
                            (declare (not safe))
                            (foldr1 cons __tmp248731 __tmp248726))))
                     (declare (not safe))
                     (cons __tmp248735 __tmp248725))))
              (declare (not safe))
              (cons __tmp248737 __tmp248724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp248723))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp248722
                                         _stx237057_))))
                                 (declare (not safe))
                                 (cons __tmp248721 '()))))
                          (declare (not safe))
                          (cons _L237115_ __tmp248720))))
                     (___kont248072248073_
                      (lambda (_L237173_)
                        (let ((__tmp248739
                               (let ((__tmp248740
                                      (let ((__tmp248741
                                             (let ((__tmp248742
                                                    (let ((__tmp248750
                                                           (let ((__tmp248751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp248751)))
                  (__tmp248743
                   (let ((__tmp248748
                          (let ((__tmp248749
                                 (let ()
                                   (declare (not safe))
                                   (cons _id237134_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp248749)))
                         (__tmp248744
                          (let ((__tmp248745
                                 (let ((__tmp248747
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp248746
                                        (let ()
                                          (declare (not safe))
                                          (cons _L237173_ '()))))
                                   (declare (not safe))
                                   (cons __tmp248747 __tmp248746))))
                            (declare (not safe))
                            (cons __tmp248745 '()))))
                     (declare (not safe))
                     (cons __tmp248748 __tmp248744))))
              (declare (not safe))
              (cons __tmp248750 __tmp248743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp248742))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp248741
                                         _stx237057_))))
                                 (declare (not safe))
                                 (cons __tmp248740 '()))))
                          (declare (not safe))
                          (cons _L237115_ __tmp248739)))))
                 (let* ((___match248087248088_
                         (lambda (___splice248070248071_
                                  _target237154237189_
                                  _tl237156237191_)
                           (letrec ((_loop237157237194_
                                     (lambda (_hd237155237197_
                                              _arg237161237199_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd237155237197_))
                                           (let ((_e237158237202_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd237155237197_))))
                                             (let ((_lp-tl237160237207_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237158237202_)))
                                                   (_lp-hd237159237205_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237158237202_))))
                                               (let ((__tmp248752
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd237159237205_
                                                              _arg237161237199_))))
                                                 (declare (not safe))
                                                 (_loop237157237194_
                                                  _lp-tl237160237207_
                                                  __tmp248752))))
                                           (let ((_arg237162237210_
                                                  (reverse _arg237161237199_)))
                                             (___kont248068248069_
                                              _tl237156237191_
                                              _arg237162237210_))))))
                             (let ()
                               (declare (not safe))
                               (_loop237157237194_
                                _target237154237189_
                                '())))))
                        (___match248081248082_
                         (lambda (___splice248066248067_
                                  _target237143237238_
                                  _tl237145237240_)
                           (letrec ((_loop237146237243_
                                     (lambda (_hd237144237246_
                                              _arg237150237248_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd237144237246_))
                                           (let ((_e237147237251_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd237144237246_))))
                                             (let ((_lp-tl237149237256_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e237147237251_)))
                                                   (_lp-hd237148237254_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e237147237251_))))
                                               (let ((__tmp248753
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd237148237254_
                                                              _arg237150237248_))))
                                                 (declare (not safe))
                                                 (_loop237146237243_
                                                  _lp-tl237149237256_
                                                  __tmp248753))))
                                           (let ((_arg237151237259_
                                                  (reverse _arg237150237248_)))
                                             (___kont248064248065_
                                              _arg237151237259_))))))
                             (let ()
                               (declare (not safe))
                               (_loop237146237243_
                                _target237143237238_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx248062248063_))
                       (let ((___splice248066248067_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx248062248063_
                                 '0))))
                         (let ((_tl237145237240_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice248066248067_ '1)))
                               (_target237143237238_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice248066248067_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl237145237240_))
                               (___match248081248082_
                                ___splice248066248067_
                                _target237143237238_
                                _tl237145237240_)
                               (___match248087248088_
                                ___splice248066248067_
                                _target237143237238_
                                _tl237145237240_))))
                       (___kont248072248073_ ___stx248062248063_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp248756
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id237134_
                                                              _ids237065_)))
                                                     (__tmp248755
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl237136_
                                                              _impls237066_)))
                                                     (__tmp248754
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause237283_
                                                              _clauses237067_))))
                                                 (declare (not safe))
                                                 (_lp237062_
                                                  _rest237087_
                                                  __tmp248756
                                                  __tmp248755
                                                  __tmp248754))))
                                           _tl237094237111_
                                           _hd237095237109_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g237090237101_ _g237091237104_))))))
                          (declare (not safe))
                          (_g237089237286_ _clause237088_))))))
            (if (let () (declare (not safe)) (##pair? _rest237068237076_))
                (let ((_hd237073237292_
                       (let ()
                         (declare (not safe))
                         (##car _rest237068237076_)))
                      (_tl237074237294_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest237068237076_))))
                  (let* ((_clause237297_ _hd237073237292_)
                         (_rest237299_ _tl237074237294_))
                    (declare (not safe))
                    (_K237072237289_ _rest237299_ _clause237297_)))
                (let () (declare (not safe)) (_else237070237084_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx237304_ _id237305_ _clauses237306_)
        (let ((_gensym?237308_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx237304_
           _id237305_
           _clauses237306_
           _gensym?237308_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g248759_
        (let ((_g248758_ (let () (declare (not safe)) (##length _g248759_))))
          (cond ((let () (declare (not safe)) (##fx= _g248758_ 3))
                 (apply (lambda (_stx237304_ _id237305_ _clauses237306_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx237304_
                             _id237305_
                             _clauses237306_)))
                        _g248759_))
                ((let () (declare (not safe)) (##fx= _g248758_ 4))
                 (apply (lambda (_stx237310_
                                 _id237311_
                                 _clauses237312_
                                 _gensym?237313_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx237310_
                             _id237311_
                             _clauses237312_
                             _gensym?237313_)))
                        _g248759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g248759_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx236334_)
        (letrec ((_case-lambda-clause-def236336_
                  (lambda (_id237053_ _impl237054_)
                    (let ((__tmp248760
                           (let ((__tmp248761
                                  (let ((__tmp248764
                                         (let ()
                                           (declare (not safe))
                                           (cons _id237053_ '())))
                                        (__tmp248762
                                         (let ((__tmp248763
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl237054_))))
                                           (declare (not safe))
                                           (cons __tmp248763 '()))))
                                    (declare (not safe))
                                    (cons __tmp248764 __tmp248762))))
                             (declare (not safe))
                             (cons '%#define-values __tmp248761))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248760 _stx236334_))))
                 (_opt-lambda-dispatch-name236337_
                  (lambda (_id237049_)
                    (if (uninterned-symbol? _id237049_)
                        (let ((_str237051_ (symbol->string _id237049_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str237051_))
                              '"%"
                              _id237049_))
                        _id237049_)))
                 (_kw-lambda-dispatch-name236338_
                  (lambda (_id237044_ _name237045_)
                    (if (uninterned-symbol? _id237044_)
                        (let ((_str237047_ (symbol->string _id237044_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str237047_))
                              _name237045_
                              _id237044_))
                        _id237044_))))
          (let* ((___stx248110248111_ _stx236334_)
                 (_g236343236402_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx248110248111_)))))
            (let ((___kont248112248113_
                   (lambda (_L236953_ _L236954_)
                     (let* ((___stx248090248091_ _L236953_)
                            (_g236971236985_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx248090248091_)))))
                       (let ((___kont248092248093_
                              (lambda (_L237029_) _stx236334_))
                             (___kont248094248095_
                              (lambda (_L236998_)
                                (let ((_g248765_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx236334_
                                          _L236954_
                                          _L236998_))))
                                  (begin
                                    (let ((_g248766_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g248765_)
                                                 (##vector-length _g248765_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g248766_ 3)))
                                          (error "Context expects 3 values"
                                                 _g248766_)))
                                    (let ((_ids237008_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g248765_ 0)))
                                          (_impls237009_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g248765_ 1)))
                                          (_clauses237010_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g248765_ 2))))
                                      (let* ((_g248767_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids237008_))
                                             (_defs237013_
                                              (map _case-lambda-clause-def236336_
                                                   _ids237008_
                                                   _impls237009_)))
                                        (let ((__tmp248769
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L236954_)))
                                              (__tmp248768
                                               (map gxc#identifier-symbol
                                                    _ids237008_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp248769
                                           '" => "
                                           __tmp248768))
                                        (let ((__tmp248770
                                               (let ((__tmp248771
                                                      (let ((__tmp248772
                                                             (let ((__tmp248773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp248774
                                   (let ((__tmp248775
                                          (let ((__tmp248780
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L236954_ '())))
                                                (__tmp248776
                                                 (let ((__tmp248777
                                                        (let ((__tmp248779
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses237010_)))
                      (__tmp248778
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp248779 __tmp248778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp248777 '()))))
                                            (declare (not safe))
                                            (cons __tmp248780 __tmp248776))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp248775))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp248774
                               _stx236334_))))
                       (declare (not safe))
                       (cons __tmp248773 '()))))
                (declare (not safe))
                (foldr1 cons __tmp248772 _defs237013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp248771))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp248770
                                           _stx236334_)))))))))
                         (let ((___match248101248102_
                                (lambda (_e236976237021_
                                         _hd236975237024_
                                         _tl236974237026_)
                                  (let ((_L237029_ _tl236974237026_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L237029_))
                                        (___kont248092248093_ _L237029_)
                                        (___kont248094248095_
                                         _tl236974237026_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx248090248091_))
                               (let ((_e236976237021_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx248090248091_))))
                                 (let ((_tl236974237026_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e236976237021_)))
                                       (_hd236975237024_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e236976237021_))))
                                   (___match248101248102_
                                    _e236976237021_
                                    _hd236975237024_
                                    _tl236974237026_)))
                               (let ()
                                 (declare (not safe))
                                 (_g236971236985_))))))))
                  (___kont248114248115_
                   (lambda (_L236771_ _L236772_)
                     (let* ((_g236788236818_
                             (lambda (_g236789236815_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g236789236815_))))
                            (_g236787236913_
                             (lambda (_g236789236821_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g236789236821_))
                                   (let ((_e236795236823_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g236789236821_))))
                                     (let ((_hd236794236826_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e236795236823_)))
                                           (_tl236793236828_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e236795236823_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl236793236828_))
                                           (let ((_e236798236831_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl236793236828_))))
                                             (let ((_hd236797236834_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236798236831_)))
                                                   (_tl236796236836_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236798236831_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236797236834_))
                                                   (let ((_e236801236839_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236797236834_))))
                                                     (let ((_hd236800236842_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236801236839_)))
                                                           (_tl236799236844_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236801236839_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd236800236842_))
                                                           (let ((_e236804236847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd236800236842_))))
                     (let ((_hd236803236850_
                            (let ()
                              (declare (not safe))
                              (##car _e236804236847_)))
                           (_tl236802236852_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236804236847_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd236803236850_))
                           (let ((_e236807236855_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd236803236850_))))
                             (let ((_hd236806236858_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e236807236855_)))
                                   (_tl236805236860_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e236807236855_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl236805236860_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl236802236852_))
                                       (let ((_e236810236863_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl236802236852_))))
                                         (let ((_hd236809236866_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236810236863_)))
                                               (_tl236808236868_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236810236863_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl236808236868_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl236799236844_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236796236836_))
                                                       (let ((_e236813236871_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236796236836_))))
                 (let ((_hd236812236874_
                        (let () (declare (not safe)) (##car _e236813236871_)))
                       (_tl236811236876_
                        (let () (declare (not safe)) (##cdr _e236813236871_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl236811236876_))
                       ((lambda (_L236879_ _L236880_ _L236881_)
                          (let* ((_lambda-id236905_
                                  (let ((__tmp248783
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L236772_)))
                                        (__tmp248781
                                         (let ((__tmp248782
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L236881_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name236337_
                                            __tmp248782))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp248783
                                     '"__"
                                     __tmp248781)))
                                 (_lambda-id236907_
                                  (let ((__tmp248784
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx236334_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id236905_
                                     __tmp248784)))
                                 (_g248785_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id236907_)))
                                 (_new-case-lambda-expr236910_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L236879_
                                     _L236881_
                                     _lambda-id236907_))))
                            (let ((__tmp248787
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L236772_)))
                                  (__tmp248786
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id236907_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp248787
                               '" => "
                               __tmp248786))
                            (let ((__tmp248788
                                   (let ((__tmp248789
                                          (let ((__tmp248797
                                                 (let ((__tmp248798
                                                        (let ((__tmp248799
                                                               (let ((__tmp248802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id236907_ '())))
                             (__tmp248800
                              (let ((__tmp248801
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L236880_))))
                                (declare (not safe))
                                (cons __tmp248801 '()))))
                         (declare (not safe))
                         (cons __tmp248802 __tmp248800))))
                  (declare (not safe))
                  (cons '%#define-values __tmp248799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp248798
                                                    _stx236334_)))
                                                (__tmp248790
                                                 (let ((__tmp248791
                                                        (let ((__tmp248792
                                                               (let ((__tmp248793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp248794
                                     (let ((__tmp248796
                                            (let ()
                                              (declare (not safe))
                                              (cons _L236772_ '())))
                                           (__tmp248795
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr236910_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp248796 __tmp248795))))
                                (declare (not safe))
                                (cons '%#define-values __tmp248794))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248793 _stx236334_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp248792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp248791 '()))))
                                            (declare (not safe))
                                            (cons __tmp248797 __tmp248790))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp248789))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp248788
                               _stx236334_))))
                        _hd236812236874_
                        _hd236809236866_
                        _hd236806236858_)
                       (let ()
                         (declare (not safe))
                         (_g236788236818_ _g236789236821_)))))
               (let () (declare (not safe)) (_g236788236818_ _g236789236821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236788236818_
                                                      _g236789236821_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236788236818_
                                                  _g236789236821_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g236788236818_ _g236789236821_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g236788236818_ _g236789236821_)))))
                           (let ()
                             (declare (not safe))
                             (_g236788236818_ _g236789236821_)))))
                   (let ()
                     (declare (not safe))
                     (_g236788236818_ _g236789236821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236788236818_
                                                      _g236789236821_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g236788236818_
                                              _g236789236821_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g236788236818_ _g236789236821_))))))
                       (declare (not safe))
                       (_g236787236913_ _L236771_))))
                  (___kont248116248117_
                   (lambda (_L236485_ _L236486_)
                     (let* ((_g236502236555_
                             (lambda (_g236503236552_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g236503236552_))))
                            (_g236501236731_
                             (lambda (_g236503236558_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g236503236558_))
                                   (let ((_e236511236560_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g236503236558_))))
                                     (let ((_hd236510236563_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e236511236560_)))
                                           (_tl236509236565_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e236511236560_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl236509236565_))
                                           (let ((_e236514236568_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl236509236565_))))
                                             (let ((_hd236513236571_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e236514236568_)))
                                                   (_tl236512236573_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e236514236568_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd236513236571_))
                                                   (let ((_e236517236576_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd236513236571_))))
                                                     (let ((_hd236516236579_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236517236576_)))
                                                           (_tl236515236581_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236517236576_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd236516236579_))
                                                           (let ((_e236520236584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd236516236579_))))
                     (let ((_hd236519236587_
                            (let ()
                              (declare (not safe))
                              (##car _e236520236584_)))
                           (_tl236518236589_
                            (let ()
                              (declare (not safe))
                              (##cdr _e236520236584_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd236519236587_))
                           (let ((_e236523236592_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd236519236587_))))
                             (let ((_hd236522236595_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e236523236592_)))
                                   (_tl236521236597_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e236523236592_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl236521236597_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl236518236589_))
                                       (let ((_e236526236600_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl236518236589_))))
                                         (let ((_hd236525236603_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236526236600_)))
                                               (_tl236524236605_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236526236600_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd236525236603_))
                                               (let ((_e236529236608_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd236525236603_))))
                                                 (let ((_hd236528236611_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e236529236608_)))
                                                       (_tl236527236613_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e236529236608_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl236527236613_))
                                                       (let ((_e236532236616_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl236527236613_))))
                 (let ((_hd236531236619_
                        (let () (declare (not safe)) (##car _e236532236616_)))
                       (_tl236530236621_
                        (let () (declare (not safe)) (##cdr _e236532236616_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd236531236619_))
                       (let ((_e236535236624_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd236531236619_))))
                         (let ((_hd236534236627_
                                (let ()
                                  (declare (not safe))
                                  (##car _e236535236624_)))
                               (_tl236533236629_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e236535236624_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd236534236627_))
                               (let ((_e236538236632_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd236534236627_))))
                                 (let ((_hd236537236635_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e236538236632_)))
                                       (_tl236536236637_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e236538236632_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd236537236635_))
                                       (let ((_e236541236640_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd236537236635_))))
                                         (let ((_hd236540236643_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e236541236640_)))
                                               (_tl236539236645_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e236541236640_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl236539236645_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl236536236637_))
                                                   (let ((_e236544236648_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl236536236637_))))
                                                     (let ((_hd236543236651_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e236544236648_)))
                                                           (_tl236542236653_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e236544236648_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl236542236653_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl236533236629_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl236530236621_))
                           (let ((_e236547236656_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl236530236621_))))
                             (let ((_hd236546236659_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e236547236656_)))
                                   (_tl236545236661_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e236547236656_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl236545236661_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl236524236605_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl236515236581_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl236512236573_))
                                               (let ((_e236550236664_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl236512236573_))))
                                                 (let ((_hd236549236667_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e236550236664_)))
                                                       (_tl236548236669_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e236550236664_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl236548236669_))
                                                       ((lambda (_L236672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L236673_
                         _L236674_
                         _L236675_
                         _L236676_)
                  (let* ((_get-kws-id236716_
                          (let ((__tmp248805
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L236486_)))
                                (__tmp248803
                                 (let ((__tmp248804
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L236676_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name236338_
                                    __tmp248804
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248805 '"__" __tmp248803)))
                         (_get-kws-id236718_
                          (let ((__tmp248806
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx236334_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id236716_
                             __tmp248806)))
                         (_main-id236720_
                          (let ((__tmp248809
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L236486_)))
                                (__tmp248807
                                 (let ((__tmp248808
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L236675_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name236338_
                                    __tmp248808
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248809 '"__" __tmp248807)))
                         (_main-id236722_
                          (let ((__tmp248810
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx236334_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id236720_
                             __tmp248810)))
                         (_g248811_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id236718_)))
                         (_g248812_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id236722_)))
                         (_new-kw-dispatch236726_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L236672_
                             _L236676_
                             _get-kws-id236718_)))
                         (_new-get-kws236728_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L236673_
                             _L236675_
                             _main-id236722_))))
                    (let ((__tmp248815
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L236486_)))
                          (__tmp248814
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id236718_)))
                          (__tmp248813
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id236722_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp248815
                       '" => "
                       __tmp248814
                       '" => "
                       __tmp248813))
                    (let ((__tmp248816
                           (let ((__tmp248817
                                  (let ((__tmp248830
                                         (let ((__tmp248831
                                                (let ((__tmp248832
                                                       (let ((__tmp248833
                                                              (let ((__tmp248835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id236722_ '())))
                            (__tmp248834
                             (let ()
                               (declare (not safe))
                               (cons _L236674_ '()))))
                        (declare (not safe))
                        (cons __tmp248835 __tmp248834))))
                 (declare (not safe))
                 (cons '%#define-values __tmp248833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248832
                                                   _stx236334_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp248831)))
                                        (__tmp248818
                                         (let ((__tmp248825
                                                (let ((__tmp248826
                                                       (let ((__tmp248827
                                                              (let ((__tmp248829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id236718_ '())))
                            (__tmp248828
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws236728_ '()))))
                        (declare (not safe))
                        (cons __tmp248829 __tmp248828))))
                 (declare (not safe))
                 (cons '%#define-values __tmp248827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248826
                                                   _stx236334_)))
                                               (__tmp248819
                                                (let ((__tmp248820
                                                       (let ((__tmp248821
                                                              (let ((__tmp248822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248824
                                    (let ()
                                      (declare (not safe))
                                      (cons _L236486_ '())))
                                   (__tmp248823
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch236726_ '()))))
                               (declare (not safe))
                               (cons __tmp248824 __tmp248823))))
                        (declare (not safe))
                        (cons '%#define-values __tmp248822))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp248821 _stx236334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248820 '()))))
                                           (declare (not safe))
                                           (cons __tmp248825 __tmp248819))))
                                    (declare (not safe))
                                    (cons __tmp248830 __tmp248818))))
                             (declare (not safe))
                             (cons '%#begin __tmp248817))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248816 _stx236334_))))
                _hd236549236667_
                _hd236546236659_
                _hd236543236651_
                _hd236540236643_
                _hd236522236595_)
               (let ()
                 (declare (not safe))
                 (_g236502236555_ _g236503236558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236502236555_
                                                  _g236503236558_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g236502236555_
                                              _g236503236558_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g236502236555_ _g236503236558_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g236502236555_ _g236503236558_)))))
                           (let ()
                             (declare (not safe))
                             (_g236502236555_ _g236503236558_)))
                       (let ()
                         (declare (not safe))
                         (_g236502236555_ _g236503236558_)))
                   (let ()
                     (declare (not safe))
                     (_g236502236555_ _g236503236558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236502236555_
                                                      _g236503236558_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236502236555_
                                                  _g236503236558_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g236502236555_ _g236503236558_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g236502236555_ _g236503236558_)))))
                       (let ()
                         (declare (not safe))
                         (_g236502236555_ _g236503236558_)))))
               (let ()
                 (declare (not safe))
                 (_g236502236555_ _g236503236558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g236502236555_
                                                  _g236503236558_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g236502236555_ _g236503236558_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g236502236555_ _g236503236558_)))))
                           (let ()
                             (declare (not safe))
                             (_g236502236555_ _g236503236558_)))))
                   (let ()
                     (declare (not safe))
                     (_g236502236555_ _g236503236558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g236502236555_
                                                      _g236503236558_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g236502236555_
                                              _g236503236558_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g236502236555_ _g236503236558_))))))
                       (declare (not safe))
                       (_g236501236731_ _L236485_))))
                  (___kont248118248119_
                   (lambda (_L236431_ _L236432_)
                     (let ((__tmp248836
                            (let ((__tmp248837
                                   (let ((__tmp248838
                                          (let ((__tmp248839
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L236431_))))
                                            (declare (not safe))
                                            (cons __tmp248839 '()))))
                                     (declare (not safe))
                                     (cons _L236432_ __tmp248838))))
                              (declare (not safe))
                              (cons '%#define-values __tmp248837))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248836 _stx236334_)))))
              (let* ((___match248203248204_
                      (lambda (_e236377236453_
                               _hd236376236456_
                               _tl236375236458_
                               _e236380236461_
                               _hd236379236464_
                               _tl236378236466_
                               _e236383236469_
                               _hd236382236472_
                               _tl236381236474_
                               _e236386236477_
                               _hd236385236480_
                               _tl236384236482_)
                        (let ((_L236485_ _hd236385236480_)
                              (_L236486_ _hd236382236472_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L236486_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L236485_)))
                              (___kont248116248117_ _L236485_ _L236486_)
                              (___kont248118248119_
                               _hd236385236480_
                               _hd236379236464_)))))
                     (___match248175248176_
                      (lambda (_e236363236739_
                               _hd236362236742_
                               _tl236361236744_
                               _e236366236747_
                               _hd236365236750_
                               _tl236364236752_
                               _e236369236755_
                               _hd236368236758_
                               _tl236367236760_
                               _e236372236763_
                               _hd236371236766_
                               _tl236370236768_)
                        (let ((_L236771_ _hd236371236766_)
                              (_L236772_ _hd236368236758_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L236772_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L236771_)))
                              (___kont248114248115_ _L236771_ _L236772_)
                              (___match248203248204_
                               _e236363236739_
                               _hd236362236742_
                               _tl236361236744_
                               _e236366236747_
                               _hd236365236750_
                               _tl236364236752_
                               _e236369236755_
                               _hd236368236758_
                               _tl236367236760_
                               _e236372236763_
                               _hd236371236766_
                               _tl236370236768_)))))
                     (___match248147248148_
                      (lambda (_e236349236921_
                               _hd236348236924_
                               _tl236347236926_
                               _e236352236929_
                               _hd236351236932_
                               _tl236350236934_
                               _e236355236937_
                               _hd236354236940_
                               _tl236353236942_
                               _e236358236945_
                               _hd236357236948_
                               _tl236356236950_)
                        (let ((_L236953_ _hd236357236948_)
                              (_L236954_ _hd236354236940_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L236954_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L236953_)))
                              (___kont248112248113_ _L236953_ _L236954_)
                              (___match248175248176_
                               _e236349236921_
                               _hd236348236924_
                               _tl236347236926_
                               _e236352236929_
                               _hd236351236932_
                               _tl236350236934_
                               _e236355236937_
                               _hd236354236940_
                               _tl236353236942_
                               _e236358236945_
                               _hd236357236948_
                               _tl236356236950_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx248110248111_))
                    (let ((_e236349236921_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx248110248111_))))
                      (let ((_tl236347236926_
                             (let ()
                               (declare (not safe))
                               (##cdr _e236349236921_)))
                            (_hd236348236924_
                             (let ()
                               (declare (not safe))
                               (##car _e236349236921_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl236347236926_))
                            (let ((_e236352236929_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl236347236926_))))
                              (let ((_tl236350236934_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e236352236929_)))
                                    (_hd236351236932_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e236352236929_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd236351236932_))
                                    (let ((_e236355236937_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd236351236932_))))
                                      (let ((_tl236353236942_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e236355236937_)))
                                            (_hd236354236940_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e236355236937_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl236353236942_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl236350236934_))
                                                (let ((_e236358236945_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl236350236934_))))
                                                  (let ((_tl236356236950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e236358236945_)))
                                                        (_hd236357236948_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e236358236945_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl236356236950_))
                                                        (___match248147248148_
                                                         _e236349236921_
                                                         _hd236348236924_
                                                         _tl236347236926_
                                                         _e236352236929_
                                                         _hd236351236932_
                                                         _tl236350236934_
                                                         _e236355236937_
                                                         _hd236354236940_
                                                         _tl236353236942_
                                                         _e236358236945_
                                                         _hd236357236948_
                                                         _tl236356236950_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g236343236402_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g236343236402_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl236350236934_))
                                                (let ((_e236397236423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl236350236934_))))
                                                  (let ((_tl236395236428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e236397236423_)))
                                                        (_hd236396236426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e236397236423_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl236395236428_))
                                                        (___kont248118248119_
                                                         _hd236396236426_
                                                         _hd236351236932_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g236343236402_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g236343236402_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl236350236934_))
                                        (let ((_e236397236423_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl236350236934_))))
                                          (let ((_tl236395236428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e236397236423_)))
                                                (_hd236396236426_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e236397236423_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl236395236428_))
                                                (___kont248118248119_
                                                 _hd236396236426_
                                                 _hd236351236932_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g236343236402_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g236343236402_))))))
                            (let () (declare (not safe)) (_g236343236402_)))))
                    (let () (declare (not safe)) (_g236343236402_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx235266_)
        (letrec* ((_bind-e__246506246507_
                   (lambda (_id236318_ _expr236319_ _compile?236320_)
                     (let ((__tmp248842
                            (let ()
                              (declare (not safe))
                              (cons _id236318_ '())))
                           (__tmp248840
                            (let ((__tmp248841
                                   (if _compile?236320_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr236319_))
                                       _expr236319_)))
                              (declare (not safe))
                              (cons __tmp248841 '()))))
                       (declare (not safe))
                       (cons __tmp248842 __tmp248840))))
                  (_bind-e__0__246508246509_
                   (lambda (_id236325_ _expr236326_)
                     (let ((_compile?236328_ '#t))
                       (declare (not safe))
                       (_bind-e__246506246507_
                        _id236325_
                        _expr236326_
                        _compile?236328_))))
                  (_bind-e235268_
                   (lambda _g248844_
                     (let ((_g248843_
                            (let ()
                              (declare (not safe))
                              (##length _g248844_))))
                       (cond ((let () (declare (not safe)) (##fx= _g248843_ 2))
                              (apply (lambda (_id236325_ _expr236326_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__246508246509_
                                          _id236325_
                                          _expr236326_)))
                                     _g248844_))
                             ((let () (declare (not safe)) (##fx= _g248843_ 3))
                              (apply (lambda (_id236330_
                                              _expr236331_
                                              _compile?236332_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__246506246507_
                                          _id236330_
                                          _expr236331_
                                          _compile?236332_)))
                                     _g248844_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g248844_))))))
                  (_compile-bindings235269_
                   (lambda (_bindings235902_)
                     (let _lp235904_ ((_rest235906_ _bindings235902_)
                                      (_lift1235907_ '())
                                      (_lift2235908_ '())
                                      (_bind235909_ '()))
                       (let* ((_rest235910235918_ _rest235906_)
                              (_else235912235926_
                               (lambda ()
                                 (values (reverse _lift1235907_)
                                         (reverse _lift2235908_)
                                         (reverse _bind235909_))))
                              (_K235914236305_
                               (lambda (_rest235929_ _hd235930_)
                                 (let* ((___stx248246248247_ _hd235930_)
                                        (_g235934235970_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx248246248247_)))))
                                   (let ((___kont248248248249_
                                          (lambda (_L236212_ _L236213_)
                                            (let* ((___stx248226248227_
                                                    _L236212_)
                                                   (_g236228236242_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx248226248227_)))))
                                              (let ((___kont248228248229_
                                                     (lambda (_L236290_)
                                                       (let ((__tmp248845
                                                              (let ((__tmp248846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__246506246507_
                                _L236213_
                                _L236212_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp248846 _bind235909_))))
                 (declare (not safe))
                 (_lp235904_
                  _rest235929_
                  _lift1235907_
                  _lift2235908_
                  __tmp248845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248230248231_
                                                     (lambda (_L236255_)
                                                       (let ((_g248847_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx235266_
                         _L236213_
                         _L236255_
                         '#t))))
                 (begin
                   (let ((_g248848_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248847_)
                                (##vector-length _g248847_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248848_ 3)))
                         (error "Context expects 3 values" _g248848_)))
                   (let ((_ids236265_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248847_ 0)))
                         (_impls236266_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248847_ 1)))
                         (_clauses236267_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248847_ 2))))
                     (let* ((_g248849_
                             (for-each gx#core-bind-runtime! _ids236265_))
                            (_xbind236270_
                             (map _bind-e235268_ _ids236265_ _impls236266_))
                            (_expr*236272_
                             (let ((__tmp248851
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses236267_)))
                                   (__tmp248850
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp248851
                                __tmp248850)))
                            (_bind*236274_
                             (let ()
                               (declare (not safe))
                               (_bind-e__246506246507_
                                _L236213_
                                _expr*236272_
                                '#f))))
                       (let ((__tmp248853
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L236213_)))
                             (__tmp248852
                              (map gxc#identifier-symbol _ids236265_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp248853
                          '" => "
                          __tmp248852))
                       (let ((__tmp248855
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2235908_ _xbind236270_)))
                             (__tmp248854
                              (let ()
                                (declare (not safe))
                                (cons _bind*236274_ _bind235909_))))
                         (declare (not safe))
                         (_lp235904_
                          _rest235929_
                          _lift1235907_
                          __tmp248855
                          __tmp248854)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match248237248238_
                                                       (lambda (_e236233236282_
                                                                _hd236232236285_
                                                                _tl236231236287_)
                                                         (let ((_L236290_
                                                                _tl236231236287_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L236290_))
                       (___kont248228248229_ _L236290_)
                       (___kont248230248231_ _tl236231236287_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx248226248227_))
                                                      (let ((_e236233236282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx248226248227_))))
                (let ((_tl236231236287_
                       (let () (declare (not safe)) (##cdr _e236233236282_)))
                      (_hd236232236285_
                       (let () (declare (not safe)) (##car _e236233236282_))))
                  (___match248237248238_
                   _e236233236282_
                   _hd236232236285_
                   _tl236231236287_)))
              (let () (declare (not safe)) (_g236228236242_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont248250248251_
                                          (lambda (_L236040_ _L236041_)
                                            (let* ((_g236055236085_
                                                    (lambda (_g236056236082_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g236056236082_))))
                                                   (_g236054236180_
                                                    (lambda (_g236056236088_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g236056236088_))
                                                          (let ((_e236062236090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g236056236088_))))
                    (let ((_hd236061236093_
                           (let ()
                             (declare (not safe))
                             (##car _e236062236090_)))
                          (_tl236060236095_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236062236090_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236060236095_))
                          (let ((_e236065236098_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236060236095_))))
                            (let ((_hd236064236101_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236065236098_)))
                                  (_tl236063236103_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236065236098_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236064236101_))
                                  (let ((_e236068236106_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236064236101_))))
                                    (let ((_hd236067236109_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236068236106_)))
                                          (_tl236066236111_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236068236106_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd236067236109_))
                                          (let ((_e236071236114_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd236067236109_))))
                                            (let ((_hd236070236117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e236071236114_)))
                                                  (_tl236069236119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e236071236114_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd236070236117_))
                                                  (let ((_e236074236122_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd236070236117_))))
                                                    (let ((_hd236073236125_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e236074236122_)))
                                                          (_tl236072236127_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e236074236122_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl236072236127_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl236069236119_))
                      (let ((_e236077236130_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl236069236119_))))
                        (let ((_hd236076236133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e236077236130_)))
                              (_tl236075236135_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e236077236130_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl236075236135_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl236066236111_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl236063236103_))
                                      (let ((_e236080236138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl236063236103_))))
                                        (let ((_hd236079236141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236080236138_)))
                                              (_tl236078236143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236080236138_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236078236143_))
                                              ((lambda (_L236146_
                                                        _L236147_
                                                        _L236148_)
                                                 (let* ((_lambda-id236172_
                                                         (let ((__tmp248857
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L236041_)))
                       (__tmp248856 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp248857 __tmp248856)))
                (_lambda-id236174_
                 (let ((__tmp248858
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx235266_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id236172_ __tmp248858)))
                (_g248859_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id236174_)))
                (_new-case-lambda-expr236177_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L236146_
                    _L236148_
                    _lambda-id236174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp248861
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L236041_)))
                                                         (__tmp248860
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id236174_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp248861
                                                      '" => "
                                                      __tmp248860))
                                                   (let ((__tmp248864
                                                          (let ((__tmp248865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__246506246507_
                            _L236041_
                            _new-case-lambda-expr236177_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp248865 _rest235929_)))
                 (__tmp248862
                  (let ((__tmp248863
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__246508246509_
                            _lambda-id236174_
                            _L236147_))))
                    (declare (not safe))
                    (cons __tmp248863 _lift1235907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp235904_
                                                      __tmp248864
                                                      __tmp248862
                                                      _lift2235908_
                                                      _bind235909_))))
                                               _hd236079236141_
                                               _hd236076236133_
                                               _hd236073236125_)
                                              (let ()
                                                (declare (not safe))
                                                (_g236055236085_
                                                 _g236056236088_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g236055236085_ _g236056236088_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g236055236085_ _g236056236088_)))
                              (let ()
                                (declare (not safe))
                                (_g236055236085_ _g236056236088_)))))
                      (let ()
                        (declare (not safe))
                        (_g236055236085_ _g236056236088_)))
                  (let ()
                    (declare (not safe))
                    (_g236055236085_ _g236056236088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g236055236085_
                                                     _g236056236088_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g236055236085_
                                             _g236056236088_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g236055236085_ _g236056236088_)))))
                          (let ()
                            (declare (not safe))
                            (_g236055236085_ _g236056236088_)))))
                  (let ()
                    (declare (not safe))
                    (_g236055236085_ _g236056236088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g236054236180_ _L236040_))))
                                         (___kont248252248253_
                                          (lambda (_L235991_ _L235992_)
                                            (let ((__tmp248866
                                                   (let ((__tmp248867
                                                          (let ((__tmp248868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp248869
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L235991_))))
                           (declare (not safe))
                           (cons __tmp248869 '()))))
                    (declare (not safe))
                    (cons _L235992_ __tmp248868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248867
                                                           _bind235909_))))
                                              (declare (not safe))
                                              (_lp235904_
                                               _rest235929_
                                               _lift1235907_
                                               _lift2235908_
                                               __tmp248866)))))
                                     (let* ((___match248297248298_
                                             (lambda (_e235951236016_
                                                      _hd235950236019_
                                                      _tl235949236021_
                                                      _e235954236024_
                                                      _hd235953236027_
                                                      _tl235952236029_
                                                      _e235957236032_
                                                      _hd235956236035_
                                                      _tl235955236037_)
                                               (let ((_L236040_
                                                      _hd235956236035_)
                                                     (_L236041_
                                                      _hd235953236027_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236041_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L236040_)))
                                                     (___kont248250248251_
                                                      _L236040_
                                                      _L236041_)
                                                     (___kont248252248253_
                                                      _hd235956236035_
                                                      _hd235950236019_)))))
                                            (___match248275248276_
                                             (lambda (_e235940236188_
                                                      _hd235939236191_
                                                      _tl235938236193_
                                                      _e235943236196_
                                                      _hd235942236199_
                                                      _tl235941236201_
                                                      _e235946236204_
                                                      _hd235945236207_
                                                      _tl235944236209_)
                                               (let ((_L236212_
                                                      _hd235945236207_)
                                                     (_L236213_
                                                      _hd235942236199_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L236213_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L236212_)))
                                                     (___kont248248248249_
                                                      _L236212_
                                                      _L236213_)
                                                     (___match248297248298_
                                                      _e235940236188_
                                                      _hd235939236191_
                                                      _tl235938236193_
                                                      _e235943236196_
                                                      _hd235942236199_
                                                      _tl235941236201_
                                                      _e235946236204_
                                                      _hd235945236207_
                                                      _tl235944236209_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx248246248247_))
                                           (let ((_e235940236188_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx248246248247_))))
                                             (let ((_tl235938236193_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e235940236188_)))
                                                   (_hd235939236191_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e235940236188_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd235939236191_))
                                                   (let ((_e235943236196_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd235939236191_))))
                                                     (let ((_tl235941236201_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e235943236196_)))
                                                           (_hd235942236199_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e235943236196_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl235941236201_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl235938236193_))
                       (let ((_e235946236204_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl235938236193_))))
                         (let ((_tl235944236209_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e235946236204_)))
                               (_hd235945236207_
                                (let ()
                                  (declare (not safe))
                                  (##car _e235946236204_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl235944236209_))
                               (___match248275248276_
                                _e235940236188_
                                _hd235939236191_
                                _tl235938236193_
                                _e235943236196_
                                _hd235942236199_
                                _tl235941236201_
                                _e235946236204_
                                _hd235945236207_
                                _tl235944236209_)
                               (let ()
                                 (declare (not safe))
                                 (_g235934235970_)))))
                       (let () (declare (not safe)) (_g235934235970_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl235938236193_))
                       (let ((_e235965235983_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl235938236193_))))
                         (let ((_tl235963235988_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e235965235983_)))
                               (_hd235964235986_
                                (let ()
                                  (declare (not safe))
                                  (##car _e235965235983_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl235963235988_))
                               (___kont248252248253_
                                _hd235964235986_
                                _hd235939236191_)
                               (let ()
                                 (declare (not safe))
                                 (_g235934235970_)))))
                       (let () (declare (not safe)) (_g235934235970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl235938236193_))
                                                       (let ((_e235965235983_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl235938236193_))))
                 (let ((_tl235963235988_
                        (let () (declare (not safe)) (##cdr _e235965235983_)))
                       (_hd235964235986_
                        (let () (declare (not safe)) (##car _e235965235983_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl235963235988_))
                       (___kont248252248253_ _hd235964235986_ _hd235939236191_)
                       (let () (declare (not safe)) (_g235934235970_)))))
               (let () (declare (not safe)) (_g235934235970_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g235934235970_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest235910235918_))
                             (let ((_hd235915236308_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest235910235918_)))
                                   (_tl235916236310_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest235910235918_))))
                               (let* ((_hd236313_ _hd235915236308_)
                                      (_rest236315_ _tl235916236310_))
                                 (declare (not safe))
                                 (_K235914236305_ _rest236315_ _hd236313_)))
                             (let ()
                               (declare (not safe))
                               (_else235912235926_)))))))
                  (_lift-kw-lambda?235270_
                   (lambda (_bind235826_)
                     (let* ((___stx248314248315_ _bind235826_)
                            (_g235829235846_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx248314248315_)))))
                       (let ((___kont248316248317_
                              (lambda (_L235882_ _L235883_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L235883_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L235882_))
                                    '#f)))
                             (___kont248318248319_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx248314248315_))
                             (let ((_e235835235858_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx248314248315_))))
                               (let ((_tl235833235863_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e235835235858_)))
                                     (_hd235834235861_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e235835235858_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd235834235861_))
                                     (let ((_e235838235866_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd235834235861_))))
                                       (let ((_tl235836235871_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e235838235866_)))
                                             (_hd235837235869_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e235838235866_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl235836235871_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl235833235863_))
                                                 (let ((_e235841235874_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl235833235863_))))
                                                   (let ((_tl235839235879_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e235841235874_)))
                                                         (_hd235840235877_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e235841235874_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl235839235879_))
                                                         (___kont248316248317_
                                                          _hd235840235877_
                                                          _hd235837235869_)
                                                         (___kont248318248319_))))
                                                 (___kont248318248319_))
                                             (___kont248318248319_))))
                                     (___kont248318248319_))))
                             (___kont248318248319_))))))
                  (_lift-kw-lambda-bindings235271_
                   (lambda (_bindings235438_)
                     (let _lp235440_ ((_rest235442_ _bindings235438_)
                                      (_lift1235443_ '())
                                      (_lift2235444_ '())
                                      (_bind235445_ '()))
                       (let* ((_rest235446235454_ _rest235442_)
                              (_else235448235462_
                               (lambda ()
                                 (values (reverse _lift1235443_)
                                         (reverse _lift2235444_)
                                         (reverse _bind235445_))))
                              (_K235450235814_
                               (lambda (_rest235465_ _hd235466_)
                                 (let* ((___stx248344248345_ _hd235466_)
                                        (_g235469235494_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx248344248345_)))))
                                   (let ((___kont248346248347_
                                          (lambda (_L235564_ _L235565_)
                                            (let* ((_g235579235632_
                                                    (lambda (_g235580235629_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g235580235629_))))
                                                   (_g235578235808_
                                                    (lambda (_g235580235635_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g235580235635_))
                                                          (let ((_e235588235637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g235580235635_))))
                    (let ((_hd235587235640_
                           (let ()
                             (declare (not safe))
                             (##car _e235588235637_)))
                          (_tl235586235642_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235588235637_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235586235642_))
                          (let ((_e235591235645_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235586235642_))))
                            (let ((_hd235590235648_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235591235645_)))
                                  (_tl235589235650_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235591235645_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235590235648_))
                                  (let ((_e235594235653_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235590235648_))))
                                    (let ((_hd235593235656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235594235653_)))
                                          (_tl235592235658_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235594235653_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd235593235656_))
                                          (let ((_e235597235661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd235593235656_))))
                                            (let ((_hd235596235664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235597235661_)))
                                                  (_tl235595235666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235597235661_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235596235664_))
                                                  (let ((_e235600235669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235596235664_))))
                                                    (let ((_hd235599235672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235600235669_)))
                                                          (_tl235598235674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235600235669_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235598235674_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235595235666_))
                      (let ((_e235603235677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235595235666_))))
                        (let ((_hd235602235680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235603235677_)))
                              (_tl235601235682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235603235677_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235602235680_))
                              (let ((_e235606235685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235602235680_))))
                                (let ((_hd235605235688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235606235685_)))
                                      (_tl235604235690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235606235685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235604235690_))
                                      (let ((_e235609235693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235604235690_))))
                                        (let ((_hd235608235696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235609235693_)))
                                              (_tl235607235698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235609235693_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd235608235696_))
                                              (let ((_e235612235701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd235608235696_))))
                                                (let ((_hd235611235704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235612235701_)))
                                                      (_tl235610235706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235612235701_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd235611235704_))
                                                      (let ((_e235615235709_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd235611235704_))))
                (let ((_hd235614235712_
                       (let () (declare (not safe)) (##car _e235615235709_)))
                      (_tl235613235714_
                       (let () (declare (not safe)) (##cdr _e235615235709_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235614235712_))
                      (let ((_e235618235717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235614235712_))))
                        (let ((_hd235617235720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235618235717_)))
                              (_tl235616235722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235618235717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235616235722_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235613235714_))
                                  (let ((_e235621235725_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235613235714_))))
                                    (let ((_hd235620235728_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235621235725_)))
                                          (_tl235619235730_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235621235725_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235619235730_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235610235706_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235607235698_))
                                                  (let ((_e235624235733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235607235698_))))
                                                    (let ((_hd235623235736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235624235733_)))
                                                          (_tl235622235738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235624235733_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235622235738_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl235601235682_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl235592235658_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235589235650_))
                              (let ((_e235627235741_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235589235650_))))
                                (let ((_hd235626235744_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235627235741_)))
                                      (_tl235625235746_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235627235741_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235625235746_))
                                      ((lambda (_L235749_
                                                _L235750_
                                                _L235751_
                                                _L235752_
                                                _L235753_)
                                         (let* ((_get-kws-id235793_
                                                 (let ((__tmp248871
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235565_)))
                                                       (__tmp248870
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp248871
                                                    __tmp248870)))
                                                (_get-kws-id235795_
                                                 (let ((__tmp248872
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx235266_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id235793_
                                                    __tmp248872)))
                                                (_main-id235797_
                                                 (let ((__tmp248874
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235565_)))
                                                       (__tmp248873
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp248874
                                                    __tmp248873)))
                                                (_main-id235799_
                                                 (let ((__tmp248875
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx235266_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id235797_
                                                    __tmp248875)))
                                                (_g248876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id235795_)))
                                                (_g248877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id235799_)))
                                                (_new-kw-dispatch235803_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L235749_
                                                    _L235753_
                                                    _get-kws-id235795_)))
                                                (_new-get-kws235805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L235750_
                                                    _L235752_
                                                    _main-id235799_))))
                                           (let ((__tmp248880
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L235565_)))
                                                 (__tmp248879
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id235795_)))
                                                 (__tmp248878
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id235799_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp248880
                                              '" => "
                                              __tmp248879
                                              '" => "
                                              __tmp248878))
                                           (let ((__tmp248885
                                                  (let ((__tmp248886
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__246506246507_
                                                            _main-id235799_
                                                            _L235751_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp248886
                                                          _lift1235443_)))
                                                 (__tmp248883
                                                  (let ((__tmp248884
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__246506246507_
                                                            _get-kws-id235795_
                                                            _new-get-kws235805_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp248884
                                                          _lift2235444_)))
                                                 (__tmp248881
                                                  (let ((__tmp248882
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__246506246507_
                                                            _L235565_
                                                            _new-kw-dispatch235803_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp248882
                                                          _bind235445_))))
                                             (declare (not safe))
                                             (_lp235440_
                                              _rest235465_
                                              __tmp248885
                                              __tmp248883
                                              __tmp248881))))
                                       _hd235626235744_
                                       _hd235623235736_
                                       _hd235620235728_
                                       _hd235617235720_
                                       _hd235599235672_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235579235632_ _g235580235635_)))))
                              (let ()
                                (declare (not safe))
                                (_g235579235632_ _g235580235635_)))
                          (let ()
                            (declare (not safe))
                            (_g235579235632_ _g235580235635_)))
                      (let ()
                        (declare (not safe))
                        (_g235579235632_ _g235580235635_)))
                  (let ()
                    (declare (not safe))
                    (_g235579235632_ _g235580235635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235579235632_
                                                     _g235580235635_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g235579235632_
                                                 _g235580235635_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g235579235632_
                                             _g235580235635_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235579235632_ _g235580235635_)))
                              (let ()
                                (declare (not safe))
                                (_g235579235632_ _g235580235635_)))))
                      (let ()
                        (declare (not safe))
                        (_g235579235632_ _g235580235635_)))))
              (let ()
                (declare (not safe))
                (_g235579235632_ _g235580235635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g235579235632_
                                                 _g235580235635_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235579235632_ _g235580235635_)))))
                              (let ()
                                (declare (not safe))
                                (_g235579235632_ _g235580235635_)))))
                      (let ()
                        (declare (not safe))
                        (_g235579235632_ _g235580235635_)))
                  (let ()
                    (declare (not safe))
                    (_g235579235632_ _g235580235635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235579235632_
                                                     _g235580235635_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235579235632_
                                             _g235580235635_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235579235632_ _g235580235635_)))))
                          (let ()
                            (declare (not safe))
                            (_g235579235632_ _g235580235635_)))))
                  (let ()
                    (declare (not safe))
                    (_g235579235632_ _g235580235635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g235578235808_ _L235564_))))
                                         (___kont248348248349_
                                          (lambda (_L235515_ _L235516_)
                                            (let ((__tmp248887
                                                   (let ((__tmp248888
                                                          (let ((__tmp248889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L235515_ '()))))
                    (declare (not safe))
                    (cons _L235516_ __tmp248889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248888
                                                           _bind235445_))))
                                              (declare (not safe))
                                              (_lp235440_
                                               _rest235465_
                                               _lift1235443_
                                               _lift2235444_
                                               __tmp248887)))))
                                     (let ((___match248371248372_
                                            (lambda (_e235475235540_
                                                     _hd235474235543_
                                                     _tl235473235545_
                                                     _e235478235548_
                                                     _hd235477235551_
                                                     _tl235476235553_
                                                     _e235481235556_
                                                     _hd235480235559_
                                                     _tl235479235561_)
                                              (let ((_L235564_
                                                     _hd235480235559_)
                                                    (_L235565_
                                                     _hd235477235551_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L235565_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L235564_)))
                                                    (___kont248346248347_
                                                     _L235564_
                                                     _L235565_)
                                                    (___kont248348248349_
                                                     _hd235480235559_
                                                     _hd235474235543_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx248344248345_))
                                           (let ((_e235475235540_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx248344248345_))))
                                             (let ((_tl235473235545_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e235475235540_)))
                                                   (_hd235474235543_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e235475235540_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd235474235543_))
                                                   (let ((_e235478235548_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd235474235543_))))
                                                     (let ((_tl235476235553_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e235478235548_)))
                                                           (_hd235477235551_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e235478235548_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl235476235553_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl235473235545_))
                       (let ((_e235481235556_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl235473235545_))))
                         (let ((_tl235479235561_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e235481235556_)))
                               (_hd235480235559_
                                (let ()
                                  (declare (not safe))
                                  (##car _e235481235556_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl235479235561_))
                               (___match248371248372_
                                _e235475235540_
                                _hd235474235543_
                                _tl235473235545_
                                _e235478235548_
                                _hd235477235551_
                                _tl235476235553_
                                _e235481235556_
                                _hd235480235559_
                                _tl235479235561_)
                               (let ()
                                 (declare (not safe))
                                 (_g235469235494_)))))
                       (let () (declare (not safe)) (_g235469235494_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl235473235545_))
                       (let ((_e235489235507_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl235473235545_))))
                         (let ((_tl235487235512_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e235489235507_)))
                               (_hd235488235510_
                                (let ()
                                  (declare (not safe))
                                  (##car _e235489235507_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl235487235512_))
                               (___kont248348248349_
                                _hd235488235510_
                                _hd235474235543_)
                               (let ()
                                 (declare (not safe))
                                 (_g235469235494_)))))
                       (let () (declare (not safe)) (_g235469235494_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl235473235545_))
                                                       (let ((_e235489235507_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl235473235545_))))
                 (let ((_tl235487235512_
                        (let () (declare (not safe)) (##cdr _e235489235507_)))
                       (_hd235488235510_
                        (let () (declare (not safe)) (##car _e235489235507_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl235487235512_))
                       (___kont248348248349_ _hd235488235510_ _hd235474235543_)
                       (let () (declare (not safe)) (_g235469235494_)))))
               (let () (declare (not safe)) (_g235469235494_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g235469235494_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest235446235454_))
                             (let ((_hd235451235817_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest235446235454_)))
                                   (_tl235452235819_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest235446235454_))))
                               (let* ((_hd235822_ _hd235451235817_)
                                      (_rest235824_ _tl235452235819_))
                                 (declare (not safe))
                                 (_K235450235814_ _rest235824_ _hd235822_)))
                             (let ()
                               (declare (not safe))
                               (_else235448235462_))))))))
          (let* ((___stx248388248389_ _stx235266_)
                 (_g235274235300_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx248388248389_)))))
            (let ((___kont248390248391_
                   (lambda (_L235360_ _L235361_)
                     (let ((__tmp248891
                            (lambda ()
                              (if (let ((__tmp248918
                                         (let ((__tmp248919
                                                (lambda (_g235389235392_
                                                         _g235390235394_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g235389235392_
                                                          _g235390235394_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp248919
                                                   '()
                                                   _L235361_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?235270_
                                            __tmp248918))
                                  (let ((_g248905_
                                         (let ((__tmp248907
                                                (let ((__tmp248908
                                                       (lambda (_g235396235399_
                                                                _g235397235401_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g235396235399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g235397235401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp248908
                                                          '()
                                                          _L235361_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings235271_
                                            __tmp248907))))
                                    (begin
                                      (let ((_g248906_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g248905_)
                                                   (##vector-length _g248905_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g248906_ 3)))
                                            (error "Context expects 3 values"
                                                   _g248906_)))
                                      (let ((_lift1235404_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g248905_ 0)))
                                            (_lift2235405_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g248905_ 1)))
                                            (_hd235406_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g248905_ 2))))
                                        (let* ((_expr235408_
                                                (let ((__tmp248909
                                                       (let ((__tmp248910
                                                              (let ((__tmp248911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L235360_ '()))))
                        (declare (not safe))
                        (cons _hd235406_ __tmp248911))))
                 (declare (not safe))
                 (cons '%#let-values __tmp248910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248909
                                                   _stx235266_)))
                                               (_expr235410_
                                                (let ((__tmp248912
                                                       (let ((__tmp248913
                                                              (let ((__tmp248914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr235408_ '()))))
                        (declare (not safe))
                        (cons _lift2235405_ __tmp248914))))
                 (declare (not safe))
                 (cons '%#let-values __tmp248913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248912
                                                   _stx235266_)))
                                               (_expr235412_
                                                (let ((__tmp248915
                                                       (let ((__tmp248916
                                                              (let ((__tmp248917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr235410_ '()))))
                        (declare (not safe))
                        (cons _lift1235404_ __tmp248917))))
                 (declare (not safe))
                 (cons '%#let-values __tmp248916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248915
                                                   _stx235266_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr235412_))))))
                                  (let ((_g248892_
                                         (let ((__tmp248894
                                                (let ((__tmp248895
                                                       (lambda (_g235414235417_
                                                                _g235415235419_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g235414235417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g235415235419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp248895
                                                          '()
                                                          _L235361_))))
                                           (declare (not safe))
                                           (_compile-bindings235269_
                                            __tmp248894))))
                                    (begin
                                      (let ((_g248893_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g248892_)
                                                   (##vector-length _g248892_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g248893_ 3)))
                                            (error "Context expects 3 values"
                                                   _g248893_)))
                                      (let ((_lift1235422_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g248892_ 0)))
                                            (_lift2235423_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g248892_ 1)))
                                            (_hd235424_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g248892_ 2))))
                                        (let* ((_body235426_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L235360_)))
                                               (_expr235428_
                                                (let ((__tmp248896
                                                       (let ((__tmp248897
                                                              (let ((__tmp248898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body235426_ '()))))
                        (declare (not safe))
                        (cons _hd235424_ __tmp248898))))
                 (declare (not safe))
                 (cons '%#let-values __tmp248897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248896
                                                   _stx235266_)))
                                               (_expr235430_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2235423_))
                                                    _expr235428_
                                                    (let ((__tmp248899
                                                           (let ((__tmp248900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248901
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr235428_ '()))))
                            (declare (not safe))
                            (cons _lift2235423_ __tmp248901))))
                     (declare (not safe))
                     (cons '%#let-values __tmp248900))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp248899 _stx235266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr235432_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1235422_))
                                                    _expr235430_
                                                    (let ((__tmp248902
                                                           (let ((__tmp248903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248904
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr235430_ '()))))
                            (declare (not safe))
                            (cons _lift1235422_ __tmp248904))))
                     (declare (not safe))
                     (cons '%#let-values __tmp248903))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp248902 _stx235266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr235432_)))))))
                           (__tmp248890
                            (let ((__obj248594
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj248594)
                              __obj248594)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp248891
                        gx#current-expander-context
                        __tmp248890))))
                  (___kont248394248395_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx235266_)))))
              (let ((___match248415248416_
                     (lambda (_e235280235312_
                              _hd235279235315_
                              _tl235278235317_
                              _e235283235320_
                              _hd235282235323_
                              _tl235281235325_
                              ___splice248392248393_
                              _target235284235328_
                              _tl235286235330_)
                       (letrec ((_loop235287235333_
                                 (lambda (_hd235285235336_ _bind235291235338_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd235285235336_))
                                       (let ((_e235288235341_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd235285235336_))))
                                         (let ((_lp-tl235290235346_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e235288235341_)))
                                               (_lp-hd235289235344_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e235288235341_))))
                                           (let ((__tmp248922
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd235289235344_
                                                          _bind235291235338_))))
                                             (declare (not safe))
                                             (_loop235287235333_
                                              _lp-tl235290235346_
                                              __tmp248922))))
                                       (let ((_bind235292235349_
                                              (reverse _bind235291235338_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl235281235325_))
                                             (let ((_e235295235352_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl235281235325_))))
                                               (let ((_tl235293235357_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e235295235352_)))
                                                     (_hd235294235355_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e235295235352_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl235293235357_))
                                                     (let ((_L235360_
                                                            _hd235294235355_)
                                                           (_L235361_
                                                            _bind235292235349_))
                                                       (if (let ((__tmp248920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248921
                                 (lambda (_g235381235384_ _g235382235386_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g235381235384_ _g235382235386_)))))
                            (declare (not safe))
                            (foldr1 __tmp248921 '() _L235361_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp248920))
                   (___kont248390248391_ _L235360_ _L235361_)
                   (___kont248394248395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont248394248395_))))
                                             (___kont248394248395_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop235287235333_ _target235284235328_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx248388248389_))
                    (let ((_e235280235312_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx248388248389_))))
                      (let ((_tl235278235317_
                             (let ()
                               (declare (not safe))
                               (##cdr _e235280235312_)))
                            (_hd235279235315_
                             (let ()
                               (declare (not safe))
                               (##car _e235280235312_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl235278235317_))
                            (let ((_e235283235320_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl235278235317_))))
                              (let ((_tl235281235325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e235283235320_)))
                                    (_hd235282235323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e235283235320_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd235282235323_))
                                    (let ((___splice248392248393_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd235282235323_
                                              '0))))
                                      (let ((_tl235286235330_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice248392248393_
                                                '1)))
                                            (_target235284235328_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice248392248393_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl235286235330_))
                                            (___match248415248416_
                                             _e235280235312_
                                             _hd235279235315_
                                             _tl235278235317_
                                             _e235283235320_
                                             _hd235282235323_
                                             _tl235281235325_
                                             ___splice248392248393_
                                             _target235284235328_
                                             _tl235286235330_)
                                            (___kont248394248395_))))
                                    (___kont248394248395_))))
                            (___kont248394248395_))))
                    (___kont248394248395_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx234410_)
        (letrec* ((_bind-e__246511246512_
                   (lambda (_id235250_ _expr235251_ _compile?235252_)
                     (let ((__tmp248925
                            (let ()
                              (declare (not safe))
                              (cons _id235250_ '())))
                           (__tmp248923
                            (let ((__tmp248924
                                   (if _compile?235252_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr235251_))
                                       _expr235251_)))
                              (declare (not safe))
                              (cons __tmp248924 '()))))
                       (declare (not safe))
                       (cons __tmp248925 __tmp248923))))
                  (_bind-e__0__246513246514_
                   (lambda (_id235257_ _expr235258_)
                     (let ((_compile?235260_ '#t))
                       (declare (not safe))
                       (_bind-e__246511246512_
                        _id235257_
                        _expr235258_
                        _compile?235260_))))
                  (_bind-e234412_
                   (lambda _g248927_
                     (let ((_g248926_
                            (let ()
                              (declare (not safe))
                              (##length _g248927_))))
                       (cond ((let () (declare (not safe)) (##fx= _g248926_ 2))
                              (apply (lambda (_id235257_ _expr235258_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__246513246514_
                                          _id235257_
                                          _expr235258_)))
                                     _g248927_))
                             ((let () (declare (not safe)) (##fx= _g248926_ 3))
                              (apply (lambda (_id235262_
                                              _expr235263_
                                              _compile?235264_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__246511246512_
                                          _id235262_
                                          _expr235263_
                                          _compile?235264_)))
                                     _g248927_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g248927_))))))
                  (_compile-bindings234413_
                   (lambda (_rest234548_)
                     (let _lp234550_ ((_rest234552_ _rest234548_)
                                      (_bind234553_ '()))
                       (let* ((_rest234554234562_ _rest234552_)
                              (_else234556234570_
                               (lambda () (reverse _bind234553_)))
                              (_K234558235237_
                               (lambda (_rest234573_ _hd234574_)
                                 (let* ((___stx248438248439_ _hd234574_)
                                        (_g234579234626_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx248438248439_)))))
                                   (let ((___kont248440248441_
                                          (lambda (_L235144_ _L235145_)
                                            (let* ((___stx248418248419_
                                                    _L235144_)
                                                   (_g235160235174_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx248418248419_)))))
                                              (let ((___kont248420248421_
                                                     (lambda (_L235222_)
                                                       (let ((__tmp248928
                                                              (let ((__tmp248929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__246511246512_
                                _L235145_
                                _L235144_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp248929 _bind234553_))))
                 (declare (not safe))
                 (_lp234550_ _rest234573_ __tmp248928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont248422248423_
                                                     (lambda (_L235187_)
                                                       (let ((_g248930_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx234410_
                         _L235145_
                         _L235187_
                         '#t))))
                 (begin
                   (let ((_g248931_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248930_)
                                (##vector-length _g248930_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248931_ 3)))
                         (error "Context expects 3 values" _g248931_)))
                   (let ((_ids235197_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248930_ 0)))
                         (_impls235198_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248930_ 1)))
                         (_clauses235199_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248930_ 2))))
                     (let* ((_g248932_
                             (for-each gx#core-bind-runtime! _ids235197_))
                            (_xbind235202_
                             (map _bind-e234412_ _ids235197_ _impls235198_))
                            (_expr*235204_
                             (let ((__tmp248934
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses235199_)))
                                   (__tmp248933
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp248934
                                __tmp248933)))
                            (_bind*235206_
                             (let ()
                               (declare (not safe))
                               (_bind-e__246511246512_
                                _L235145_
                                _expr*235204_
                                '#f))))
                       (let ((__tmp248936
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L235145_)))
                             (__tmp248935
                              (map gxc#identifier-symbol _ids235197_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp248936
                          '" => "
                          __tmp248935))
                       (let ((__tmp248937
                              (let ((__tmp248938
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind234553_
                                               _xbind235202_))))
                                (declare (not safe))
                                (cons _bind*235206_ __tmp248938))))
                         (declare (not safe))
                         (_lp234550_ _rest234573_ __tmp248937)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match248429248430_
                                                       (lambda (_e235165235214_
                                                                _hd235164235217_
                                                                _tl235163235219_)
                                                         (let ((_L235222_
                                                                _tl235163235219_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L235222_))
                       (___kont248420248421_ _L235222_)
                       (___kont248422248423_ _tl235163235219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx248418248419_))
                                                      (let ((_e235165235214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx248418248419_))))
                (let ((_tl235163235219_
                       (let () (declare (not safe)) (##cdr _e235165235214_)))
                      (_hd235164235217_
                       (let () (declare (not safe)) (##car _e235165235214_))))
                  (___match248429248430_
                   _e235165235214_
                   _hd235164235217_
                   _tl235163235219_)))
              (let () (declare (not safe)) (_g235160235174_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont248442248443_
                                          (lambda (_L234972_ _L234973_)
                                            (let* ((_g234987235017_
                                                    (lambda (_g234988235014_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g234988235014_))))
                                                   (_g234986235112_
                                                    (lambda (_g234988235020_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g234988235020_))
                                                          (let ((_e234994235022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g234988235020_))))
                    (let ((_hd234993235025_
                           (let ()
                             (declare (not safe))
                             (##car _e234994235022_)))
                          (_tl234992235027_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234994235022_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234992235027_))
                          (let ((_e234997235030_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234992235027_))))
                            (let ((_hd234996235033_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234997235030_)))
                                  (_tl234995235035_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234997235030_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234996235033_))
                                  (let ((_e235000235038_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234996235033_))))
                                    (let ((_hd234999235041_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235000235038_)))
                                          (_tl234998235043_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235000235038_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234999235041_))
                                          (let ((_e235003235046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234999235041_))))
                                            (let ((_hd235002235049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235003235046_)))
                                                  (_tl235001235051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235003235046_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd235002235049_))
                                                  (let ((_e235006235054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd235002235049_))))
                                                    (let ((_hd235005235057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235006235054_)))
                                                          (_tl235004235059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235006235054_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235004235059_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235001235051_))
                      (let ((_e235009235062_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235001235051_))))
                        (let ((_hd235008235065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235009235062_)))
                              (_tl235007235067_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235009235062_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235007235067_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl234998235043_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234995235035_))
                                      (let ((_e235012235070_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234995235035_))))
                                        (let ((_hd235011235073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235012235070_)))
                                              (_tl235010235075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235012235070_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235010235075_))
                                              ((lambda (_L235078_
                                                        _L235079_
                                                        _L235080_)
                                                 (let* ((_lambda-id235104_
                                                         (let ((__tmp248940
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L234973_)))
                       (__tmp248939 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp248940 __tmp248939)))
                (_lambda-id235106_
                 (let ((__tmp248941
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx234410_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id235104_ __tmp248941)))
                (_g248942_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id235106_)))
                (_new-case-lambda-expr235109_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L235078_
                    _L235080_
                    _lambda-id235106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp248944
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L234973_)))
                                                         (__tmp248943
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id235106_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp248944
                                                      '" => "
                                                      __tmp248943))
                                                   (let ((__tmp248947
                                                          (let ((__tmp248948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__246511246512_
                            _L234973_
                            _new-case-lambda-expr235109_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp248948 _rest234573_)))
                 (__tmp248945
                  (let ((__tmp248946
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__246513246514_
                            _lambda-id235106_
                            _L235079_))))
                    (declare (not safe))
                    (cons __tmp248946 _bind234553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp234550_
                                                      __tmp248947
                                                      __tmp248945))))
                                               _hd235011235073_
                                               _hd235008235065_
                                               _hd235005235057_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234987235017_
                                                 _g234988235020_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234987235017_ _g234988235020_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g234987235017_ _g234988235020_)))
                              (let ()
                                (declare (not safe))
                                (_g234987235017_ _g234988235020_)))))
                      (let ()
                        (declare (not safe))
                        (_g234987235017_ _g234988235020_)))
                  (let ()
                    (declare (not safe))
                    (_g234987235017_ _g234988235020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234987235017_
                                                     _g234988235020_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g234987235017_
                                             _g234988235020_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234987235017_ _g234988235020_)))))
                          (let ()
                            (declare (not safe))
                            (_g234987235017_ _g234988235020_)))))
                  (let ()
                    (declare (not safe))
                    (_g234987235017_ _g234988235020_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g234986235112_ _L234972_))))
                                         (___kont248444248445_
                                          (lambda (_L234696_ _L234697_)
                                            (let* ((_g234711234764_
                                                    (lambda (_g234712234761_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g234712234761_))))
                                                   (_g234710234940_
                                                    (lambda (_g234712234767_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g234712234767_))
                                                          (let ((_e234720234769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g234712234767_))))
                    (let ((_hd234719234772_
                           (let ()
                             (declare (not safe))
                             (##car _e234720234769_)))
                          (_tl234718234774_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234720234769_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234718234774_))
                          (let ((_e234723234777_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234718234774_))))
                            (let ((_hd234722234780_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234723234777_)))
                                  (_tl234721234782_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234723234777_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234722234780_))
                                  (let ((_e234726234785_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234722234780_))))
                                    (let ((_hd234725234788_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234726234785_)))
                                          (_tl234724234790_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234726234785_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd234725234788_))
                                          (let ((_e234729234793_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd234725234788_))))
                                            (let ((_hd234728234796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234729234793_)))
                                                  (_tl234727234798_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234729234793_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd234728234796_))
                                                  (let ((_e234732234801_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd234728234796_))))
                                                    (let ((_hd234731234804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234732234801_)))
                                                          (_tl234730234806_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234732234801_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234730234806_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl234727234798_))
                      (let ((_e234735234809_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234727234798_))))
                        (let ((_hd234734234812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234735234809_)))
                              (_tl234733234814_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234735234809_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd234734234812_))
                              (let ((_e234738234817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd234734234812_))))
                                (let ((_hd234737234820_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234738234817_)))
                                      (_tl234736234822_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234738234817_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234736234822_))
                                      (let ((_e234741234825_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234736234822_))))
                                        (let ((_hd234740234828_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234741234825_)))
                                              (_tl234739234830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234741234825_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd234740234828_))
                                              (let ((_e234744234833_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd234740234828_))))
                                                (let ((_hd234743234836_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234744234833_)))
                                                      (_tl234742234838_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234744234833_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd234743234836_))
                                                      (let ((_e234747234841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd234743234836_))))
                (let ((_hd234746234844_
                       (let () (declare (not safe)) (##car _e234747234841_)))
                      (_tl234745234846_
                       (let () (declare (not safe)) (##cdr _e234747234841_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd234746234844_))
                      (let ((_e234750234849_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd234746234844_))))
                        (let ((_hd234749234852_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234750234849_)))
                              (_tl234748234854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234750234849_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl234748234854_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl234745234846_))
                                  (let ((_e234753234857_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl234745234846_))))
                                    (let ((_hd234752234860_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234753234857_)))
                                          (_tl234751234862_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234753234857_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234751234862_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234742234838_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl234739234830_))
                                                  (let ((_e234756234865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl234739234830_))))
                                                    (let ((_hd234755234868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e234756234865_)))
                                                          (_tl234754234870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e234756234865_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl234754234870_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl234733234814_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl234724234790_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234721234782_))
                              (let ((_e234759234873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234721234782_))))
                                (let ((_hd234758234876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234759234873_)))
                                      (_tl234757234878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234759234873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234757234878_))
                                      ((lambda (_L234881_
                                                _L234882_
                                                _L234883_
                                                _L234884_
                                                _L234885_)
                                         (let* ((_get-kws-id234925_
                                                 (let ((__tmp248950
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L234697_)))
                                                       (__tmp248949
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp248950
                                                    __tmp248949)))
                                                (_get-kws-id234927_
                                                 (let ((__tmp248951
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx234410_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id234925_
                                                    __tmp248951)))
                                                (_main-id234929_
                                                 (let ((__tmp248953
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L234697_)))
                                                       (__tmp248952
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp248953
                                                    __tmp248952)))
                                                (_main-id234931_
                                                 (let ((__tmp248954
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx234410_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id234929_
                                                    __tmp248954)))
                                                (_g248955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id234927_)))
                                                (_g248956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id234931_)))
                                                (_new-kw-dispatch234935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L234881_
                                                    _L234885_
                                                    _get-kws-id234927_)))
                                                (_new-get-kws234937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L234882_
                                                    _L234884_
                                                    _main-id234931_))))
                                           (let ((__tmp248959
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L234697_)))
                                                 (__tmp248958
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id234927_)))
                                                 (__tmp248957
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id234931_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp248959
                                              '" => "
                                              __tmp248958
                                              '" => "
                                              __tmp248957))
                                           (let ((__tmp248960
                                                  (let ((__tmp248965
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__246511246512_
                                                            _main-id234931_
                                                            _L234883_
                                                            '#f)))
                                                        (__tmp248961
                                                         (let ((__tmp248964
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__246511246512_
                           _get-kws-id234927_
                           _new-get-kws234937_
                           '#f)))
                       (__tmp248962
                        (let ((__tmp248963
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__246511246512_
                                  _L234697_
                                  _new-kw-dispatch234935_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp248963 _rest234573_))))
                   (declare (not safe))
                   (cons __tmp248964 __tmp248962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248965
                                                          __tmp248961))))
                                             (declare (not safe))
                                             (_lp234550_
                                              __tmp248960
                                              _bind234553_))))
                                       _hd234758234876_
                                       _hd234755234868_
                                       _hd234752234860_
                                       _hd234749234852_
                                       _hd234731234804_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234711234764_ _g234712234767_)))))
                              (let ()
                                (declare (not safe))
                                (_g234711234764_ _g234712234767_)))
                          (let ()
                            (declare (not safe))
                            (_g234711234764_ _g234712234767_)))
                      (let ()
                        (declare (not safe))
                        (_g234711234764_ _g234712234767_)))
                  (let ()
                    (declare (not safe))
                    (_g234711234764_ _g234712234767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234711234764_
                                                     _g234712234767_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g234711234764_
                                                 _g234712234767_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g234711234764_
                                             _g234712234767_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234711234764_ _g234712234767_)))
                              (let ()
                                (declare (not safe))
                                (_g234711234764_ _g234712234767_)))))
                      (let ()
                        (declare (not safe))
                        (_g234711234764_ _g234712234767_)))))
              (let ()
                (declare (not safe))
                (_g234711234764_ _g234712234767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g234711234764_
                                                 _g234712234767_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234711234764_ _g234712234767_)))))
                              (let ()
                                (declare (not safe))
                                (_g234711234764_ _g234712234767_)))))
                      (let ()
                        (declare (not safe))
                        (_g234711234764_ _g234712234767_)))
                  (let ()
                    (declare (not safe))
                    (_g234711234764_ _g234712234767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234711234764_
                                                     _g234712234767_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g234711234764_
                                             _g234712234767_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234711234764_ _g234712234767_)))))
                          (let ()
                            (declare (not safe))
                            (_g234711234764_ _g234712234767_)))))
                  (let ()
                    (declare (not safe))
                    (_g234711234764_ _g234712234767_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g234710234940_ _L234696_))))
                                         (___kont248446248447_
                                          (lambda (_L234647_ _L234648_)
                                            (let ((__tmp248966
                                                   (let ((__tmp248967
                                                          (let ((__tmp248968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp248969
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L234647_))))
                           (declare (not safe))
                           (cons __tmp248969 '()))))
                    (declare (not safe))
                    (cons _L234648_ __tmp248968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248967
                                                           _bind234553_))))
                                              (declare (not safe))
                                              (_lp234550_
                                               _rest234573_
                                               __tmp248966)))))
                                     (let* ((___match248513248514_
                                             (lambda (_e234607234672_
                                                      _hd234606234675_
                                                      _tl234605234677_
                                                      _e234610234680_
                                                      _hd234609234683_
                                                      _tl234608234685_
                                                      _e234613234688_
                                                      _hd234612234691_
                                                      _tl234611234693_)
                                               (let ((_L234696_
                                                      _hd234612234691_)
                                                     (_L234697_
                                                      _hd234609234683_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L234697_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L234696_)))
                                                     (___kont248444248445_
                                                      _L234696_
                                                      _L234697_)
                                                     (___kont248446248447_
                                                      _hd234612234691_
                                                      _hd234606234675_)))))
                                            (___match248491248492_
                                             (lambda (_e234596234948_
                                                      _hd234595234951_
                                                      _tl234594234953_
                                                      _e234599234956_
                                                      _hd234598234959_
                                                      _tl234597234961_
                                                      _e234602234964_
                                                      _hd234601234967_
                                                      _tl234600234969_)
                                               (let ((_L234972_
                                                      _hd234601234967_)
                                                     (_L234973_
                                                      _hd234598234959_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L234973_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L234972_)))
                                                     (___kont248442248443_
                                                      _L234972_
                                                      _L234973_)
                                                     (___match248513248514_
                                                      _e234596234948_
                                                      _hd234595234951_
                                                      _tl234594234953_
                                                      _e234599234956_
                                                      _hd234598234959_
                                                      _tl234597234961_
                                                      _e234602234964_
                                                      _hd234601234967_
                                                      _tl234600234969_)))))
                                            (___match248469248470_
                                             (lambda (_e234585235120_
                                                      _hd234584235123_
                                                      _tl234583235125_
                                                      _e234588235128_
                                                      _hd234587235131_
                                                      _tl234586235133_
                                                      _e234591235136_
                                                      _hd234590235139_
                                                      _tl234589235141_)
                                               (let ((_L235144_
                                                      _hd234590235139_)
                                                     (_L235145_
                                                      _hd234587235131_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L235145_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L235144_)))
                                                     (___kont248440248441_
                                                      _L235144_
                                                      _L235145_)
                                                     (___match248491248492_
                                                      _e234585235120_
                                                      _hd234584235123_
                                                      _tl234583235125_
                                                      _e234588235128_
                                                      _hd234587235131_
                                                      _tl234586235133_
                                                      _e234591235136_
                                                      _hd234590235139_
                                                      _tl234589235141_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx248438248439_))
                                           (let ((_e234585235120_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx248438248439_))))
                                             (let ((_tl234583235125_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e234585235120_)))
                                                   (_hd234584235123_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e234585235120_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd234584235123_))
                                                   (let ((_e234588235128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd234584235123_))))
                                                     (let ((_tl234586235133_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e234588235128_)))
                                                           (_hd234587235131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e234588235128_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl234586235133_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl234583235125_))
                       (let ((_e234591235136_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl234583235125_))))
                         (let ((_tl234589235141_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e234591235136_)))
                               (_hd234590235139_
                                (let ()
                                  (declare (not safe))
                                  (##car _e234591235136_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl234589235141_))
                               (___match248469248470_
                                _e234585235120_
                                _hd234584235123_
                                _tl234583235125_
                                _e234588235128_
                                _hd234587235131_
                                _tl234586235133_
                                _e234591235136_
                                _hd234590235139_
                                _tl234589235141_)
                               (let ()
                                 (declare (not safe))
                                 (_g234579234626_)))))
                       (let () (declare (not safe)) (_g234579234626_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl234583235125_))
                       (let ((_e234621234639_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl234583235125_))))
                         (let ((_tl234619234644_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e234621234639_)))
                               (_hd234620234642_
                                (let ()
                                  (declare (not safe))
                                  (##car _e234621234639_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl234619234644_))
                               (___kont248446248447_
                                _hd234620234642_
                                _hd234584235123_)
                               (let ()
                                 (declare (not safe))
                                 (_g234579234626_)))))
                       (let () (declare (not safe)) (_g234579234626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl234583235125_))
                                                       (let ((_e234621234639_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl234583235125_))))
                 (let ((_tl234619234644_
                        (let () (declare (not safe)) (##cdr _e234621234639_)))
                       (_hd234620234642_
                        (let () (declare (not safe)) (##car _e234621234639_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl234619234644_))
                       (___kont248446248447_ _hd234620234642_ _hd234584235123_)
                       (let () (declare (not safe)) (_g234579234626_)))))
               (let () (declare (not safe)) (_g234579234626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g234579234626_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest234554234562_))
                             (let ((_hd234559235240_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest234554234562_)))
                                   (_tl234560235242_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest234554234562_))))
                               (let* ((_hd235245_ _hd234559235240_)
                                      (_rest235247_ _tl234560235242_))
                                 (declare (not safe))
                                 (_K234558235237_ _rest235247_ _hd235245_)))
                             (let ()
                               (declare (not safe))
                               (_else234556234570_))))))))
          (let* ((___stx248530248531_ _stx234410_)
                 (_g234416234443_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx248530248531_)))))
            (let ((___kont248532248533_
                   (lambda (_L234503_ _L234504_ _L234505_)
                     (let ((__tmp248971
                            (lambda ()
                              (let ((_hd234542_
                                     (let ((__tmp248972
                                            (let ((__tmp248973
                                                   (lambda (_g234534234537_
                                                            _g234535234539_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234534234537_
                                                             _g234535234539_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp248973
                                                      '()
                                                      _L234504_))))
                                       (declare (not safe))
                                       (_compile-bindings234413_ __tmp248972)))
                                    (_body234543_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L234503_))))
                                (let ((__tmp248974
                                       (let ((__tmp248975
                                              (let ((__tmp248976
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body234543_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd234542_
                                                      __tmp248976))))
                                         (declare (not safe))
                                         (cons _L234505_ __tmp248975))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp248974
                                   _stx234410_)))))
                           (__tmp248970
                            (let ((__obj248595
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj248595)
                              __obj248595)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp248971
                        gx#current-expander-context
                        __tmp248970))))
                  (___kont248536248537_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx234410_)))))
              (let ((___match248557248558_
                     (lambda (_e234423234455_
                              _hd234422234458_
                              _tl234421234460_
                              _e234426234463_
                              _hd234425234466_
                              _tl234424234468_
                              ___splice248534248535_
                              _target234427234471_
                              _tl234429234473_)
                       (letrec ((_loop234430234476_
                                 (lambda (_hd234428234479_ _bind234434234481_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd234428234479_))
                                       (let ((_e234431234484_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd234428234479_))))
                                         (let ((_lp-tl234433234489_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e234431234484_)))
                                               (_lp-hd234432234487_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e234431234484_))))
                                           (let ((__tmp248979
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd234432234487_
                                                          _bind234434234481_))))
                                             (declare (not safe))
                                             (_loop234430234476_
                                              _lp-tl234433234489_
                                              __tmp248979))))
                                       (let ((_bind234435234492_
                                              (reverse _bind234434234481_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl234424234468_))
                                             (let ((_e234438234495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl234424234468_))))
                                               (let ((_tl234436234500_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e234438234495_)))
                                                     (_hd234437234498_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e234438234495_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl234436234500_))
                                                     (let ((_L234503_
                                                            _hd234437234498_)
                                                           (_L234504_
                                                            _bind234435234492_)
                                                           (_L234505_
                                                            _hd234422234458_))
                                                       (if (let ((__tmp248977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248978
                                 (lambda (_g234526234529_ _g234527234531_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g234526234529_ _g234527234531_)))))
                            (declare (not safe))
                            (foldr1 __tmp248978 '() _L234504_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp248977))
                   (___kont248532248533_ _L234503_ _L234504_ _L234505_)
                   (___kont248536248537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont248536248537_))))
                                             (___kont248536248537_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop234430234476_ _target234427234471_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx248530248531_))
                    (let ((_e234423234455_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx248530248531_))))
                      (let ((_tl234421234460_
                             (let ()
                               (declare (not safe))
                               (##cdr _e234423234455_)))
                            (_hd234422234458_
                             (let ()
                               (declare (not safe))
                               (##car _e234423234455_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl234421234460_))
                            (let ((_e234426234463_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl234421234460_))))
                              (let ((_tl234424234468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e234426234463_)))
                                    (_hd234425234466_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e234426234463_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd234425234466_))
                                    (let ((___splice248534248535_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd234425234466_
                                              '0))))
                                      (let ((_tl234429234473_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice248534248535_
                                                '1)))
                                            (_target234427234471_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice248534248535_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234429234473_))
                                            (___match248557248558_
                                             _e234423234455_
                                             _hd234422234458_
                                             _tl234421234460_
                                             _e234426234463_
                                             _hd234425234466_
                                             _tl234424234468_
                                             ___splice248534248535_
                                             _target234427234471_
                                             _tl234429234473_)
                                            (___kont248536248537_))))
                                    (___kont248536248537_))))
                            (___kont248536248537_))))
                    (___kont248536248537_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind234328_)
        (let* ((___stx248560248561_ _bind234328_)
               (_g234331234348_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx248560248561_)))))
          (let ((___kont248562248563_
                 (lambda (_L234384_ _L234385_)
                   (if (let () (declare (not safe)) (gx#identifier? _L234385_))
                       (let ((_$e234401_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L234384_))))
                         (if _$e234401_
                             _$e234401_
                             (let ((_$e234404_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L234384_))))
                               (if _$e234404_
                                   _$e234404_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L234384_))))))
                       '#f)))
                (___kont248564248565_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx248560248561_))
                (let ((_e234337234360_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx248560248561_))))
                  (let ((_tl234335234365_
                         (let () (declare (not safe)) (##cdr _e234337234360_)))
                        (_hd234336234363_
                         (let ()
                           (declare (not safe))
                           (##car _e234337234360_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd234336234363_))
                        (let ((_e234340234368_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd234336234363_))))
                          (let ((_tl234338234373_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234340234368_)))
                                (_hd234339234371_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234340234368_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl234338234373_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl234335234365_))
                                    (let ((_e234343234376_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl234335234365_))))
                                      (let ((_tl234341234381_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e234343234376_)))
                                            (_hd234342234379_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e234343234376_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl234341234381_))
                                            (___kont248562248563_
                                             _hd234342234379_
                                             _hd234339234371_)
                                            (___kont248564248565_))))
                                    (___kont248564248565_))
                                (___kont248564248565_))))
                        (___kont248564248565_))))
                (___kont248564248565_))))))))
