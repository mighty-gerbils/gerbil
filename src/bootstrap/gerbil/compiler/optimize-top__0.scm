(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1708247277)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236316_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp242476 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236316_ __tmp242476))
           (let ()
             (declare (not safe))
             (table-set! _tbl236316_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236316_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236316_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236316_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl236316_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx236299_ . _args236301_)
        (let ((__tmp242478
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236301_)
                     (gxc#compile-e__0 _stx236299_)
                     (let ((_arg1236306_ (car _args236301_))
                           (_rest236308_ (cdr _args236301_)))
                       (if (null? _rest236308_)
                           (gxc#compile-e__1 _stx236299_ _arg1236306_)
                           (let ((_arg2236311_ (car _rest236308_))
                                 (_rest236313_ (cdr _rest236308_)))
                             (if (null? _rest236313_)
                                 (gxc#compile-e__2
                                  _stx236299_
                                  _arg1236306_
                                  _arg2236311_)
                                 (apply gxc#compile-e
                                        _stx236299_
                                        _arg1236306_
                                        _arg2236311_
                                        _rest236313_))))))))
              (__tmp242477 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp242478
           gxc#current-compile-methods
           __tmp242477))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl236296_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp242479 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236296_ __tmp242479))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236296_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236296_ '%#call gxc#basic-expression-type-call%))
           _tbl236296_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx236279_ . _args236281_)
        (let ((__tmp242481
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236281_)
                     (gxc#compile-e__0 _stx236279_)
                     (let ((_arg1236286_ (car _args236281_))
                           (_rest236288_ (cdr _args236281_)))
                       (if (null? _rest236288_)
                           (gxc#compile-e__1 _stx236279_ _arg1236286_)
                           (let ((_arg2236291_ (car _rest236288_))
                                 (_rest236293_ (cdr _rest236288_)))
                             (if (null? _rest236293_)
                                 (gxc#compile-e__2
                                  _stx236279_
                                  _arg1236286_
                                  _arg2236291_)
                                 (apply gxc#compile-e
                                        _stx236279_
                                        _arg1236286_
                                        _arg2236291_
                                        _rest236293_))))))))
              (__tmp242480 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp242481
           gxc#current-compile-methods
           __tmp242480))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl236276_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp242482 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl236276_ __tmp242482))
           (let ()
             (declare (not safe))
             (table-set! _tbl236276_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236276_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236276_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236276_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236276_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236276_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl236276_ '%#set! gxc#collect-body-setq%))
           _tbl236276_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx236259_ . _args236261_)
        (let ((__tmp242484
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236261_)
                     (gxc#compile-e__0 _stx236259_)
                     (let ((_arg1236266_ (car _args236261_))
                           (_rest236268_ (cdr _args236261_)))
                       (if (null? _rest236268_)
                           (gxc#compile-e__1 _stx236259_ _arg1236266_)
                           (let ((_arg2236271_ (car _rest236268_))
                                 (_rest236273_ (cdr _rest236268_)))
                             (if (null? _rest236273_)
                                 (gxc#compile-e__2
                                  _stx236259_
                                  _arg1236266_
                                  _arg2236271_)
                                 (apply gxc#compile-e
                                        _stx236259_
                                        _arg1236266_
                                        _arg2236271_
                                        _rest236273_))))))))
              (__tmp242483 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp242484
           gxc#current-compile-methods
           __tmp242483))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl236256_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp242485 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl236256_ __tmp242485))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236256_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236256_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl236256_ '%#ref gxc#basic-expression-type-ref%))
           _tbl236256_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx236239_ . _args236241_)
        (let ((__tmp242487
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236241_)
                     (gxc#compile-e__0 _stx236239_)
                     (let ((_arg1236246_ (car _args236241_))
                           (_rest236248_ (cdr _args236241_)))
                       (if (null? _rest236248_)
                           (gxc#compile-e__1 _stx236239_ _arg1236246_)
                           (let ((_arg2236251_ (car _rest236248_))
                                 (_rest236253_ (cdr _rest236248_)))
                             (if (null? _rest236253_)
                                 (gxc#compile-e__2
                                  _stx236239_
                                  _arg1236246_
                                  _arg2236251_)
                                 (apply gxc#compile-e
                                        _stx236239_
                                        _arg1236246_
                                        _arg2236251_
                                        _rest236253_))))))))
              (__tmp242486 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp242487
           gxc#current-compile-methods
           __tmp242486))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl236236_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp242488 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl236236_ __tmp242488))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236236_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236236_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236236_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl236236_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl236236_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx236219_ . _args236221_)
        (let ((__tmp242490
               (lambda ()
                 (declare (not safe))
                 (if (null? _args236221_)
                     (gxc#compile-e__0 _stx236219_)
                     (let ((_arg1236226_ (car _args236221_))
                           (_rest236228_ (cdr _args236221_)))
                       (if (null? _rest236228_)
                           (gxc#compile-e__1 _stx236219_ _arg1236226_)
                           (let ((_arg2236231_ (car _rest236228_))
                                 (_rest236233_ (cdr _rest236228_)))
                             (if (null? _rest236233_)
                                 (gxc#compile-e__2
                                  _stx236219_
                                  _arg1236226_
                                  _arg2236231_)
                                 (apply gxc#compile-e
                                        _stx236219_
                                        _arg1236226_
                                        _arg2236231_
                                        _rest236233_))))))))
              (__tmp242489 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp242490
           gxc#current-compile-methods
           __tmp242489))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx236122_)
        (let* ((___stx240396240397_ _stx236122_)
               (_g236125236145_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240396240397_)))))
          (let ((___kont240398240399_
                 (lambda (_L236189_ _L236190_)
                   (let ((_sym236208_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236190_))))
                     (if (let ((__tmp242491 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp242491 _sym236208_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236208_))
                         (let ((_type236209236211_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L236189_))))
                           (if _type236209236211_
                               (let ((_type236214_ _type236209236211_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym236208_
                                  _type236214_))
                               '#f))))))
                (___kont240400240401_ (lambda () '#!void)))
            (let ((___match240429240430_
                   (lambda (_e236131236157_
                            _hd236130236160_
                            _tl236129236162_
                            _e236134236165_
                            _hd236133236168_
                            _tl236132236170_
                            _e236137236173_
                            _hd236136236176_
                            _tl236135236178_
                            _e236140236181_
                            _hd236139236184_
                            _tl236138236186_)
                     (let ((_L236189_ _hd236139236184_)
                           (_L236190_ _hd236136236176_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236190_))
                           (___kont240398240399_ _L236189_ _L236190_)
                           (___kont240400240401_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240396240397_))
                  (let ((_e236131236157_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240396240397_))))
                    (let ((_tl236129236162_
                           (let ()
                             (declare (not safe))
                             (##cdr _e236131236157_)))
                          (_hd236130236160_
                           (let ()
                             (declare (not safe))
                             (##car _e236131236157_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl236129236162_))
                          (let ((_e236134236165_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl236129236162_))))
                            (let ((_tl236132236170_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e236134236165_)))
                                  (_hd236133236168_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e236134236165_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd236133236168_))
                                  (let ((_e236137236173_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd236133236168_))))
                                    (let ((_tl236135236178_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e236137236173_)))
                                          (_hd236136236176_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e236137236173_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl236135236178_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl236132236170_))
                                              (let ((_e236140236181_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl236132236170_))))
                                                (let ((_tl236138236186_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236140236181_)))
                                                      (_hd236139236184_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236140236181_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236138236186_))
                                                      (___match240429240430_
                                                       _e236131236157_
                                                       _hd236130236160_
                                                       _tl236129236162_
                                                       _e236134236165_
                                                       _hd236133236168_
                                                       _tl236132236170_
                                                       _e236137236173_
                                                       _hd236136236176_
                                                       _tl236135236178_
                                                       _e236140236181_
                                                       _hd236139236184_
                                                       _tl236138236186_)
                                                      (___kont240400240401_))))
                                              (___kont240400240401_))
                                          (___kont240400240401_))))
                                  (___kont240400240401_))))
                          (___kont240400240401_))))
                  (___kont240400240401_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx235978_)
        (let* ((___stx240432240433_ _stx235978_)
               (_g235981236012_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240432240433_)))))
          (let ((___kont240434240435_
                 (lambda (_L236094_ _L236095_)
                   (let ((_sym236111_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L236095_))))
                     (if (let ((__tmp242492 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp242492 _sym236111_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym236111_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym236111_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym236111_))
                             (let ((_type236112236114_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L236094_))))
                               (if _type236112236114_
                                   (let ((_type236117_ _type236112236114_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym236111_
                                      _type236117_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L236094_)))))
                (___kont240436240437_
                 (lambda (_L236041_ _L236042_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L236041_)))))
            (let ((___match240465240466_
                   (lambda (_e235987236062_
                            _hd235986236065_
                            _tl235985236067_
                            _e235990236070_
                            _hd235989236073_
                            _tl235988236075_
                            _e235993236078_
                            _hd235992236081_
                            _tl235991236083_
                            _e235996236086_
                            _hd235995236089_
                            _tl235994236091_)
                     (let ((_L236094_ _hd235995236089_)
                           (_L236095_ _hd235992236081_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L236095_))
                           (___kont240434240435_ _L236094_ _L236095_)
                           (___kont240436240437_
                            _hd235995236089_
                            _hd235989236073_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240432240433_))
                  (let ((_e235987236062_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240432240433_))))
                    (let ((_tl235985236067_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235987236062_)))
                          (_hd235986236065_
                           (let ()
                             (declare (not safe))
                             (##car _e235987236062_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235985236067_))
                          (let ((_e235990236070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235985236067_))))
                            (let ((_tl235988236075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235990236070_)))
                                  (_hd235989236073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235990236070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235989236073_))
                                  (let ((_e235993236078_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235989236073_))))
                                    (let ((_tl235991236083_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235993236078_)))
                                          (_hd235992236081_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235993236078_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235991236083_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235988236075_))
                                              (let ((_e235996236086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235988236075_))))
                                                (let ((_tl235994236091_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235996236086_)))
                                                      (_hd235995236089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235996236086_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235994236091_))
                                                      (___match240465240466_
                                                       _e235987236062_
                                                       _hd235986236065_
                                                       _tl235985236067_
                                                       _e235990236070_
                                                       _hd235989236073_
                                                       _tl235988236075_
                                                       _e235993236078_
                                                       _hd235992236081_
                                                       _tl235991236083_
                                                       _e235996236086_
                                                       _hd235995236089_
                                                       _tl235994236091_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235981236012_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235981236012_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235988236075_))
                                              (let ((_e236007236033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235988236075_))))
                                                (let ((_tl236005236038_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e236007236033_)))
                                                      (_hd236006236036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e236007236033_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl236005236038_))
                                                      (___kont240436240437_
                                                       _hd236006236036_
                                                       _hd235989236073_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235981236012_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235981236012_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235988236075_))
                                      (let ((_e236007236033_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235988236075_))))
                                        (let ((_tl236005236038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e236007236033_)))
                                              (_hd236006236036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e236007236033_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl236005236038_))
                                              (___kont240436240437_
                                               _hd236006236036_
                                               _hd235989236073_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235981236012_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235981236012_))))))
                          (let () (declare (not safe)) (_g235981236012_)))))
                  (let () (declare (not safe)) (_g235981236012_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx235763_)
        (letrec ((_collect-e235765_
                  (lambda (_hd235922_ _expr235923_)
                    (let* ((___stx240488240489_ _hd235922_)
                           (_g235926235936_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx240488240489_)))))
                      (let ((___kont240490240491_
                             (lambda (_L235956_)
                               (let ((_sym235967_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L235956_))))
                                 (if (let ((__tmp242493
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp242493 _sym235967_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym235967_))
                                     (let ((_type235968235970_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr235923_))))
                                       (if _type235968235970_
                                           (let ((_type235973_
                                                  _type235968235970_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym235967_
                                              _type235973_
                                              '#t))
                                           '#f))))))
                            (___kont240492240493_ (lambda () '#!void)))
                        (let ((___match240501240502_
                               (lambda (_e235931235948_
                                        _hd235930235951_
                                        _tl235929235953_)
                                 (let ((_L235956_ _hd235930235951_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L235956_))
                                       (___kont240490240491_ _L235956_)
                                       (___kont240492240493_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx240488240489_))
                              (let ((_e235931235948_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx240488240489_))))
                                (let ((_tl235929235953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235931235948_)))
                                      (_hd235930235951_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235931235948_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235929235953_))
                                      (___match240501240502_
                                       _e235931235948_
                                       _hd235930235951_
                                       _tl235929235953_)
                                      (___kont240492240493_))))
                              (___kont240492240493_))))))))
          (let* ((_g235767235802_
                  (lambda (_g235768235799_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g235768235799_))))
                 (_g235766235919_
                  (lambda (_g235768235805_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g235768235805_))
                        (let ((_e235774235807_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g235768235805_))))
                          (let ((_hd235773235810_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235774235807_)))
                                (_tl235772235812_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235774235807_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl235772235812_))
                                (let ((_e235777235815_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl235772235812_))))
                                  (let ((_hd235776235818_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235777235815_)))
                                        (_tl235775235820_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235777235815_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd235776235818_))
                                        (let ((_g242494_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd235776235818_
                                                  '0))))
                                          (begin
                                            (let ((_g242495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g242494_)
                                                         (##vector-length
                                                          _g242494_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g242495_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g242495_)))
                                            (let ((_target235778235823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g242494_
                                                      0)))
                                                  (_tl235780235825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g242494_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235780235825_))
                                                  (letrec ((_loop235781235828_
                                                            (lambda (_hd235779235831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr235785235833_
                             _hd235786235835_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235779235831_))
                          (let ((_e235782235838_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235779235831_))))
                            (let ((_lp-hd235783235841_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235782235838_)))
                                  (_lp-tl235784235843_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235782235838_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd235783235841_))
                                  (let ((_e235791235846_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd235783235841_))))
                                    (let ((_hd235790235849_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235791235846_)))
                                          (_tl235789235851_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235791235846_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235789235851_))
                                          (let ((_e235794235854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235789235851_))))
                                            (let ((_hd235793235857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235794235854_)))
                                                  (_tl235792235859_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235794235854_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235792235859_))
                                                  (let ((__tmp242500
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd235793235857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr235785235833_)))
                (__tmp242499
                 (let ()
                   (declare (not safe))
                   (cons _hd235790235849_ _hd235786235835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop235781235828_
                                                     _lp-tl235784235843_
                                                     __tmp242500
                                                     __tmp242499))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235767235802_
                                                     _g235768235805_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235767235802_
                                             _g235768235805_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235767235802_ _g235768235805_)))))
                          (let ((_expr235787235862_
                                 (reverse _expr235785235833_))
                                (_hd235788235864_ (reverse _hd235786235835_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl235775235820_))
                                (let ((_e235797235867_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl235775235820_))))
                                  (let ((_hd235796235870_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e235797235867_)))
                                        (_tl235795235872_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e235797235867_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl235795235872_))
                                        ((lambda (_L235875_
                                                  _L235876_
                                                  _L235877_)
                                           (for-each
                                            _collect-e235765_
                                            (let ((__tmp242496
                                                   (lambda (_g235897235900_
                                                            _g235898235902_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g235897235900_
                                                             _g235898235902_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp242496
                                                      '()
                                                      _L235877_))
                                            (let ((__tmp242497
                                                   (lambda (_g235904235907_
                                                            _g235905235909_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g235904235907_
                                                             _g235905235909_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp242497
                                                      '()
                                                      _L235876_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp242498
                                                   (lambda (_g235911235914_
                                                            _g235912235916_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g235911235914_
                                                             _g235912235916_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp242498
                                                      '()
                                                      _L235876_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L235875_)))
                                         _hd235796235870_
                                         _expr235787235862_
                                         _hd235788235864_)
                                        (let ()
                                          (declare (not safe))
                                          (_g235767235802_ _g235768235805_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235767235802_ _g235768235805_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop235781235828_
                                                       _target235778235823_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235767235802_
                                                     _g235768235805_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g235767235802_ _g235768235805_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235767235802_ _g235768235805_)))))
                        (let ()
                          (declare (not safe))
                          (_g235767235802_ _g235768235805_))))))
            (declare (not safe))
            (_g235766235919_ _stx235763_)))))
    (define gxc#collect-type-call%
      (lambda (_stx235255_)
        (let* ((___stx240504240505_ _stx235255_)
               (_g235259235374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240504240505_)))))
          (let ((___kont240506240507_
                 (lambda (_L235713_ _L235714_ _L235715_ _L235716_ _L235717_)
                   (let ((__tmp242504
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L235716_)))
                         (__tmp242503
                          (let () (declare (not safe)) (gx#stx-e _L235715_)))
                         (__tmp242502
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L235714_)))
                         (__tmp242501
                          (let () (declare (not safe)) (gx#stx-e _L235713_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp242504
                      __tmp242503
                      __tmp242502
                      __tmp242501))))
                (___kont240508240509_
                 (lambda (_L235541_ _L235542_ _L235543_ _L235544_)
                   (let ((__tmp242507
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L235543_)))
                         (__tmp242506
                          (let () (declare (not safe)) (gx#stx-e _L235542_)))
                         (__tmp242505
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L235541_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp242507
                      __tmp242506
                      __tmp242505
                      '#f))))
                (___kont240510240511_
                 (lambda (_L235411_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp242508
                           (lambda (_g235424235427_ _g235425235429_)
                             (let ()
                               (declare (not safe))
                               (cons _g235424235427_ _g235425235429_)))))
                      (declare (not safe))
                      (foldr1 __tmp242508 '() _L235411_))))))
            (let* ((___match240761240762_
                    (lambda (_e235360235379_
                             _hd235359235382_
                             _tl235358235384_
                             ___splice240512240513_
                             _target235361235387_
                             _tl235363235389_)
                      (letrec ((_loop235364235392_
                                (lambda (_hd235362235395_ _expr235368235397_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd235362235395_))
                                      (let ((_e235365235400_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd235362235395_))))
                                        (let ((_lp-tl235367235405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235365235400_)))
                                              (_lp-hd235366235403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235365235400_))))
                                          (let ((__tmp242509
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd235366235403_
                                                         _expr235368235397_))))
                                            (declare (not safe))
                                            (_loop235364235392_
                                             _lp-tl235367235405_
                                             __tmp242509))))
                                      (let ((_expr235369235408_
                                             (reverse _expr235368235397_)))
                                        (___kont240510240511_
                                         _expr235369235408_))))))
                        (let ()
                          (declare (not safe))
                          (_loop235364235392_ _target235361235387_ '())))))
                   (___match240641240642_
                    (lambda (_e235268235585_
                             _hd235267235588_
                             _tl235266235590_
                             _e235271235593_
                             _hd235270235596_
                             _tl235269235598_
                             _e235274235601_
                             _hd235273235604_
                             _tl235272235606_
                             _e235277235609_
                             _hd235276235612_
                             _tl235275235614_
                             _e235280235617_
                             _hd235279235620_
                             _tl235278235622_
                             _e235283235625_
                             _hd235282235628_
                             _tl235281235630_
                             _e235286235633_
                             _hd235285235636_
                             _tl235284235638_
                             _e235289235641_
                             _hd235288235644_
                             _tl235287235646_
                             _e235292235649_
                             _hd235291235652_
                             _tl235290235654_
                             _e235295235657_
                             _hd235294235660_
                             _tl235293235662_
                             _e235298235665_
                             _hd235297235668_
                             _tl235296235670_
                             _e235301235673_
                             _hd235300235676_
                             _tl235299235678_
                             _e235304235681_
                             _hd235303235684_
                             _tl235302235686_
                             _e235307235689_
                             _hd235306235692_
                             _tl235305235694_
                             _e235310235697_
                             _hd235309235700_
                             _tl235308235702_
                             _e235313235705_
                             _hd235312235708_
                             _tl235311235710_)
                      (let ((_L235713_ _hd235312235708_)
                            (_L235714_ _hd235303235684_)
                            (_L235715_ _hd235294235660_)
                            (_L235716_ _hd235285235636_)
                            (_L235717_ _hd235276235612_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L235717_
                               'bind-method!))
                            (___kont240506240507_
                             _L235713_
                             _L235714_
                             _L235715_
                             _L235716_
                             _L235717_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl235266235590_))
                                (let ((___splice240512240513_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl235266235590_
                                          '0))))
                                  (let ((_tl235363235389_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice240512240513_
                                            '1)))
                                        (_target235361235387_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice240512240513_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl235363235389_))
                                        (___match240761240762_
                                         _e235268235585_
                                         _hd235267235588_
                                         _tl235266235590_
                                         ___splice240512240513_
                                         _target235361235387_
                                         _tl235363235389_)
                                        (let ()
                                          (declare (not safe))
                                          (_g235259235374_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g235259235374_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240504240505_))
                  (let ((_e235268235585_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240504240505_))))
                    (let ((_tl235266235590_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235268235585_)))
                          (_hd235267235588_
                           (let ()
                             (declare (not safe))
                             (##car _e235268235585_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl235266235590_))
                          (let ((_e235271235593_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl235266235590_))))
                            (let ((_tl235269235598_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235271235593_)))
                                  (_hd235270235596_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235271235593_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd235270235596_))
                                  (let ((_e235274235601_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd235270235596_))))
                                    (let ((_tl235272235606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235274235601_)))
                                          (_hd235273235604_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235274235601_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd235273235604_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd235273235604_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235272235606_))
                                                  (let ((_e235277235609_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235272235606_))))
                                                    (let ((_tl235275235614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235277235609_)))
                                                          (_hd235276235612_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235277235609_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235275235614_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl235269235598_))
                      (let ((_e235280235617_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl235269235598_))))
                        (let ((_tl235278235622_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235280235617_)))
                              (_hd235279235620_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235280235617_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd235279235620_))
                              (let ((_e235283235625_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd235279235620_))))
                                (let ((_tl235281235630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235283235625_)))
                                      (_hd235282235628_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235283235625_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd235282235628_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd235282235628_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl235281235630_))
                                              (let ((_e235286235633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl235281235630_))))
                                                (let ((_tl235284235638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e235286235633_)))
                                                      (_hd235285235636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e235286235633_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235284235638_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl235278235622_))
                                                          (let ((_e235289235641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl235278235622_))))
                    (let ((_tl235287235646_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235289235641_)))
                          (_hd235288235644_
                           (let ()
                             (declare (not safe))
                             (##car _e235289235641_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd235288235644_))
                          (let ((_e235292235649_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd235288235644_))))
                            (let ((_tl235290235654_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e235292235649_)))
                                  (_hd235291235652_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e235292235649_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd235291235652_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd235291235652_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl235290235654_))
                                          (let ((_e235295235657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl235290235654_))))
                                            (let ((_tl235293235662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e235295235657_)))
                                                  (_hd235294235660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e235295235657_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235293235662_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl235287235646_))
                                                      (let ((_e235298235665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl235287235646_))))
                (let ((_tl235296235670_
                       (let () (declare (not safe)) (##cdr _e235298235665_)))
                      (_hd235297235668_
                       (let () (declare (not safe)) (##car _e235298235665_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd235297235668_))
                      (let ((_e235301235673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd235297235668_))))
                        (let ((_tl235299235678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235301235673_)))
                              (_hd235300235676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235301235673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd235300235676_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd235300235676_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235299235678_))
                                      (let ((_e235304235681_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235299235678_))))
                                        (let ((_tl235302235686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235304235681_)))
                                              (_hd235303235684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235304235681_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235302235686_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl235296235670_))
                                                  (let ((_e235307235689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl235296235670_))))
                                                    (let ((_tl235305235694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e235307235689_)))
                                                          (_hd235306235692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e235307235689_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd235306235692_))
                                                          (let ((_e235310235697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd235306235692_))))
                    (let ((_tl235308235702_
                           (let ()
                             (declare (not safe))
                             (##cdr _e235310235697_)))
                          (_hd235309235700_
                           (let ()
                             (declare (not safe))
                             (##car _e235310235697_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd235309235700_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd235309235700_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl235308235702_))
                                  (let ((_e235313235705_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl235308235702_))))
                                    (let ((_tl235311235710_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e235313235705_)))
                                          (_hd235312235708_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e235313235705_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235311235710_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235305235694_))
                                              (___match240641240642_
                                               _e235268235585_
                                               _hd235267235588_
                                               _tl235266235590_
                                               _e235271235593_
                                               _hd235270235596_
                                               _tl235269235598_
                                               _e235274235601_
                                               _hd235273235604_
                                               _tl235272235606_
                                               _e235277235609_
                                               _hd235276235612_
                                               _tl235275235614_
                                               _e235280235617_
                                               _hd235279235620_
                                               _tl235278235622_
                                               _e235283235625_
                                               _hd235282235628_
                                               _tl235281235630_
                                               _e235286235633_
                                               _hd235285235636_
                                               _tl235284235638_
                                               _e235289235641_
                                               _hd235288235644_
                                               _tl235287235646_
                                               _e235292235649_
                                               _hd235291235652_
                                               _tl235290235654_
                                               _e235295235657_
                                               _hd235294235660_
                                               _tl235293235662_
                                               _e235298235665_
                                               _hd235297235668_
                                               _tl235296235670_
                                               _e235301235673_
                                               _hd235300235676_
                                               _tl235299235678_
                                               _e235304235681_
                                               _hd235303235684_
                                               _tl235302235686_
                                               _e235307235689_
                                               _hd235306235692_
                                               _tl235305235694_
                                               _e235310235697_
                                               _hd235309235700_
                                               _tl235308235702_
                                               _e235313235705_
                                               _hd235312235708_
                                               _tl235311235710_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235266235590_))
                                                  (let ((___splice240512240513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235266235590_
                                                            '0))))
                                                    (let ((_tl235363235389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '1)))
                                                          (_target235361235387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235363235389_))
                                                          (___match240761240762_
                                                           _e235268235585_
                                                           _hd235267235588_
                                                           _tl235266235590_
                                                           ___splice240512240513_
                                                           _target235361235387_
                                                           _tl235363235389_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235259235374_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235266235590_))
                                              (let ((___splice240512240513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235266235590_
                                                        '0))))
                                                (let ((_tl235363235389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '1)))
                                                      (_target235361235387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235363235389_))
                                                      (___match240761240762_
                                                       _e235268235585_
                                                       _hd235267235588_
                                                       _tl235266235590_
                                                       ___splice240512240513_
                                                       _target235361235387_
                                                       _tl235363235389_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235259235374_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235266235590_))
                                      (let ((___splice240512240513_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235266235590_
                                                '0))))
                                        (let ((_tl235363235389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '1)))
                                              (_target235361235387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235363235389_))
                                              (___match240761240762_
                                               _e235268235585_
                                               _hd235267235588_
                                               _tl235266235590_
                                               ___splice240512240513_
                                               _target235361235387_
                                               _tl235363235389_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235266235590_))
                                  (let ((___splice240512240513_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235266235590_
                                            '0))))
                                    (let ((_tl235363235389_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice240512240513_
                                              '1)))
                                          (_target235361235387_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice240512240513_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235363235389_))
                                          (___match240761240762_
                                           _e235268235585_
                                           _hd235267235588_
                                           _tl235266235590_
                                           ___splice240512240513_
                                           _target235361235387_
                                           _tl235363235389_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235259235374_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235259235374_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235266235590_))
                              (let ((___splice240512240513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235266235590_
                                        '0))))
                                (let ((_tl235363235389_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice240512240513_
                                          '1)))
                                      (_target235361235387_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice240512240513_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235363235389_))
                                      (___match240761240762_
                                       _e235268235585_
                                       _hd235267235588_
                                       _tl235266235590_
                                       ___splice240512240513_
                                       _target235361235387_
                                       _tl235363235389_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_)))))
                              (let ()
                                (declare (not safe))
                                (_g235259235374_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235266235590_))
                      (let ((___splice240512240513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235266235590_ '0))))
                        (let ((_tl235363235389_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '1)))
                              (_target235361235387_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235363235389_))
                              (___match240761240762_
                               _e235268235585_
                               _hd235267235588_
                               _tl235266235590_
                               ___splice240512240513_
                               _target235361235387_
                               _tl235363235389_)
                              (let ()
                                (declare (not safe))
                                (_g235259235374_)))))
                      (let () (declare (not safe)) (_g235259235374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235296235670_))
                                                      (if (let ((__tmp242510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp242510 'bind-method!))
                  (let ((_L235541_ _hd235303235684_)
                        (_L235542_ _hd235294235660_)
                        (_L235543_ _hd235285235636_)
                        (_L235544_ _hd235276235612_))
                    (___kont240508240509_
                     _L235541_
                     _L235542_
                     _L235543_
                     _L235544_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235266235590_))
                      (let ((___splice240512240513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235266235590_ '0))))
                        (let ((_tl235363235389_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '1)))
                              (_target235361235387_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235363235389_))
                              (___match240761240762_
                               _e235268235585_
                               _hd235267235588_
                               _tl235266235590_
                               ___splice240512240513_
                               _target235361235387_
                               _tl235363235389_)
                              (let ()
                                (declare (not safe))
                                (_g235259235374_)))))
                      (let () (declare (not safe)) (_g235259235374_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235266235590_))
                  (let ((___splice240512240513_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235266235590_ '0))))
                    (let ((_tl235363235389_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice240512240513_ '1)))
                          (_target235361235387_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice240512240513_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl235363235389_))
                          (___match240761240762_
                           _e235268235585_
                           _hd235267235588_
                           _tl235266235590_
                           ___splice240512240513_
                           _target235361235387_
                           _tl235363235389_)
                          (let () (declare (not safe)) (_g235259235374_)))))
                  (let () (declare (not safe)) (_g235259235374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235266235590_))
                                                  (let ((___splice240512240513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235266235590_
                                                            '0))))
                                                    (let ((_tl235363235389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '1)))
                                                          (_target235361235387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235363235389_))
                                                          (___match240761240762_
                                                           _e235268235585_
                                                           _hd235267235588_
                                                           _tl235266235590_
                                                           ___splice240512240513_
                                                           _target235361235387_
                                                           _tl235363235389_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235259235374_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235266235590_))
                                          (let ((___splice240512240513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235266235590_
                                                    '0))))
                                            (let ((_tl235363235389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice240512240513_
                                                      '1)))
                                                  (_target235361235387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice240512240513_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235363235389_))
                                                  (___match240761240762_
                                                   _e235268235585_
                                                   _hd235267235588_
                                                   _tl235266235590_
                                                   ___splice240512240513_
                                                   _target235361235387_
                                                   _tl235363235389_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235259235374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235266235590_))
                                      (let ((___splice240512240513_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235266235590_
                                                '0))))
                                        (let ((_tl235363235389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '1)))
                                              (_target235361235387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235363235389_))
                                              (___match240761240762_
                                               _e235268235585_
                                               _hd235267235588_
                                               _tl235266235590_
                                               ___splice240512240513_
                                               _target235361235387_
                                               _tl235363235389_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235266235590_))
                                  (let ((___splice240512240513_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235266235590_
                                            '0))))
                                    (let ((_tl235363235389_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice240512240513_
                                              '1)))
                                          (_target235361235387_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice240512240513_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235363235389_))
                                          (___match240761240762_
                                           _e235268235585_
                                           _hd235267235588_
                                           _tl235266235590_
                                           ___splice240512240513_
                                           _target235361235387_
                                           _tl235363235389_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235259235374_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235259235374_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235266235590_))
                          (let ((___splice240512240513_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235266235590_
                                    '0))))
                            (let ((_tl235363235389_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice240512240513_ '1)))
                                  (_target235361235387_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice240512240513_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235363235389_))
                                  (___match240761240762_
                                   _e235268235585_
                                   _hd235267235588_
                                   _tl235266235590_
                                   ___splice240512240513_
                                   _target235361235387_
                                   _tl235363235389_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235259235374_)))))
                          (let () (declare (not safe)) (_g235259235374_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235266235590_))
                  (let ((___splice240512240513_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235266235590_ '0))))
                    (let ((_tl235363235389_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice240512240513_ '1)))
                          (_target235361235387_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice240512240513_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl235363235389_))
                          (___match240761240762_
                           _e235268235585_
                           _hd235267235588_
                           _tl235266235590_
                           ___splice240512240513_
                           _target235361235387_
                           _tl235363235389_)
                          (let () (declare (not safe)) (_g235259235374_)))))
                  (let () (declare (not safe)) (_g235259235374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235266235590_))
                                                      (let ((___splice240512240513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235266235590_ '0))))
                (let ((_tl235363235389_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice240512240513_ '1)))
                      (_target235361235387_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice240512240513_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl235363235389_))
                      (___match240761240762_
                       _e235268235585_
                       _hd235267235588_
                       _tl235266235590_
                       ___splice240512240513_
                       _target235361235387_
                       _tl235363235389_)
                      (let () (declare (not safe)) (_g235259235374_)))))
              (let () (declare (not safe)) (_g235259235374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235266235590_))
                                              (let ((___splice240512240513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235266235590_
                                                        '0))))
                                                (let ((_tl235363235389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '1)))
                                                      (_target235361235387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235363235389_))
                                                      (___match240761240762_
                                                       _e235268235585_
                                                       _hd235267235588_
                                                       _tl235266235590_
                                                       ___splice240512240513_
                                                       _target235361235387_
                                                       _tl235363235389_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235259235374_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235266235590_))
                                          (let ((___splice240512240513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235266235590_
                                                    '0))))
                                            (let ((_tl235363235389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice240512240513_
                                                      '1)))
                                                  (_target235361235387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice240512240513_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235363235389_))
                                                  (___match240761240762_
                                                   _e235268235585_
                                                   _hd235267235588_
                                                   _tl235266235590_
                                                   ___splice240512240513_
                                                   _target235361235387_
                                                   _tl235363235389_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235259235374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235266235590_))
                                      (let ((___splice240512240513_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235266235590_
                                                '0))))
                                        (let ((_tl235363235389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '1)))
                                              (_target235361235387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235363235389_))
                                              (___match240761240762_
                                               _e235268235585_
                                               _hd235267235588_
                                               _tl235266235590_
                                               ___splice240512240513_
                                               _target235361235387_
                                               _tl235363235389_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235266235590_))
                              (let ((___splice240512240513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235266235590_
                                        '0))))
                                (let ((_tl235363235389_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice240512240513_
                                          '1)))
                                      (_target235361235387_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice240512240513_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235363235389_))
                                      (___match240761240762_
                                       _e235268235585_
                                       _hd235267235588_
                                       _tl235266235590_
                                       ___splice240512240513_
                                       _target235361235387_
                                       _tl235363235389_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_)))))
                              (let ()
                                (declare (not safe))
                                (_g235259235374_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235266235590_))
                      (let ((___splice240512240513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235266235590_ '0))))
                        (let ((_tl235363235389_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '1)))
                              (_target235361235387_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235363235389_))
                              (___match240761240762_
                               _e235268235585_
                               _hd235267235588_
                               _tl235266235590_
                               ___splice240512240513_
                               _target235361235387_
                               _tl235363235389_)
                              (let ()
                                (declare (not safe))
                                (_g235259235374_)))))
                      (let () (declare (not safe)) (_g235259235374_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl235266235590_))
                  (let ((___splice240512240513_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl235266235590_ '0))))
                    (let ((_tl235363235389_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice240512240513_ '1)))
                          (_target235361235387_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice240512240513_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl235363235389_))
                          (___match240761240762_
                           _e235268235585_
                           _hd235267235588_
                           _tl235266235590_
                           ___splice240512240513_
                           _target235361235387_
                           _tl235363235389_)
                          (let () (declare (not safe)) (_g235259235374_)))))
                  (let () (declare (not safe)) (_g235259235374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235266235590_))
                                                  (let ((___splice240512240513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235266235590_
                                                            '0))))
                                                    (let ((_tl235363235389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '1)))
                                                          (_target235361235387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235363235389_))
                                                          (___match240761240762_
                                                           _e235268235585_
                                                           _hd235267235588_
                                                           _tl235266235590_
                                                           ___splice240512240513_
                                                           _target235361235387_
                                                           _tl235363235389_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235259235374_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235266235590_))
                                              (let ((___splice240512240513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235266235590_
                                                        '0))))
                                                (let ((_tl235363235389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '1)))
                                                      (_target235361235387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235363235389_))
                                                      (___match240761240762_
                                                       _e235268235585_
                                                       _hd235267235588_
                                                       _tl235266235590_
                                                       ___splice240512240513_
                                                       _target235361235387_
                                                       _tl235363235389_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235259235374_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl235266235590_))
                                          (let ((___splice240512240513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl235266235590_
                                                    '0))))
                                            (let ((_tl235363235389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice240512240513_
                                                      '1)))
                                                  (_target235361235387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice240512240513_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl235363235389_))
                                                  (___match240761240762_
                                                   _e235268235585_
                                                   _hd235267235588_
                                                   _tl235266235590_
                                                   ___splice240512240513_
                                                   _target235361235387_
                                                   _tl235363235389_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g235259235374_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl235266235590_))
                                  (let ((___splice240512240513_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl235266235590_
                                            '0))))
                                    (let ((_tl235363235389_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice240512240513_
                                              '1)))
                                          (_target235361235387_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice240512240513_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl235363235389_))
                                          (___match240761240762_
                                           _e235268235585_
                                           _hd235267235588_
                                           _tl235266235590_
                                           ___splice240512240513_
                                           _target235361235387_
                                           _tl235363235389_)
                                          (let ()
                                            (declare (not safe))
                                            (_g235259235374_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g235259235374_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl235266235590_))
                          (let ((___splice240512240513_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl235266235590_
                                    '0))))
                            (let ((_tl235363235389_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice240512240513_ '1)))
                                  (_target235361235387_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice240512240513_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl235363235389_))
                                  (___match240761240762_
                                   _e235268235585_
                                   _hd235267235588_
                                   _tl235266235590_
                                   ___splice240512240513_
                                   _target235361235387_
                                   _tl235363235389_)
                                  (let ()
                                    (declare (not safe))
                                    (_g235259235374_)))))
                          (let () (declare (not safe)) (_g235259235374_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl235266235590_))
                      (let ((___splice240512240513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl235266235590_ '0))))
                        (let ((_tl235363235389_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '1)))
                              (_target235361235387_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice240512240513_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl235363235389_))
                              (___match240761240762_
                               _e235268235585_
                               _hd235267235588_
                               _tl235266235590_
                               ___splice240512240513_
                               _target235361235387_
                               _tl235363235389_)
                              (let ()
                                (declare (not safe))
                                (_g235259235374_)))))
                      (let () (declare (not safe)) (_g235259235374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl235266235590_))
                                                      (let ((___splice240512240513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl235266235590_ '0))))
                (let ((_tl235363235389_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice240512240513_ '1)))
                      (_target235361235387_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice240512240513_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl235363235389_))
                      (___match240761240762_
                       _e235268235585_
                       _hd235267235588_
                       _tl235266235590_
                       ___splice240512240513_
                       _target235361235387_
                       _tl235363235389_)
                      (let () (declare (not safe)) (_g235259235374_)))))
              (let () (declare (not safe)) (_g235259235374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl235266235590_))
                                                  (let ((___splice240512240513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl235266235590_
                                                            '0))))
                                                    (let ((_tl235363235389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '1)))
                                                          (_target235361235387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240512240513_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl235363235389_))
                                                          (___match240761240762_
                                                           _e235268235585_
                                                           _hd235267235588_
                                                           _tl235266235590_
                                                           ___splice240512240513_
                                                           _target235361235387_
                                                           _tl235363235389_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g235259235374_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g235259235374_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl235266235590_))
                                              (let ((___splice240512240513_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl235266235590_
                                                        '0))))
                                                (let ((_tl235363235389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '1)))
                                                      (_target235361235387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice240512240513_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl235363235389_))
                                                      (___match240761240762_
                                                       _e235268235585_
                                                       _hd235267235588_
                                                       _tl235266235590_
                                                       ___splice240512240513_
                                                       _target235361235387_
                                                       _tl235363235389_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g235259235374_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl235266235590_))
                                      (let ((___splice240512240513_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl235266235590_
                                                '0))))
                                        (let ((_tl235363235389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '1)))
                                              (_target235361235387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice240512240513_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235363235389_))
                                              (___match240761240762_
                                               _e235268235585_
                                               _hd235267235588_
                                               _tl235266235590_
                                               ___splice240512240513_
                                               _target235361235387_
                                               _tl235363235389_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235259235374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl235266235590_))
                              (let ((___splice240512240513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl235266235590_
                                        '0))))
                                (let ((_tl235363235389_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice240512240513_
                                          '1)))
                                      (_target235361235387_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice240512240513_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl235363235389_))
                                      (___match240761240762_
                                       _e235268235585_
                                       _hd235267235588_
                                       _tl235266235590_
                                       ___splice240512240513_
                                       _target235361235387_
                                       _tl235363235389_)
                                      (let ()
                                        (declare (not safe))
                                        (_g235259235374_)))))
                              (let ()
                                (declare (not safe))
                                (_g235259235374_))))))
                  (let () (declare (not safe)) (_g235259235374_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx235195_)
        (let* ((___stx240764240765_ _stx235195_)
               (_g235198235211_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240764240765_)))))
          (let ((___kont240766240767_
                 (lambda (_L235239_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L235239_))))
                (___kont240768240769_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240764240765_))
                (let ((_e235203235223_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240764240765_))))
                  (let ((_tl235201235228_
                         (let () (declare (not safe)) (##cdr _e235203235223_)))
                        (_hd235202235226_
                         (let ()
                           (declare (not safe))
                           (##car _e235203235223_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl235201235228_))
                        (let ((_e235206235231_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl235201235228_))))
                          (let ((_tl235204235236_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e235206235231_)))
                                (_hd235205235234_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e235206235231_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl235204235236_))
                                (___kont240766240767_ _hd235205235234_)
                                (___kont240768240769_))))
                        (___kont240768240769_))))
                (___kont240768240769_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx235075_)
        (let* ((_g235077235094_
                (lambda (_g235078235091_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g235078235091_))))
               (_g235076235192_
                (lambda (_g235078235097_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g235078235097_))
                      (let ((_e235083235099_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g235078235097_))))
                        (let ((_hd235082235102_
                               (let ()
                                 (declare (not safe))
                                 (##car _e235083235099_)))
                              (_tl235081235104_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e235083235099_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl235081235104_))
                              (let ((_e235086235107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl235081235104_))))
                                (let ((_hd235085235110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e235086235107_)))
                                      (_tl235084235112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e235086235107_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl235084235112_))
                                      (let ((_e235089235115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl235084235112_))))
                                        (let ((_hd235088235118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e235089235115_)))
                                              (_tl235087235120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e235089235115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl235087235120_))
                                              ((lambda (_L235123_ _L235124_)
                                                 (let* ((___stx240786240787_
                                                         _L235124_)
                                                        (_g235140235151_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx240786240787_)))))
                                                   (let ((___kont240788240789_
                                                          (lambda (_L235171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L235172_)
                    (let ((_$e235184_
                           (let ((__tmp242511
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L235172_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp242511))))
                      (if _$e235184_
                          ((lambda (_type-e235187_)
                             (_type-e235187_ _stx235075_ _L235124_))
                           _$e235184_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L235123_))))))
                 (___kont240790240791_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L235123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match240797240798_
                                                            (lambda (_e235146235163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd235145235166_
                             _tl235144235168_)
                      (let ((_L235171_ _tl235144235168_)
                            (_L235172_ _hd235145235166_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L235172_))
                            (___kont240788240789_ _L235171_ _L235172_)
                            (___kont240790240791_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx240786240787_))
                   (let ((_e235146235163_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx240786240787_))))
                     (let ((_tl235144235168_
                            (let ()
                              (declare (not safe))
                              (##cdr _e235146235163_)))
                           (_hd235145235166_
                            (let ()
                              (declare (not safe))
                              (##car _e235146235163_))))
                       (___match240797240798_
                        _e235146235163_
                        _hd235145235166_
                        _tl235144235168_)))
                   (___kont240790240791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd235088235118_
                                               _hd235085235110_)
                                              (let ()
                                                (declare (not safe))
                                                (_g235077235094_
                                                 _g235078235097_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g235077235094_ _g235078235097_)))))
                              (let ()
                                (declare (not safe))
                                (_g235077235094_ _g235078235097_)))))
                      (let ()
                        (declare (not safe))
                        (_g235077235094_ _g235078235097_))))))
          (declare (not safe))
          (_g235076235192_ _stx235075_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx234919_ _ann234920_)
        (let* ((_g234922234959_
                (lambda (_g234923234956_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234923234956_))))
               (_g234921235072_
                (lambda (_g234923234962_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234923234962_))
                      (let ((_e234933234964_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234923234962_))))
                        (let ((_hd234932234967_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234933234964_)))
                              (_tl234931234969_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234933234964_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234931234969_))
                              (let ((_e234936234972_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234931234969_))))
                                (let ((_hd234935234975_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234936234972_)))
                                      (_tl234934234977_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234936234972_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234934234977_))
                                      (let ((_e234939234980_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234934234977_))))
                                        (let ((_hd234938234983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234939234980_)))
                                              (_tl234937234985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234939234980_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234937234985_))
                                              (let ((_e234942234988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234937234985_))))
                                                (let ((_hd234941234991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234942234988_)))
                                                      (_tl234940234993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234942234988_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl234940234993_))
                                                      (let ((_e234945234996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl234940234993_))))
                (let ((_hd234944234999_
                       (let () (declare (not safe)) (##car _e234945234996_)))
                      (_tl234943235001_
                       (let () (declare (not safe)) (##cdr _e234945234996_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl234943235001_))
                      (let ((_e234948235004_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl234943235001_))))
                        (let ((_hd234947235007_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234948235004_)))
                              (_tl234946235009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234948235004_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234946235009_))
                              (let ((_e234951235012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234946235009_))))
                                (let ((_hd234950235015_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234951235012_)))
                                      (_tl234949235017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234951235012_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234949235017_))
                                      (let ((_e234954235020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234949235017_))))
                                        (let ((_hd234953235023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234954235020_)))
                                              (_tl234952235025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234954235020_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234952235025_))
                                              ((lambda (_L235028_
                                                        _L235029_
                                                        _L235030_
                                                        _L235031_
                                                        _L235032_
                                                        _L235033_
                                                        _L235034_)
                                                 (let ((_type-id235064_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235034_)))
                                                       (_super235065_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L235033_)))
                                                       (_slots235066_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L235032_)))
                                                       (_ctor-method235067_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235031_)))
                                                       (_struct?235068_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235030_)))
                                                       (_final?235069_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L235029_)))
                                                       (_metaclass235070_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L235028_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L235028_))
                                                            '#f)))
                                                   (let ((__obj242469
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
                                                      __obj242469
                                                      _type-id235064_
                                                      _super235065_
                                                      _slots235066_
                                                      _ctor-method235067_
                                                      _struct?235068_
                                                      _final?235069_
                                                      _metaclass235070_)
                                                     __obj242469)))
                                               _hd234953235023_
                                               _hd234950235015_
                                               _hd234947235007_
                                               _hd234944234999_
                                               _hd234941234991_
                                               _hd234938234983_
                                               _hd234935234975_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234922234959_
                                                 _g234923234962_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234922234959_ _g234923234962_)))))
                              (let ()
                                (declare (not safe))
                                (_g234922234959_ _g234923234962_)))))
                      (let ()
                        (declare (not safe))
                        (_g234922234959_ _g234923234962_)))))
              (let ()
                (declare (not safe))
                (_g234922234959_ _g234923234962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g234922234959_
                                                 _g234923234962_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234922234959_ _g234923234962_)))))
                              (let ()
                                (declare (not safe))
                                (_g234922234959_ _g234923234962_)))))
                      (let ()
                        (declare (not safe))
                        (_g234922234959_ _g234923234962_))))))
          (declare (not safe))
          (_g234921235072_ _ann234920_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx234867_ _ann234868_)
        (let* ((_g234870234883_
                (lambda (_g234871234880_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234871234880_))))
               (_g234869234916_
                (lambda (_g234871234886_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234871234886_))
                      (let ((_e234875234888_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234871234886_))))
                        (let ((_hd234874234891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234875234888_)))
                              (_tl234873234893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234875234888_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234873234893_))
                              (let ((_e234878234896_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234873234893_))))
                                (let ((_hd234877234899_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234878234896_)))
                                      (_tl234876234901_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234878234896_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234876234901_))
                                      ((lambda (_L234904_)
                                         (let ((__tmp242512
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234904_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp242512)))
                                       _hd234877234899_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234870234883_ _g234871234886_)))))
                              (let ()
                                (declare (not safe))
                                (_g234870234883_ _g234871234886_)))))
                      (let ()
                        (declare (not safe))
                        (_g234870234883_ _g234871234886_))))))
          (declare (not safe))
          (_g234869234916_ _ann234868_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx234815_ _ann234816_)
        (let* ((_g234818234831_
                (lambda (_g234819234828_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234819234828_))))
               (_g234817234864_
                (lambda (_g234819234834_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234819234834_))
                      (let ((_e234823234836_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234819234834_))))
                        (let ((_hd234822234839_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234823234836_)))
                              (_tl234821234841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234823234836_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234821234841_))
                              (let ((_e234826234844_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234821234841_))))
                                (let ((_hd234825234847_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234826234844_)))
                                      (_tl234824234849_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234826234844_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234824234849_))
                                      ((lambda (_L234852_)
                                         (let ((__tmp242513
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L234852_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp242513)))
                                       _hd234825234847_)
                                      (let ()
                                        (declare (not safe))
                                        (_g234818234831_ _g234819234834_)))))
                              (let ()
                                (declare (not safe))
                                (_g234818234831_ _g234819234834_)))))
                      (let ()
                        (declare (not safe))
                        (_g234818234831_ _g234819234834_))))))
          (declare (not safe))
          (_g234817234864_ _ann234816_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx234731_ _ann234732_)
        (let* ((_g234734234755_
                (lambda (_g234735234752_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234735234752_))))
               (_g234733234812_
                (lambda (_g234735234758_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234735234758_))
                      (let ((_e234741234760_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234735234758_))))
                        (let ((_hd234740234763_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234741234760_)))
                              (_tl234739234765_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234741234760_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234739234765_))
                              (let ((_e234744234768_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234739234765_))))
                                (let ((_hd234743234771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234744234768_)))
                                      (_tl234742234773_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234744234768_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234742234773_))
                                      (let ((_e234747234776_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234742234773_))))
                                        (let ((_hd234746234779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234747234776_)))
                                              (_tl234745234781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234747234776_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234745234781_))
                                              (let ((_e234750234784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234745234781_))))
                                                (let ((_hd234749234787_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234750234784_)))
                                                      (_tl234748234789_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234750234784_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234748234789_))
                                                      ((lambda (_L234792_
                                                                _L234793_
                                                                _L234794_)
                                                         (let ((__tmp242516
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L234794_)))
                       (__tmp242515
                        (let () (declare (not safe)) (gx#stx-e _L234793_)))
                       (__tmp242514
                        (let () (declare (not safe)) (gx#stx-e _L234792_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp242516
                    __tmp242515
                    __tmp242514)))
               _hd234749234787_
               _hd234746234779_
               _hd234743234771_)
              (let ()
                (declare (not safe))
                (_g234734234755_ _g234735234758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g234734234755_
                                                 _g234735234758_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234734234755_ _g234735234758_)))))
                              (let ()
                                (declare (not safe))
                                (_g234734234755_ _g234735234758_)))))
                      (let ()
                        (declare (not safe))
                        (_g234734234755_ _g234735234758_))))))
          (declare (not safe))
          (_g234733234812_ _ann234732_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx234647_ _ann234648_)
        (let* ((_g234650234671_
                (lambda (_g234651234668_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g234651234668_))))
               (_g234649234728_
                (lambda (_g234651234674_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g234651234674_))
                      (let ((_e234657234676_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g234651234674_))))
                        (let ((_hd234656234679_
                               (let ()
                                 (declare (not safe))
                                 (##car _e234657234676_)))
                              (_tl234655234681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e234657234676_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl234655234681_))
                              (let ((_e234660234684_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl234655234681_))))
                                (let ((_hd234659234687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234660234684_)))
                                      (_tl234658234689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234660234684_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234658234689_))
                                      (let ((_e234663234692_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234658234689_))))
                                        (let ((_hd234662234695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234663234692_)))
                                              (_tl234661234697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234663234692_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234661234697_))
                                              (let ((_e234666234700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234661234697_))))
                                                (let ((_hd234665234703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234666234700_)))
                                                      (_tl234664234705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234666234700_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234664234705_))
                                                      ((lambda (_L234708_
                                                                _L234709_
                                                                _L234710_)
                                                         (let ((__tmp242519
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L234710_)))
                       (__tmp242518
                        (let () (declare (not safe)) (gx#stx-e _L234709_)))
                       (__tmp242517
                        (let () (declare (not safe)) (gx#stx-e _L234708_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp242519
                    __tmp242518
                    __tmp242517)))
               _hd234665234703_
               _hd234662234695_
               _hd234659234687_)
              (let ()
                (declare (not safe))
                (_g234650234671_ _g234651234674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g234650234671_
                                                 _g234651234674_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234650234671_ _g234651234674_)))))
                              (let ()
                                (declare (not safe))
                                (_g234650234671_ _g234651234674_)))))
                      (let ()
                        (declare (not safe))
                        (_g234650234671_ _g234651234674_))))))
          (declare (not safe))
          (_g234649234728_ _ann234648_))))
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
      (lambda (_stx233767_)
        (let* ((___stx240800240801_ _stx233767_)
               (_g233773233969_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240800240801_)))))
          (let ((___kont240802240803_
                 (lambda (_L234635_)
                   (let ((__obj242470
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj242470
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234635_))
                      '#f)
                     __obj242470)))
                (___kont240804240805_
                 (lambda (_L234562_
                          _L234563_
                          _L234564_
                          _L234565_
                          _L234566_
                          _L234567_)
                   (let* ((_tab234617_
                           (let () (declare (not safe)) (gx#stx-e _L234564_)))
                          (_keys234619_
                           (if _tab234617_
                               (let ((__tmp242520 (vector->list _tab234617_)))
                                 (declare (not safe))
                                 (filter values __tmp242520))
                               '#f)))
                     (let ((__tmp242521
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L234563_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys234619_
                        __tmp242521)))))
                (___kont240806240807_
                 (lambda (_L234295_
                          _L234296_
                          _L234297_
                          _L234298_
                          _L234299_
                          _L234300_
                          _L234301_
                          _L234302_
                          _L234303_
                          _L234304_)
                   (let ((__tmp242523
                          (map gx#stx-e
                               (let ((__tmp242524
                                      (lambda (_g234397234400_ _g234398234402_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g234397234400_
                                                _g234398234402_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp242524 '() _L234297_))))
                         (__tmp242522
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234301_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp242523
                      __tmp242522))))
                (___kont240810240811_
                 (lambda (_L234005_)
                   (let ((__obj242471
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj242471
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L234005_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L234005_)))
                     __obj242471)))
                (___kont240812240813_
                 (lambda (_L233982_)
                   (let ((__obj242472
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj242472
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L233982_))
                      '#f)
                     __obj242472))))
            (let* ((___match241119241120_
                    (lambda (_e233960233997_ _hd233959234000_ _tl233958234002_)
                      (let ((_L234005_ _tl233958234002_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L234005_))
                            (___kont240810240811_ _L234005_)
                            (___kont240812240813_ _tl233958234002_)))))
                   (___match241113241114_
                    (lambda (_e233854234019_
                             _hd233853234022_
                             _tl233852234024_
                             _e233857234027_
                             _hd233856234030_
                             _tl233855234032_
                             _e233860234035_
                             _hd233859234038_
                             _tl233858234040_
                             _e233863234043_
                             _hd233862234046_
                             _tl233861234048_
                             _e233866234051_
                             _hd233865234054_
                             _tl233864234056_
                             _e233869234059_
                             _hd233868234062_
                             _tl233867234064_
                             _e233872234067_
                             _hd233871234070_
                             _tl233870234072_
                             _e233875234075_
                             _hd233874234078_
                             _tl233873234080_
                             _e233878234083_
                             _hd233877234086_
                             _tl233876234088_
                             _e233881234091_
                             _hd233880234094_
                             _tl233879234096_
                             _e233884234099_
                             _hd233883234102_
                             _tl233882234104_
                             _e233887234107_
                             _hd233886234110_
                             _tl233885234112_
                             _e233890234115_
                             _hd233889234118_
                             _tl233888234120_
                             _e233893234123_
                             _hd233892234126_
                             _tl233891234128_
                             ___splice240808240809_
                             _target233894234131_
                             _tl233896234133_
                             _e233911234136_
                             _hd233910234139_
                             _tl233909234141_
                             _e233914234144_
                             _hd233913234147_
                             _tl233912234149_
                             _e233917234152_
                             _hd233916234155_
                             _tl233915234157_)
                      (letrec ((_loop233897234160_
                                (lambda (_hd233895234163_
                                         _-absent-value233901234165_
                                         _key233902234167_
                                         _-xkwvar233903234169_
                                         _-hash-ref233904234171_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233895234163_))
                                      (let ((_e233898234174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233895234163_))))
                                        (let ((_lp-tl233900234179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233898234174_)))
                                              (_lp-hd233899234177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233898234174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd233899234177_))
                                              (let ((_e233920234182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd233899234177_))))
                                                (let ((_tl233918234187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233920234182_)))
                                                      (_hd233919234185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233920234182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd233919234185_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd233919234185_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233918234187_))
                      (let ((_e233923234190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233918234187_))))
                        (let ((_tl233921234195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233923234190_)))
                              (_hd233922234193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233923234190_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233922234193_))
                              (let ((_e233926234198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233922234193_))))
                                (let ((_tl233924234203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233926234198_)))
                                      (_hd233925234201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233926234198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233925234201_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233925234201_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233924234203_))
                                              (let ((_e233929234206_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233924234203_))))
                                                (let ((_tl233927234211_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233929234206_)))
                                                      (_hd233928234209_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233929234206_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233927234211_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233921234195_))
                                                          (let ((_e233932234214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233921234195_))))
                    (let ((_tl233930234219_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233932234214_)))
                          (_hd233931234217_
                           (let ()
                             (declare (not safe))
                             (##car _e233932234214_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233931234217_))
                          (let ((_e233935234222_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233931234217_))))
                            (let ((_tl233933234227_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233935234222_)))
                                  (_hd233934234225_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233935234222_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233934234225_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd233934234225_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233933234227_))
                                          (let ((_e233938234230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233933234227_))))
                                            (let ((_tl233936234235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233938234230_)))
                                                  (_hd233937234233_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233938234230_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233936234235_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233930234219_))
                                                      (let ((_e233941234238_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233930234219_))))
                (let ((_tl233939234243_
                       (let () (declare (not safe)) (##cdr _e233941234238_)))
                      (_hd233940234241_
                       (let () (declare (not safe)) (##car _e233941234238_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233940234241_))
                      (let ((_e233944234246_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233940234241_))))
                        (let ((_tl233942234251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233944234246_)))
                              (_hd233943234249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233944234246_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233943234249_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd233943234249_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233942234251_))
                                      (let ((_e233947234254_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233942234251_))))
                                        (let ((_tl233945234259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233947234254_)))
                                              (_hd233946234257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233947234254_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233945234259_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233939234243_))
                                                  (let ((_e233950234262_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233939234243_))))
                                                    (let ((_tl233948234267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233950234262_)))
                                                          (_hd233949234265_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233950234262_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233949234265_))
                                                          (let ((_e233953234270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233949234265_))))
                    (let ((_tl233951234275_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233953234270_)))
                          (_hd233952234273_
                           (let ()
                             (declare (not safe))
                             (##car _e233953234270_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233952234273_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233952234273_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233951234275_))
                                  (let ((_e233956234278_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233951234275_))))
                                    (let ((_tl233954234283_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233956234278_)))
                                          (_hd233955234281_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233956234278_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233954234283_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233948234267_))
                                              (let ((__tmp242539
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd233955234281_
                                                             _-absent-value233901234165_)))
                                                    (__tmp242538
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd233946234257_
                                                             _key233902234167_)))
                                                    (__tmp242537
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd233937234233_
                                                             _-xkwvar233903234169_)))
                                                    (__tmp242536
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd233928234209_
                                                             _-hash-ref233904234171_))))
                                                (declare (not safe))
                                                (_loop233897234160_
                                                 _lp-tl233900234179_
                                                 __tmp242539
                                                 __tmp242538
                                                 __tmp242537
                                                 __tmp242536))
                                              (___match241119241120_
                                               _e233854234019_
                                               _hd233853234022_
                                               _tl233852234024_))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))
                              (___match241119241120_
                               _e233854234019_
                               _hd233853234022_
                               _tl233852234024_))
                          (___match241119241120_
                           _e233854234019_
                           _hd233853234022_
                           _tl233852234024_))))
                  (___match241119241120_
                   _e233854234019_
                   _hd233853234022_
                   _tl233852234024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))
                                              (___match241119241120_
                                               _e233854234019_
                                               _hd233853234022_
                                               _tl233852234024_))))
                                      (___match241119241120_
                                       _e233854234019_
                                       _hd233853234022_
                                       _tl233852234024_))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))
                              (___match241119241120_
                               _e233854234019_
                               _hd233853234022_
                               _tl233852234024_))))
                      (___match241119241120_
                       _e233854234019_
                       _hd233853234022_
                       _tl233852234024_))))
              (___match241119241120_
               _e233854234019_
               _hd233853234022_
               _tl233852234024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))
                                      (___match241119241120_
                                       _e233854234019_
                                       _hd233853234022_
                                       _tl233852234024_))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))))
                          (___match241119241120_
                           _e233854234019_
                           _hd233853234022_
                           _tl233852234024_))))
                  (___match241119241120_
                   _e233854234019_
                   _hd233853234022_
                   _tl233852234024_))
              (___match241119241120_
               _e233854234019_
               _hd233853234022_
               _tl233852234024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match241119241120_
                                               _e233854234019_
                                               _hd233853234022_
                                               _tl233852234024_))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))
                                      (___match241119241120_
                                       _e233854234019_
                                       _hd233853234022_
                                       _tl233852234024_))))
                              (___match241119241120_
                               _e233854234019_
                               _hd233853234022_
                               _tl233852234024_))))
                      (___match241119241120_
                       _e233854234019_
                       _hd233853234022_
                       _tl233852234024_))
                  (___match241119241120_
                   _e233854234019_
                   _hd233853234022_
                   _tl233852234024_))
              (___match241119241120_
               _e233854234019_
               _hd233853234022_
               _tl233852234024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match241119241120_
                                               _e233854234019_
                                               _hd233853234022_
                                               _tl233852234024_))))
                                      (let ((_-hash-ref233908234292_
                                             (reverse _-hash-ref233904234171_))
                                            (_-xkwvar233907234290_
                                             (reverse _-xkwvar233903234169_))
                                            (_key233906234288_
                                             (reverse _key233902234167_))
                                            (_-absent-value233905234286_
                                             (reverse _-absent-value233901234165_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl233861234048_))
                                            (let ((_L234295_ _hd233916234155_)
                                                  (_L234296_
                                                   _-absent-value233905234286_)
                                                  (_L234297_ _key233906234288_)
                                                  (_L234298_
                                                   _-xkwvar233907234290_)
                                                  (_L234299_
                                                   _-hash-ref233908234292_)
                                                  (_L234300_ _hd233892234126_)
                                                  (_L234301_ _hd233883234102_)
                                                  (_L234302_ _hd233874234078_)
                                                  (_L234303_ _tl233858234040_)
                                                  (_L234304_ _hd233859234038_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234304_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L234303_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L234302_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L234304_
                                                          _L234300_))
                                                       (let ((__tmp242534
                                                              (let ((__tmp242535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g234357234360_ _g234358234362_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g234357234360_ _g234358234362_)))))
                        (declare (not safe))
                        (foldr1 __tmp242535 '() _L234297_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp242534))
               (let ((__tmp242533
                      (lambda (_g234364234366_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g234364234366_
                           'hash-ref))))
                     (__tmp242531
                      (let ((__tmp242532
                             (lambda (_g234368234371_ _g234369234373_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g234368234371_ _g234369234373_)))))
                        (declare (not safe))
                        (foldr1 __tmp242532 '() _L234299_))))
                 (declare (not safe))
                 (andmap1 __tmp242533 __tmp242531))
               (let ((__tmp242530
                      (lambda (_g234375234377_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g234375234377_
                           'absent-value))))
                     (__tmp242528
                      (let ((__tmp242529
                             (lambda (_g234379234382_ _g234380234384_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g234379234382_ _g234380234384_)))))
                        (declare (not safe))
                        (foldr1 __tmp242529 '() _L234296_))))
                 (declare (not safe))
                 (andmap1 __tmp242530 __tmp242528))
               (let ((__tmp242527
                      (lambda (_g234386234388_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g234386234388_ _L234304_))))
                     (__tmp242525
                      (let ((__tmp242526
                             (lambda (_g234390234393_ _g234391234395_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g234390234393_ _g234391234395_)))))
                        (declare (not safe))
                        (foldr1 __tmp242526 '() _L234298_))))
                 (declare (not safe))
                 (andmap1 __tmp242527 __tmp242525)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont240806240807_
                                                   _L234295_
                                                   _L234296_
                                                   _L234297_
                                                   _L234298_
                                                   _L234299_
                                                   _L234300_
                                                   _L234301_
                                                   _L234302_
                                                   _L234303_
                                                   _L234304_)
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_)))
                                            (___match241119241120_
                                             _e233854234019_
                                             _hd233853234022_
                                             _tl233852234024_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop233897234160_
                           _target233894234131_
                           '()
                           '()
                           '()
                           '())))))
                   (___match240985240986_
                    (lambda (_e233854234019_
                             _hd233853234022_
                             _tl233852234024_
                             _e233857234027_
                             _hd233856234030_
                             _tl233855234032_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233856234030_))
                          (let ((_e233860234035_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233856234030_))))
                            (let ((_tl233858234040_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233860234035_)))
                                  (_hd233859234038_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233860234035_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233855234032_))
                                  (let ((_e233863234043_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233855234032_))))
                                    (let ((_tl233861234048_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233863234043_)))
                                          (_hd233862234046_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233863234043_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd233862234046_))
                                          (let ((_e233866234051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd233862234046_))))
                                            (let ((_tl233864234056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233866234051_)))
                                                  (_hd233865234054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233866234051_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd233865234054_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd233865234054_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233864234056_))
                                                          (let ((_e233869234059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233864234056_))))
                    (let ((_tl233867234064_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233869234059_)))
                          (_hd233868234062_
                           (let ()
                             (declare (not safe))
                             (##car _e233869234059_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233868234062_))
                          (let ((_e233872234067_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233868234062_))))
                            (let ((_tl233870234072_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233872234067_)))
                                  (_hd233871234070_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233872234067_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233871234070_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd233871234070_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233870234072_))
                                          (let ((_e233875234075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233870234072_))))
                                            (let ((_tl233873234080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233875234075_)))
                                                  (_hd233874234078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233875234075_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233873234080_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233867234064_))
                                                      (let ((_e233878234083_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233867234064_))))
                (let ((_tl233876234088_
                       (let () (declare (not safe)) (##cdr _e233878234083_)))
                      (_hd233877234086_
                       (let () (declare (not safe)) (##car _e233878234083_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233877234086_))
                      (let ((_e233881234091_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233877234086_))))
                        (let ((_tl233879234096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233881234091_)))
                              (_hd233880234094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233881234091_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233880234094_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233880234094_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233879234096_))
                                      (let ((_e233884234099_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233879234096_))))
                                        (let ((_tl233882234104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233884234099_)))
                                              (_hd233883234102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233884234099_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233882234104_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233876234088_))
                                                  (let ((_e233887234107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233876234088_))))
                                                    (let ((_tl233885234112_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233887234107_)))
                                                          (_hd233886234110_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233887234107_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233886234110_))
                                                          (let ((_e233890234115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233886234110_))))
                    (let ((_tl233888234120_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233890234115_)))
                          (_hd233889234118_
                           (let ()
                             (declare (not safe))
                             (##car _e233890234115_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233889234118_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd233889234118_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233888234120_))
                                  (let ((_e233893234123_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233888234120_))))
                                    (let ((_tl233891234128_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233893234123_)))
                                          (_hd233892234126_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233893234123_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233891234128_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233885234112_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl233885234112_))
                                                        '1)
                                                  (let ((___splice240808240809_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233885234112_
                                                            '1))))
                                                    (let ((_tl233896234133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240808240809_
                                                              '1)))
                                                          (_target233894234131_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice240808240809_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233896234133_))
                                                          (let ((_e233911234136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233896234133_))))
                    (let ((_tl233909234141_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233911234136_)))
                          (_hd233910234139_
                           (let ()
                             (declare (not safe))
                             (##car _e233911234136_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233910234139_))
                          (let ((_e233914234144_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233910234139_))))
                            (let ((_tl233912234149_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233914234144_)))
                                  (_hd233913234147_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233914234144_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233913234147_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd233913234147_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233912234149_))
                                          (let ((_e233917234152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233912234149_))))
                                            (let ((_tl233915234157_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233917234152_)))
                                                  (_hd233916234155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233917234152_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233915234157_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233909234141_))
                                                      (___match241113241114_
                                                       _e233854234019_
                                                       _hd233853234022_
                                                       _tl233852234024_
                                                       _e233857234027_
                                                       _hd233856234030_
                                                       _tl233855234032_
                                                       _e233860234035_
                                                       _hd233859234038_
                                                       _tl233858234040_
                                                       _e233863234043_
                                                       _hd233862234046_
                                                       _tl233861234048_
                                                       _e233866234051_
                                                       _hd233865234054_
                                                       _tl233864234056_
                                                       _e233869234059_
                                                       _hd233868234062_
                                                       _tl233867234064_
                                                       _e233872234067_
                                                       _hd233871234070_
                                                       _tl233870234072_
                                                       _e233875234075_
                                                       _hd233874234078_
                                                       _tl233873234080_
                                                       _e233878234083_
                                                       _hd233877234086_
                                                       _tl233876234088_
                                                       _e233881234091_
                                                       _hd233880234094_
                                                       _tl233879234096_
                                                       _e233884234099_
                                                       _hd233883234102_
                                                       _tl233882234104_
                                                       _e233887234107_
                                                       _hd233886234110_
                                                       _tl233885234112_
                                                       _e233890234115_
                                                       _hd233889234118_
                                                       _tl233888234120_
                                                       _e233893234123_
                                                       _hd233892234126_
                                                       _tl233891234128_
                                                       ___splice240808240809_
                                                       _target233894234131_
                                                       _tl233896234133_
                                                       _e233911234136_
                                                       _hd233910234139_
                                                       _tl233909234141_
                                                       _e233914234144_
                                                       _hd233913234147_
                                                       _tl233912234149_
                                                       _e233917234152_
                                                       _hd233916234155_
                                                       _tl233915234157_)
                                                      (___match241119241120_
                                                       _e233854234019_
                                                       _hd233853234022_
                                                       _tl233852234024_))
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))
                                      (___match241119241120_
                                       _e233854234019_
                                       _hd233853234022_
                                       _tl233852234024_))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))))
                          (___match241119241120_
                           _e233854234019_
                           _hd233853234022_
                           _tl233852234024_))))
                  (___match241119241120_
                   _e233854234019_
                   _hd233853234022_
                   _tl233852234024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))
                                              (___match241119241120_
                                               _e233854234019_
                                               _hd233853234022_
                                               _tl233852234024_))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))
                              (___match241119241120_
                               _e233854234019_
                               _hd233853234022_
                               _tl233852234024_))
                          (___match241119241120_
                           _e233854234019_
                           _hd233853234022_
                           _tl233852234024_))))
                  (___match241119241120_
                   _e233854234019_
                   _hd233853234022_
                   _tl233852234024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))
                                              (___match241119241120_
                                               _e233854234019_
                                               _hd233853234022_
                                               _tl233852234024_))))
                                      (___match241119241120_
                                       _e233854234019_
                                       _hd233853234022_
                                       _tl233852234024_))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))
                              (___match241119241120_
                               _e233854234019_
                               _hd233853234022_
                               _tl233852234024_))))
                      (___match241119241120_
                       _e233854234019_
                       _hd233853234022_
                       _tl233852234024_))))
              (___match241119241120_
               _e233854234019_
               _hd233853234022_
               _tl233852234024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))
                                      (___match241119241120_
                                       _e233854234019_
                                       _hd233853234022_
                                       _tl233852234024_))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))))
                          (___match241119241120_
                           _e233854234019_
                           _hd233853234022_
                           _tl233852234024_))))
                  (___match241119241120_
                   _e233854234019_
                   _hd233853234022_
                   _tl233852234024_))
              (___match241119241120_
               _e233854234019_
               _hd233853234022_
               _tl233852234024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241119241120_
                                                   _e233854234019_
                                                   _hd233853234022_
                                                   _tl233852234024_))))
                                          (___match241119241120_
                                           _e233854234019_
                                           _hd233853234022_
                                           _tl233852234024_))))
                                  (___match241119241120_
                                   _e233854234019_
                                   _hd233853234022_
                                   _tl233852234024_))))
                          (___match241119241120_
                           _e233854234019_
                           _hd233853234022_
                           _tl233852234024_))))
                   (___match240973240974_
                    (lambda (_e233787234410_
                             _hd233786234413_
                             _tl233785234415_
                             _e233790234418_
                             _hd233789234421_
                             _tl233788234423_
                             _e233793234426_
                             _hd233792234429_
                             _tl233791234431_
                             _e233796234434_
                             _hd233795234437_
                             _tl233794234439_
                             _e233799234442_
                             _hd233798234445_
                             _tl233797234447_
                             _e233802234450_
                             _hd233801234453_
                             _tl233800234455_
                             _e233805234458_
                             _hd233804234461_
                             _tl233803234463_
                             _e233808234466_
                             _hd233807234469_
                             _tl233806234471_
                             _e233811234474_
                             _hd233810234477_
                             _tl233809234479_
                             _e233814234482_
                             _hd233813234485_
                             _tl233812234487_
                             _e233817234490_
                             _hd233816234493_
                             _tl233815234495_
                             _e233820234498_
                             _hd233819234501_
                             _tl233818234503_
                             _e233823234506_
                             _hd233822234509_
                             _tl233821234511_
                             _e233826234514_
                             _hd233825234517_
                             _tl233824234519_
                             _e233829234522_
                             _hd233828234525_
                             _tl233827234527_
                             _e233832234530_
                             _hd233831234533_
                             _tl233830234535_
                             _e233835234538_
                             _hd233834234541_
                             _tl233833234543_
                             _e233838234546_
                             _hd233837234549_
                             _tl233836234551_
                             _e233841234554_
                             _hd233840234557_
                             _tl233839234559_)
                      (let ((_L234562_ _hd233840234557_)
                            (_L234563_ _hd233831234533_)
                            (_L234564_ _hd233822234509_)
                            (_L234565_ _hd233813234485_)
                            (_L234566_ _hd233804234461_)
                            (_L234567_ _hd233789234421_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L234567_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L234566_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L234565_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L234567_ _L234562_)))
                            (___kont240804240805_
                             _L234562_
                             _L234563_
                             _L234564_
                             _L234565_
                             _L234566_
                             _L234567_)
                            (___match240985240986_
                             _e233787234410_
                             _hd233786234413_
                             _tl233785234415_
                             _e233790234418_
                             _hd233789234421_
                             _tl233788234423_)))))
                   (___match240827240828_
                    (lambda (_e233787234410_ _hd233786234413_ _tl233785234415_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233785234415_))
                          (let ((_e233790234418_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233785234415_))))
                            (let ((_tl233788234423_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233790234418_)))
                                  (_hd233789234421_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233790234418_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233788234423_))
                                  (let ((_e233793234426_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233788234423_))))
                                    (let ((_tl233791234431_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233793234426_)))
                                          (_hd233792234429_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233793234426_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd233792234429_))
                                          (let ((_e233796234434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd233792234429_))))
                                            (let ((_tl233794234439_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233796234434_)))
                                                  (_hd233795234437_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233796234434_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd233795234437_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd233795234437_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233794234439_))
                                                          (let ((_e233799234442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233794234439_))))
                    (let ((_tl233797234447_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233799234442_)))
                          (_hd233798234445_
                           (let ()
                             (declare (not safe))
                             (##car _e233799234442_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233798234445_))
                          (let ((_e233802234450_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233798234445_))))
                            (let ((_tl233800234455_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233802234450_)))
                                  (_hd233801234453_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233802234450_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233801234453_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd233801234453_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233800234455_))
                                          (let ((_e233805234458_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233800234455_))))
                                            (let ((_tl233803234463_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233805234458_)))
                                                  (_hd233804234461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233805234458_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233803234463_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233797234447_))
                                                      (let ((_e233808234466_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233797234447_))))
                (let ((_tl233806234471_
                       (let () (declare (not safe)) (##cdr _e233808234466_)))
                      (_hd233807234469_
                       (let () (declare (not safe)) (##car _e233808234466_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233807234469_))
                      (let ((_e233811234474_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233807234469_))))
                        (let ((_tl233809234479_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233811234474_)))
                              (_hd233810234477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233811234474_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233810234477_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233810234477_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233809234479_))
                                      (let ((_e233814234482_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233809234479_))))
                                        (let ((_tl233812234487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233814234482_)))
                                              (_hd233813234485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233814234482_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233812234487_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233806234471_))
                                                  (let ((_e233817234490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233806234471_))))
                                                    (let ((_tl233815234495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233817234490_)))
                                                          (_hd233816234493_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233817234490_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233816234493_))
                                                          (let ((_e233820234498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233816234493_))))
                    (let ((_tl233818234503_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233820234498_)))
                          (_hd233819234501_
                           (let ()
                             (declare (not safe))
                             (##car _e233820234498_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233819234501_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233819234501_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233818234503_))
                                  (let ((_e233823234506_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233818234503_))))
                                    (let ((_tl233821234511_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233823234506_)))
                                          (_hd233822234509_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233823234506_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233821234511_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233815234495_))
                                              (let ((_e233826234514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233815234495_))))
                                                (let ((_tl233824234519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233826234514_)))
                                                      (_hd233825234517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233826234514_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd233825234517_))
                                                      (let ((_e233829234522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd233825234517_))))
                (let ((_tl233827234527_
                       (let () (declare (not safe)) (##cdr _e233829234522_)))
                      (_hd233828234525_
                       (let () (declare (not safe)) (##car _e233829234522_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd233828234525_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd233828234525_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233827234527_))
                              (let ((_e233832234530_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233827234527_))))
                                (let ((_tl233830234535_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233832234530_)))
                                      (_hd233831234533_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233832234530_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233830234535_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233824234519_))
                                          (let ((_e233835234538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233824234519_))))
                                            (let ((_tl233833234543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233835234538_)))
                                                  (_hd233834234541_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233835234538_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd233834234541_))
                                                  (let ((_e233838234546_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd233834234541_))))
                                                    (let ((_tl233836234551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233838234546_)))
                                                          (_hd233837234549_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233838234546_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd233837234549_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd233837234549_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233836234551_))
                          (let ((_e233841234554_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233836234551_))))
                            (let ((_tl233839234559_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233841234554_)))
                                  (_hd233840234557_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233841234554_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233839234559_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233833234543_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233791234431_))
                                          (___match240973240974_
                                           _e233787234410_
                                           _hd233786234413_
                                           _tl233785234415_
                                           _e233790234418_
                                           _hd233789234421_
                                           _tl233788234423_
                                           _e233793234426_
                                           _hd233792234429_
                                           _tl233791234431_
                                           _e233796234434_
                                           _hd233795234437_
                                           _tl233794234439_
                                           _e233799234442_
                                           _hd233798234445_
                                           _tl233797234447_
                                           _e233802234450_
                                           _hd233801234453_
                                           _tl233800234455_
                                           _e233805234458_
                                           _hd233804234461_
                                           _tl233803234463_
                                           _e233808234466_
                                           _hd233807234469_
                                           _tl233806234471_
                                           _e233811234474_
                                           _hd233810234477_
                                           _tl233809234479_
                                           _e233814234482_
                                           _hd233813234485_
                                           _tl233812234487_
                                           _e233817234490_
                                           _hd233816234493_
                                           _tl233815234495_
                                           _e233820234498_
                                           _hd233819234501_
                                           _tl233818234503_
                                           _e233823234506_
                                           _hd233822234509_
                                           _tl233821234511_
                                           _e233826234514_
                                           _hd233825234517_
                                           _tl233824234519_
                                           _e233829234522_
                                           _hd233828234525_
                                           _tl233827234527_
                                           _e233832234530_
                                           _hd233831234533_
                                           _tl233830234535_
                                           _e233835234538_
                                           _hd233834234541_
                                           _tl233833234543_
                                           _e233838234546_
                                           _hd233837234549_
                                           _tl233836234551_
                                           _e233841234554_
                                           _hd233840234557_
                                           _tl233839234559_)
                                          (___match240985240986_
                                           _e233787234410_
                                           _hd233786234413_
                                           _tl233785234415_
                                           _e233790234418_
                                           _hd233789234421_
                                           _tl233788234423_))
                                      (___match240985240986_
                                       _e233787234410_
                                       _hd233786234413_
                                       _tl233785234415_
                                       _e233790234418_
                                       _hd233789234421_
                                       _tl233788234423_))
                                  (___match240985240986_
                                   _e233787234410_
                                   _hd233786234413_
                                   _tl233785234415_
                                   _e233790234418_
                                   _hd233789234421_
                                   _tl233788234423_))))
                          (___match240985240986_
                           _e233787234410_
                           _hd233786234413_
                           _tl233785234415_
                           _e233790234418_
                           _hd233789234421_
                           _tl233788234423_))
                      (___match240985240986_
                       _e233787234410_
                       _hd233786234413_
                       _tl233785234415_
                       _e233790234418_
                       _hd233789234421_
                       _tl233788234423_))
                  (___match240985240986_
                   _e233787234410_
                   _hd233786234413_
                   _tl233785234415_
                   _e233790234418_
                   _hd233789234421_
                   _tl233788234423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240985240986_
                                                   _e233787234410_
                                                   _hd233786234413_
                                                   _tl233785234415_
                                                   _e233790234418_
                                                   _hd233789234421_
                                                   _tl233788234423_))))
                                          (___match240985240986_
                                           _e233787234410_
                                           _hd233786234413_
                                           _tl233785234415_
                                           _e233790234418_
                                           _hd233789234421_
                                           _tl233788234423_))
                                      (___match240985240986_
                                       _e233787234410_
                                       _hd233786234413_
                                       _tl233785234415_
                                       _e233790234418_
                                       _hd233789234421_
                                       _tl233788234423_))))
                              (___match240985240986_
                               _e233787234410_
                               _hd233786234413_
                               _tl233785234415_
                               _e233790234418_
                               _hd233789234421_
                               _tl233788234423_))
                          (___match240985240986_
                           _e233787234410_
                           _hd233786234413_
                           _tl233785234415_
                           _e233790234418_
                           _hd233789234421_
                           _tl233788234423_))
                      (___match240985240986_
                       _e233787234410_
                       _hd233786234413_
                       _tl233785234415_
                       _e233790234418_
                       _hd233789234421_
                       _tl233788234423_))))
              (___match240985240986_
               _e233787234410_
               _hd233786234413_
               _tl233785234415_
               _e233790234418_
               _hd233789234421_
               _tl233788234423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match240985240986_
                                               _e233787234410_
                                               _hd233786234413_
                                               _tl233785234415_
                                               _e233790234418_
                                               _hd233789234421_
                                               _tl233788234423_))
                                          (___match240985240986_
                                           _e233787234410_
                                           _hd233786234413_
                                           _tl233785234415_
                                           _e233790234418_
                                           _hd233789234421_
                                           _tl233788234423_))))
                                  (___match240985240986_
                                   _e233787234410_
                                   _hd233786234413_
                                   _tl233785234415_
                                   _e233790234418_
                                   _hd233789234421_
                                   _tl233788234423_))
                              (___match240985240986_
                               _e233787234410_
                               _hd233786234413_
                               _tl233785234415_
                               _e233790234418_
                               _hd233789234421_
                               _tl233788234423_))
                          (___match240985240986_
                           _e233787234410_
                           _hd233786234413_
                           _tl233785234415_
                           _e233790234418_
                           _hd233789234421_
                           _tl233788234423_))))
                  (___match240985240986_
                   _e233787234410_
                   _hd233786234413_
                   _tl233785234415_
                   _e233790234418_
                   _hd233789234421_
                   _tl233788234423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240985240986_
                                                   _e233787234410_
                                                   _hd233786234413_
                                                   _tl233785234415_
                                                   _e233790234418_
                                                   _hd233789234421_
                                                   _tl233788234423_))
                                              (___match240985240986_
                                               _e233787234410_
                                               _hd233786234413_
                                               _tl233785234415_
                                               _e233790234418_
                                               _hd233789234421_
                                               _tl233788234423_))))
                                      (___match240985240986_
                                       _e233787234410_
                                       _hd233786234413_
                                       _tl233785234415_
                                       _e233790234418_
                                       _hd233789234421_
                                       _tl233788234423_))
                                  (___match240985240986_
                                   _e233787234410_
                                   _hd233786234413_
                                   _tl233785234415_
                                   _e233790234418_
                                   _hd233789234421_
                                   _tl233788234423_))
                              (___match240985240986_
                               _e233787234410_
                               _hd233786234413_
                               _tl233785234415_
                               _e233790234418_
                               _hd233789234421_
                               _tl233788234423_))))
                      (___match240985240986_
                       _e233787234410_
                       _hd233786234413_
                       _tl233785234415_
                       _e233790234418_
                       _hd233789234421_
                       _tl233788234423_))))
              (___match240985240986_
               _e233787234410_
               _hd233786234413_
               _tl233785234415_
               _e233790234418_
               _hd233789234421_
               _tl233788234423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240985240986_
                                                   _e233787234410_
                                                   _hd233786234413_
                                                   _tl233785234415_
                                                   _e233790234418_
                                                   _hd233789234421_
                                                   _tl233788234423_))))
                                          (___match240985240986_
                                           _e233787234410_
                                           _hd233786234413_
                                           _tl233785234415_
                                           _e233790234418_
                                           _hd233789234421_
                                           _tl233788234423_))
                                      (___match240985240986_
                                       _e233787234410_
                                       _hd233786234413_
                                       _tl233785234415_
                                       _e233790234418_
                                       _hd233789234421_
                                       _tl233788234423_))
                                  (___match240985240986_
                                   _e233787234410_
                                   _hd233786234413_
                                   _tl233785234415_
                                   _e233790234418_
                                   _hd233789234421_
                                   _tl233788234423_))))
                          (___match240985240986_
                           _e233787234410_
                           _hd233786234413_
                           _tl233785234415_
                           _e233790234418_
                           _hd233789234421_
                           _tl233788234423_))))
                  (___match240985240986_
                   _e233787234410_
                   _hd233786234413_
                   _tl233785234415_
                   _e233790234418_
                   _hd233789234421_
                   _tl233788234423_))
              (___match240985240986_
               _e233787234410_
               _hd233786234413_
               _tl233785234415_
               _e233790234418_
               _hd233789234421_
               _tl233788234423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240985240986_
                                                   _e233787234410_
                                                   _hd233786234413_
                                                   _tl233785234415_
                                                   _e233790234418_
                                                   _hd233789234421_
                                                   _tl233788234423_))))
                                          (___match240985240986_
                                           _e233787234410_
                                           _hd233786234413_
                                           _tl233785234415_
                                           _e233790234418_
                                           _hd233789234421_
                                           _tl233788234423_))))
                                  (___match240985240986_
                                   _e233787234410_
                                   _hd233786234413_
                                   _tl233785234415_
                                   _e233790234418_
                                   _hd233789234421_
                                   _tl233788234423_))))
                          (___match241119241120_
                           _e233787234410_
                           _hd233786234413_
                           _tl233785234415_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240800240801_))
                  (let ((_e233778234627_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240800240801_))))
                    (let ((_tl233776234632_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233778234627_)))
                          (_hd233777234630_
                           (let ()
                             (declare (not safe))
                             (##car _e233778234627_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L234635_ _tl233776234632_))
                            (___kont240802240803_ _L234635_))
                          (___match240827240828_
                           _e233778234627_
                           _hd233777234630_
                           _tl233776234632_))))
                  (let () (declare (not safe)) (_g233773233969_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx233722_)
        (letrec ((_clause-e233724_
                  (lambda (_form233765_)
                    (let ((__obj242473
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
                       __obj242473
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form233765_))
                       (if (let ((__tmp242540
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp242540))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form233765_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form233765_))
                               '#f)
                           '#f))
                      __obj242473))))
          (let* ((_g233726233736_
                  (lambda (_g233727233733_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g233727233733_))))
                 (_g233725233762_
                  (lambda (_g233727233739_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g233727233739_))
                        (let ((_e233731233741_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g233727233739_))))
                          (let ((_hd233730233744_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233731233741_)))
                                (_tl233729233746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233731233741_))))
                            ((lambda (_L233749_)
                               (let ((_clauses233760_
                                      (map _clause-e233724_ _L233749_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses233760_)))
                             _tl233729233746_)))
                        (let ()
                          (declare (not safe))
                          (_g233726233736_ _g233727233739_))))))
            (declare (not safe))
            (_g233725233762_ _stx233722_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx233654_)
        (let* ((_g233656233673_
                (lambda (_g233657233670_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233657233670_))))
               (_g233655233719_
                (lambda (_g233657233676_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233657233676_))
                      (let ((_e233662233678_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233657233676_))))
                        (let ((_hd233661233681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233662233678_)))
                              (_tl233660233683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233662233678_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233660233683_))
                              (let ((_e233665233686_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233660233683_))))
                                (let ((_hd233664233689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233665233686_)))
                                      (_tl233663233691_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233665233686_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233663233691_))
                                      (let ((_e233668233694_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233663233691_))))
                                        (let ((_hd233667233697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233668233694_)))
                                              (_tl233666233699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233668233694_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233666233699_))
                                              ((lambda (_L233702_ _L233703_)
                                                 (let ((__tmp242541
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L233702_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp242541
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd233667233697_
                                               _hd233664233689_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233656233673_
                                                 _g233657233676_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233656233673_ _g233657233676_)))))
                              (let ()
                                (declare (not safe))
                                (_g233656233673_ _g233657233676_)))))
                      (let ()
                        (declare (not safe))
                        (_g233656233673_ _g233657233676_))))))
          (declare (not safe))
          (_g233655233719_ _stx233654_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx233559_)
        (let* ((___stx241128241129_ _stx233559_)
               (_g233562233582_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241128241129_)))))
          (let ((___kont241130241131_
                 (lambda (_L233626_ _L233627_)
                   (let ((_type-e233644233646_
                          (let ((__tmp242542
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L233627_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp242542))))
                     (if _type-e233644233646_
                         (let ((_type-e233649_ _type-e233644233646_))
                           (_type-e233649_ _stx233559_ _L233626_))
                         '#f))))
                (___kont241132241133_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241128241129_))
                (let ((_e233568233594_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241128241129_))))
                  (let ((_tl233566233599_
                         (let () (declare (not safe)) (##cdr _e233568233594_)))
                        (_hd233567233597_
                         (let ()
                           (declare (not safe))
                           (##car _e233568233594_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233566233599_))
                        (let ((_e233571233602_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233566233599_))))
                          (let ((_tl233569233607_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233571233602_)))
                                (_hd233570233605_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233571233602_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd233570233605_))
                                (let ((_e233574233610_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd233570233605_))))
                                  (let ((_tl233572233615_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e233574233610_)))
                                        (_hd233573233613_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e233574233610_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd233573233613_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd233573233613_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl233572233615_))
                                                (let ((_e233577233618_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl233572233615_))))
                                                  (let ((_tl233575233623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e233577233618_)))
                                                        (_hd233576233621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e233577233618_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl233575233623_))
                                                        (___kont241130241131_
                                                         _tl233569233607_
                                                         _hd233576233621_)
                                                        (___kont241132241133_))))
                                                (___kont241132241133_))
                                            (___kont241132241133_))
                                        (___kont241132241133_))))
                                (___kont241132241133_))))
                        (___kont241132241133_))))
                (___kont241132241133_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx233508_)
        (let* ((_g233510233523_
                (lambda (_g233511233520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233511233520_))))
               (_g233509233556_
                (lambda (_g233511233526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233511233526_))
                      (let ((_e233515233528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233511233526_))))
                        (let ((_hd233514233531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233515233528_)))
                              (_tl233513233533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233515233528_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233513233533_))
                              (let ((_e233518233536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233513233533_))))
                                (let ((_hd233517233539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233518233536_)))
                                      (_tl233516233541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233518233536_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233516233541_))
                                      ((lambda (_L233544_)
                                         (let ((__tmp242543
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233544_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp242543)))
                                       _hd233517233539_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233510233523_ _g233511233526_)))))
                              (let ()
                                (declare (not safe))
                                (_g233510233523_ _g233511233526_)))))
                      (let ()
                        (declare (not safe))
                        (_g233510233523_ _g233511233526_))))))
          (declare (not safe))
          (_g233509233556_ _stx233508_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form232742_)
        (let* ((___stx241166241167_ _form232742_)
               (_g232747232904_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241166241167_)))))
          (let ((___kont241168241169_
                 (lambda (_L233428_ _L233429_ _L233430_) '#t))
                (___kont241174241175_
                 (lambda (_L233216_
                          _L233217_
                          _L233218_
                          _L233219_
                          _L233220_
                          _L233221_)
                   '#t))
                (___kont241180241181_
                 (lambda (_L233012_ _L233013_ _L233014_ _L233015_) '#t))
                (___kont241182241183_ (lambda () '#f)))
            (let* ((___match241307241308_
                    (lambda (_e232866232916_
                             _hd232865232919_
                             _tl232864232921_
                             _e232869232924_
                             _hd232868232927_
                             _tl232867232929_
                             _e232872232932_
                             _hd232871232935_
                             _tl232870232937_
                             _e232875232940_
                             _hd232874232943_
                             _tl232873232945_
                             _e232878232948_
                             _hd232877232951_
                             _tl232876232953_
                             _e232881232956_
                             _hd232880232959_
                             _tl232879232961_
                             _e232884232964_
                             _hd232883232967_
                             _tl232882232969_
                             _e232887232972_
                             _hd232886232975_
                             _tl232885232977_
                             _e232890232980_
                             _hd232889232983_
                             _tl232888232985_
                             _e232893232988_
                             _hd232892232991_
                             _tl232891232993_
                             _e232896232996_
                             _hd232895232999_
                             _tl232894233001_
                             _e232899233004_
                             _hd232898233007_
                             _tl232897233009_)
                      (let ((_L233012_ _hd232898233007_)
                            (_L233013_ _hd232889232983_)
                            (_L233014_ _hd232880232959_)
                            (_L233015_ _hd232865232919_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L233015_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L233014_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L233015_ _L233012_))
                                 (let ((__tmp242544
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L233013_
                                           _L233015_))))
                                   (declare (not safe))
                                   (not __tmp242544)))
                            (___kont241180241181_
                             _L233012_
                             _L233013_
                             _L233014_
                             _L233015_)
                            (___kont241182241183_)))))
                   (___match241279241280_
                    (lambda (_e232866232916_
                             _hd232865232919_
                             _tl232864232921_
                             _e232869232924_
                             _hd232868232927_
                             _tl232867232929_
                             _e232872232932_
                             _hd232871232935_
                             _tl232870232937_
                             _e232875232940_
                             _hd232874232943_
                             _tl232873232945_
                             _e232878232948_
                             _hd232877232951_
                             _tl232876232953_
                             _e232881232956_
                             _hd232880232959_
                             _tl232879232961_
                             _e232884232964_
                             _hd232883232967_
                             _tl232882232969_
                             _e232887232972_
                             _hd232886232975_
                             _tl232885232977_
                             _e232890232980_
                             _hd232889232983_
                             _tl232888232985_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232882232969_))
                          (let ((_e232893232988_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232882232969_))))
                            (let ((_tl232891232993_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232893232988_)))
                                  (_hd232892232991_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232893232988_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd232892232991_))
                                  (let ((_e232896232996_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd232892232991_))))
                                    (let ((_tl232894233001_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232896232996_)))
                                          (_hd232895232999_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232896232996_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd232895232999_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd232895232999_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232894233001_))
                                                  (let ((_e232899233004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232894233001_))))
                                                    (let ((_tl232897233009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232899233004_)))
                                                          (_hd232898233007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232899233004_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232897233009_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl232891232993_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl232867232929_))
                          (___match241307241308_
                           _e232866232916_
                           _hd232865232919_
                           _tl232864232921_
                           _e232869232924_
                           _hd232868232927_
                           _tl232867232929_
                           _e232872232932_
                           _hd232871232935_
                           _tl232870232937_
                           _e232875232940_
                           _hd232874232943_
                           _tl232873232945_
                           _e232878232948_
                           _hd232877232951_
                           _tl232876232953_
                           _e232881232956_
                           _hd232880232959_
                           _tl232879232961_
                           _e232884232964_
                           _hd232883232967_
                           _tl232882232969_
                           _e232887232972_
                           _hd232886232975_
                           _tl232885232977_
                           _e232890232980_
                           _hd232889232983_
                           _tl232888232985_
                           _e232893232988_
                           _hd232892232991_
                           _tl232891232993_
                           _e232896232996_
                           _hd232895232999_
                           _tl232894233001_
                           _e232899233004_
                           _hd232898233007_
                           _tl232897233009_)
                          (___kont241182241183_))
                      (___kont241182241183_))
                  (___kont241182241183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241182241183_))
                                              (___kont241182241183_))
                                          (___kont241182241183_))))
                                  (___kont241182241183_))))
                          (___kont241182241183_))))
                   (___match241209241210_
                    (lambda (_e232802233056_
                             _hd232801233059_
                             _tl232800233061_
                             ___splice241176241177_
                             _target232803233064_
                             _tl232805233066_)
                      (letrec ((_loop232806233069_
                                (lambda (_hd232804233072_ _arg232810233074_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232804233072_))
                                      (let ((_e232807233077_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232804233072_))))
                                        (let ((_lp-tl232809233082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232807233077_)))
                                              (_lp-hd232808233080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232807233077_))))
                                          (let ((__tmp242559
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232808233080_
                                                         _arg232810233074_))))
                                            (declare (not safe))
                                            (_loop232806233069_
                                             _lp-tl232809233082_
                                             __tmp242559))))
                                      (let ((_arg232811233085_
                                             (reverse _arg232810233074_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232800233061_))
                                            (let ((_e232814233088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232800233061_))))
                                              (let ((_tl232812233093_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232814233088_)))
                                                    (_hd232813233091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232814233088_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232813233091_))
                                                    (let ((_e232817233096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232813233091_))))
                                                      (let ((_tl232815233101_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232817233096_)))
                    (_hd232816233099_
                     (let () (declare (not safe)) (##car _e232817233096_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232816233099_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232816233099_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232815233101_))
                            (let ((_e232820233104_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232815233101_))))
                              (let ((_tl232818233109_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232820233104_)))
                                    (_hd232819233107_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232820233104_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232819233107_))
                                    (let ((_e232823233112_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232819233107_))))
                                      (let ((_tl232821233117_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232823233112_)))
                                            (_hd232822233115_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232823233112_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232822233115_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232822233115_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232821233117_))
                                                    (let ((_e232826233120_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232821233117_))))
                                                      (let ((_tl232824233125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232826233120_)))
                    (_hd232825233123_
                     (let () (declare (not safe)) (##car _e232826233120_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232824233125_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232818233109_))
                        (let ((_e232829233128_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232818233109_))))
                          (let ((_tl232827233133_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232829233128_)))
                                (_hd232828233131_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232829233128_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232828233131_))
                                (let ((_e232832233136_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232828233131_))))
                                  (let ((_tl232830233141_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232832233136_)))
                                        (_hd232831233139_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232832233136_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232831233139_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232831233139_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232830233141_))
                                                (let ((_e232835233144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232830233141_))))
                                                  (let ((_tl232833233149_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232835233144_)))
                                                        (_hd232834233147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232835233144_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232833233149_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl232827233133_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl232827233133_))
                              '1)
                        (let ((___splice241178241179_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232827233133_
                                  '1))))
                          (let ((_tl232838233154_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice241178241179_ '1)))
                                (_target232836233152_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice241178241179_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232838233154_))
                                (let ((_e232847233157_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232838233154_))))
                                  (let ((_tl232845233162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232847233157_)))
                                        (_hd232846233160_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232847233157_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd232846233160_))
                                        (let ((_e232850233165_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd232846233160_))))
                                          (let ((_tl232848233170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e232850233165_)))
                                                (_hd232849233168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e232850233165_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd232849233168_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd232849233168_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl232848233170_))
                                                        (let ((_e232853233173_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl232848233170_))))
                  (let ((_tl232851233178_
                         (let () (declare (not safe)) (##cdr _e232853233173_)))
                        (_hd232852233176_
                         (let ()
                           (declare (not safe))
                           (##car _e232853233173_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl232851233178_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl232845233162_))
                            (letrec ((_loop232839233181_
                                      (lambda (_hd232837233184_
                                               _xarg232843233186_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd232837233184_))
                                            (let ((_e232840233189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd232837233184_))))
                                              (let ((_lp-tl232842233194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232840233189_)))
                                                    (_lp-hd232841233192_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232840233189_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd232841233192_))
                                                    (let ((_e232856233197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd232841233192_))))
                                                      (let ((_tl232854233202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232856233197_)))
                    (_hd232855233200_
                     (let () (declare (not safe)) (##car _e232856233197_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232855233200_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd232855233200_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232854233202_))
                            (let ((_e232859233205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232854233202_))))
                              (let ((_tl232857233210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232859233205_)))
                                    (_hd232858233208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232859233205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl232857233210_))
                                    (let ((__tmp242558
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd232858233208_
                                                   _xarg232843233186_))))
                                      (declare (not safe))
                                      (_loop232839233181_
                                       _lp-tl232842233194_
                                       __tmp242558))
                                    (___match241279241280_
                                     _e232802233056_
                                     _hd232801233059_
                                     _tl232800233061_
                                     _e232814233088_
                                     _hd232813233091_
                                     _tl232812233093_
                                     _e232817233096_
                                     _hd232816233099_
                                     _tl232815233101_
                                     _e232820233104_
                                     _hd232819233107_
                                     _tl232818233109_
                                     _e232823233112_
                                     _hd232822233115_
                                     _tl232821233117_
                                     _e232826233120_
                                     _hd232825233123_
                                     _tl232824233125_
                                     _e232829233128_
                                     _hd232828233131_
                                     _tl232827233133_
                                     _e232832233136_
                                     _hd232831233139_
                                     _tl232830233141_
                                     _e232835233144_
                                     _hd232834233147_
                                     _tl232833233149_))))
                            (___match241279241280_
                             _e232802233056_
                             _hd232801233059_
                             _tl232800233061_
                             _e232814233088_
                             _hd232813233091_
                             _tl232812233093_
                             _e232817233096_
                             _hd232816233099_
                             _tl232815233101_
                             _e232820233104_
                             _hd232819233107_
                             _tl232818233109_
                             _e232823233112_
                             _hd232822233115_
                             _tl232821233117_
                             _e232826233120_
                             _hd232825233123_
                             _tl232824233125_
                             _e232829233128_
                             _hd232828233131_
                             _tl232827233133_
                             _e232832233136_
                             _hd232831233139_
                             _tl232830233141_
                             _e232835233144_
                             _hd232834233147_
                             _tl232833233149_))
                        (___match241279241280_
                         _e232802233056_
                         _hd232801233059_
                         _tl232800233061_
                         _e232814233088_
                         _hd232813233091_
                         _tl232812233093_
                         _e232817233096_
                         _hd232816233099_
                         _tl232815233101_
                         _e232820233104_
                         _hd232819233107_
                         _tl232818233109_
                         _e232823233112_
                         _hd232822233115_
                         _tl232821233117_
                         _e232826233120_
                         _hd232825233123_
                         _tl232824233125_
                         _e232829233128_
                         _hd232828233131_
                         _tl232827233133_
                         _e232832233136_
                         _hd232831233139_
                         _tl232830233141_
                         _e232835233144_
                         _hd232834233147_
                         _tl232833233149_))
                    (___match241279241280_
                     _e232802233056_
                     _hd232801233059_
                     _tl232800233061_
                     _e232814233088_
                     _hd232813233091_
                     _tl232812233093_
                     _e232817233096_
                     _hd232816233099_
                     _tl232815233101_
                     _e232820233104_
                     _hd232819233107_
                     _tl232818233109_
                     _e232823233112_
                     _hd232822233115_
                     _tl232821233117_
                     _e232826233120_
                     _hd232825233123_
                     _tl232824233125_
                     _e232829233128_
                     _hd232828233131_
                     _tl232827233133_
                     _e232832233136_
                     _hd232831233139_
                     _tl232830233141_
                     _e232835233144_
                     _hd232834233147_
                     _tl232833233149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241279241280_
                                                     _e232802233056_
                                                     _hd232801233059_
                                                     _tl232800233061_
                                                     _e232814233088_
                                                     _hd232813233091_
                                                     _tl232812233093_
                                                     _e232817233096_
                                                     _hd232816233099_
                                                     _tl232815233101_
                                                     _e232820233104_
                                                     _hd232819233107_
                                                     _tl232818233109_
                                                     _e232823233112_
                                                     _hd232822233115_
                                                     _tl232821233117_
                                                     _e232826233120_
                                                     _hd232825233123_
                                                     _tl232824233125_
                                                     _e232829233128_
                                                     _hd232828233131_
                                                     _tl232827233133_
                                                     _e232832233136_
                                                     _hd232831233139_
                                                     _tl232830233141_
                                                     _e232835233144_
                                                     _hd232834233147_
                                                     _tl232833233149_))))
                                            (let ((_xarg232844233213_
                                                   (reverse _xarg232843233186_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232812233093_))
                                                  (let ((_L233216_
                                                         _hd232852233176_)
                                                        (_L233217_
                                                         _xarg232844233213_)
                                                        (_L233218_
                                                         _hd232834233147_)
                                                        (_L233219_
                                                         _hd232825233123_)
                                                        (_L233220_
                                                         _tl232805233066_)
                                                        (_L233221_
                                                         _arg232811233085_))
                                                    (if (and (let ((__tmp242556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp242557
                                   (lambda (_g233264233267_ _g233265233269_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233264233267_
                                             _g233265233269_)))))
                              (declare (not safe))
                              (foldr1 __tmp242557 '() _L233221_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp242556))
                     (let () (declare (not safe)) (gx#identifier? _L233220_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L233219_ 'apply))
                     (fx= (length (let ((__tmp242554
                                         (lambda (_g233271233274_
                                                  _g233272233276_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233271233274_
                                                   _g233272233276_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp242554 '() _L233221_)))
                          (length (let ((__tmp242555
                                         (lambda (_g233278233281_
                                                  _g233279233283_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g233278233281_
                                                   _g233279233283_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp242555 '() _L233217_))))
                     (let ((__tmp242552
                            (let ((__tmp242553
                                   (lambda (_g233285233288_ _g233286233290_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233285233288_
                                             _g233286233290_)))))
                              (declare (not safe))
                              (foldr1 __tmp242553 '() _L233221_)))
                           (__tmp242550
                            (let ((__tmp242551
                                   (lambda (_g233292233295_ _g233293233297_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g233292233295_
                                             _g233293233297_)))))
                              (declare (not safe))
                              (foldr1 __tmp242551 '() _L233217_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp242552 __tmp242550))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L233220_ _L233216_))
                     (let ((__tmp242545
                            (let ((__tmp242549
                                   (lambda (_g233299233301_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g233299233301_
                                        _L233218_))))
                                  (__tmp242546
                                   (let ((__tmp242548
                                          (lambda (_g233303233306_
                                                   _g233304233308_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g233303233306_
                                                    _g233304233308_))))
                                         (__tmp242547
                                          (let ()
                                            (declare (not safe))
                                            (cons _L233220_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp242548
                                             __tmp242547
                                             _L233221_))))
                              (declare (not safe))
                              (find __tmp242549 __tmp242546))))
                       (declare (not safe))
                       (not __tmp242545)))
                (___kont241174241175_
                 _L233216_
                 _L233217_
                 _L233218_
                 _L233219_
                 _L233220_
                 _L233221_)
                (___match241279241280_
                 _e232802233056_
                 _hd232801233059_
                 _tl232800233061_
                 _e232814233088_
                 _hd232813233091_
                 _tl232812233093_
                 _e232817233096_
                 _hd232816233099_
                 _tl232815233101_
                 _e232820233104_
                 _hd232819233107_
                 _tl232818233109_
                 _e232823233112_
                 _hd232822233115_
                 _tl232821233117_
                 _e232826233120_
                 _hd232825233123_
                 _tl232824233125_
                 _e232829233128_
                 _hd232828233131_
                 _tl232827233133_
                 _e232832233136_
                 _hd232831233139_
                 _tl232830233141_
                 _e232835233144_
                 _hd232834233147_
                 _tl232833233149_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match241279241280_
                                                   _e232802233056_
                                                   _hd232801233059_
                                                   _tl232800233061_
                                                   _e232814233088_
                                                   _hd232813233091_
                                                   _tl232812233093_
                                                   _e232817233096_
                                                   _hd232816233099_
                                                   _tl232815233101_
                                                   _e232820233104_
                                                   _hd232819233107_
                                                   _tl232818233109_
                                                   _e232823233112_
                                                   _hd232822233115_
                                                   _tl232821233117_
                                                   _e232826233120_
                                                   _hd232825233123_
                                                   _tl232824233125_
                                                   _e232829233128_
                                                   _hd232828233131_
                                                   _tl232827233133_
                                                   _e232832233136_
                                                   _hd232831233139_
                                                   _tl232830233141_
                                                   _e232835233144_
                                                   _hd232834233147_
                                                   _tl232833233149_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop232839233181_ _target232836233152_ '())))
                            (___match241279241280_
                             _e232802233056_
                             _hd232801233059_
                             _tl232800233061_
                             _e232814233088_
                             _hd232813233091_
                             _tl232812233093_
                             _e232817233096_
                             _hd232816233099_
                             _tl232815233101_
                             _e232820233104_
                             _hd232819233107_
                             _tl232818233109_
                             _e232823233112_
                             _hd232822233115_
                             _tl232821233117_
                             _e232826233120_
                             _hd232825233123_
                             _tl232824233125_
                             _e232829233128_
                             _hd232828233131_
                             _tl232827233133_
                             _e232832233136_
                             _hd232831233139_
                             _tl232830233141_
                             _e232835233144_
                             _hd232834233147_
                             _tl232833233149_))
                        (___match241279241280_
                         _e232802233056_
                         _hd232801233059_
                         _tl232800233061_
                         _e232814233088_
                         _hd232813233091_
                         _tl232812233093_
                         _e232817233096_
                         _hd232816233099_
                         _tl232815233101_
                         _e232820233104_
                         _hd232819233107_
                         _tl232818233109_
                         _e232823233112_
                         _hd232822233115_
                         _tl232821233117_
                         _e232826233120_
                         _hd232825233123_
                         _tl232824233125_
                         _e232829233128_
                         _hd232828233131_
                         _tl232827233133_
                         _e232832233136_
                         _hd232831233139_
                         _tl232830233141_
                         _e232835233144_
                         _hd232834233147_
                         _tl232833233149_))))
                (___match241279241280_
                 _e232802233056_
                 _hd232801233059_
                 _tl232800233061_
                 _e232814233088_
                 _hd232813233091_
                 _tl232812233093_
                 _e232817233096_
                 _hd232816233099_
                 _tl232815233101_
                 _e232820233104_
                 _hd232819233107_
                 _tl232818233109_
                 _e232823233112_
                 _hd232822233115_
                 _tl232821233117_
                 _e232826233120_
                 _hd232825233123_
                 _tl232824233125_
                 _e232829233128_
                 _hd232828233131_
                 _tl232827233133_
                 _e232832233136_
                 _hd232831233139_
                 _tl232830233141_
                 _e232835233144_
                 _hd232834233147_
                 _tl232833233149_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241279241280_
                                                     _e232802233056_
                                                     _hd232801233059_
                                                     _tl232800233061_
                                                     _e232814233088_
                                                     _hd232813233091_
                                                     _tl232812233093_
                                                     _e232817233096_
                                                     _hd232816233099_
                                                     _tl232815233101_
                                                     _e232820233104_
                                                     _hd232819233107_
                                                     _tl232818233109_
                                                     _e232823233112_
                                                     _hd232822233115_
                                                     _tl232821233117_
                                                     _e232826233120_
                                                     _hd232825233123_
                                                     _tl232824233125_
                                                     _e232829233128_
                                                     _hd232828233131_
                                                     _tl232827233133_
                                                     _e232832233136_
                                                     _hd232831233139_
                                                     _tl232830233141_
                                                     _e232835233144_
                                                     _hd232834233147_
                                                     _tl232833233149_))
                                                (___match241279241280_
                                                 _e232802233056_
                                                 _hd232801233059_
                                                 _tl232800233061_
                                                 _e232814233088_
                                                 _hd232813233091_
                                                 _tl232812233093_
                                                 _e232817233096_
                                                 _hd232816233099_
                                                 _tl232815233101_
                                                 _e232820233104_
                                                 _hd232819233107_
                                                 _tl232818233109_
                                                 _e232823233112_
                                                 _hd232822233115_
                                                 _tl232821233117_
                                                 _e232826233120_
                                                 _hd232825233123_
                                                 _tl232824233125_
                                                 _e232829233128_
                                                 _hd232828233131_
                                                 _tl232827233133_
                                                 _e232832233136_
                                                 _hd232831233139_
                                                 _tl232830233141_
                                                 _e232835233144_
                                                 _hd232834233147_
                                                 _tl232833233149_))))
                                        (___match241279241280_
                                         _e232802233056_
                                         _hd232801233059_
                                         _tl232800233061_
                                         _e232814233088_
                                         _hd232813233091_
                                         _tl232812233093_
                                         _e232817233096_
                                         _hd232816233099_
                                         _tl232815233101_
                                         _e232820233104_
                                         _hd232819233107_
                                         _tl232818233109_
                                         _e232823233112_
                                         _hd232822233115_
                                         _tl232821233117_
                                         _e232826233120_
                                         _hd232825233123_
                                         _tl232824233125_
                                         _e232829233128_
                                         _hd232828233131_
                                         _tl232827233133_
                                         _e232832233136_
                                         _hd232831233139_
                                         _tl232830233141_
                                         _e232835233144_
                                         _hd232834233147_
                                         _tl232833233149_))))
                                (___match241279241280_
                                 _e232802233056_
                                 _hd232801233059_
                                 _tl232800233061_
                                 _e232814233088_
                                 _hd232813233091_
                                 _tl232812233093_
                                 _e232817233096_
                                 _hd232816233099_
                                 _tl232815233101_
                                 _e232820233104_
                                 _hd232819233107_
                                 _tl232818233109_
                                 _e232823233112_
                                 _hd232822233115_
                                 _tl232821233117_
                                 _e232826233120_
                                 _hd232825233123_
                                 _tl232824233125_
                                 _e232829233128_
                                 _hd232828233131_
                                 _tl232827233133_
                                 _e232832233136_
                                 _hd232831233139_
                                 _tl232830233141_
                                 _e232835233144_
                                 _hd232834233147_
                                 _tl232833233149_))))
                        (___match241279241280_
                         _e232802233056_
                         _hd232801233059_
                         _tl232800233061_
                         _e232814233088_
                         _hd232813233091_
                         _tl232812233093_
                         _e232817233096_
                         _hd232816233099_
                         _tl232815233101_
                         _e232820233104_
                         _hd232819233107_
                         _tl232818233109_
                         _e232823233112_
                         _hd232822233115_
                         _tl232821233117_
                         _e232826233120_
                         _hd232825233123_
                         _tl232824233125_
                         _e232829233128_
                         _hd232828233131_
                         _tl232827233133_
                         _e232832233136_
                         _hd232831233139_
                         _tl232830233141_
                         _e232835233144_
                         _hd232834233147_
                         _tl232833233149_))
                    (___match241279241280_
                     _e232802233056_
                     _hd232801233059_
                     _tl232800233061_
                     _e232814233088_
                     _hd232813233091_
                     _tl232812233093_
                     _e232817233096_
                     _hd232816233099_
                     _tl232815233101_
                     _e232820233104_
                     _hd232819233107_
                     _tl232818233109_
                     _e232823233112_
                     _hd232822233115_
                     _tl232821233117_
                     _e232826233120_
                     _hd232825233123_
                     _tl232824233125_
                     _e232829233128_
                     _hd232828233131_
                     _tl232827233133_
                     _e232832233136_
                     _hd232831233139_
                     _tl232830233141_
                     _e232835233144_
                     _hd232834233147_
                     _tl232833233149_))
                (___kont241182241183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241182241183_))
                                            (___kont241182241183_))
                                        (___kont241182241183_))))
                                (___kont241182241183_))))
                        (___kont241182241183_))
                    (___kont241182241183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241182241183_))
                                                (___kont241182241183_))
                                            (___kont241182241183_))))
                                    (___kont241182241183_))))
                            (___kont241182241183_))
                        (___kont241182241183_))
                    (___kont241182241183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241182241183_))))
                                            (___kont241182241183_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232806233069_ _target232803233064_ '())))))
                   (___match241197241198_
                    (lambda (_e232754233316_
                             _hd232753233319_
                             _tl232752233321_
                             ___splice241170241171_
                             _target232755233324_
                             _tl232757233326_)
                      (letrec ((_loop232758233329_
                                (lambda (_hd232756233332_ _arg232762233334_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232756233332_))
                                      (let ((_e232759233337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232756233332_))))
                                        (let ((_lp-tl232761233342_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232759233337_)))
                                              (_lp-hd232760233340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232759233337_))))
                                          (let ((__tmp242573
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232760233340_
                                                         _arg232762233334_))))
                                            (declare (not safe))
                                            (_loop232758233329_
                                             _lp-tl232761233342_
                                             __tmp242573))))
                                      (let ((_arg232763233345_
                                             (reverse _arg232762233334_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232752233321_))
                                            (let ((_e232766233348_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232752233321_))))
                                              (let ((_tl232764233353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232766233348_)))
                                                    (_hd232765233351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232766233348_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232765233351_))
                                                    (let ((_e232769233356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232765233351_))))
                                                      (let ((_tl232767233361_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232769233356_)))
                    (_hd232768233359_
                     (let () (declare (not safe)) (##car _e232769233356_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232768233359_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232768233359_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232767233361_))
                            (let ((_e232772233364_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232767233361_))))
                              (let ((_tl232770233369_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232772233364_)))
                                    (_hd232771233367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232772233364_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232771233367_))
                                    (let ((_e232775233372_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232771233367_))))
                                      (let ((_tl232773233377_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232775233372_)))
                                            (_hd232774233375_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232775233372_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232774233375_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232774233375_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232773233377_))
                                                    (let ((_e232778233380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232773233377_))))
                                                      (let ((_tl232776233385_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232778233380_)))
                    (_hd232777233383_
                     (let () (declare (not safe)) (##car _e232778233380_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232776233385_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl232770233369_))
                        (let ((___splice241172241173_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232770233369_
                                  '0))))
                          (let ((_tl232781233390_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice241172241173_ '1)))
                                (_target232779233388_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice241172241173_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232781233390_))
                                (letrec ((_loop232782233393_
                                          (lambda (_hd232780233396_
                                                   _xarg232786233398_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232780233396_))
                                                (let ((_e232783233401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232780233396_))))
                                                  (let ((_lp-tl232785233406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232783233401_)))
                                                        (_lp-hd232784233404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232783233401_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd232784233404_))
                                                        (let ((_e232790233409_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd232784233404_))))
                  (let ((_tl232788233414_
                         (let () (declare (not safe)) (##cdr _e232790233409_)))
                        (_hd232789233412_
                         (let ()
                           (declare (not safe))
                           (##car _e232790233409_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232789233412_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232789233412_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232788233414_))
                                (let ((_e232793233417_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232788233414_))))
                                  (let ((_tl232791233422_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232793233417_)))
                                        (_hd232792233420_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232793233417_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232791233422_))
                                        (let ((__tmp242572
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd232792233420_
                                                       _xarg232786233398_))))
                                          (declare (not safe))
                                          (_loop232782233393_
                                           _lp-tl232785233406_
                                           __tmp242572))
                                        (___match241209241210_
                                         _e232754233316_
                                         _hd232753233319_
                                         _tl232752233321_
                                         ___splice241170241171_
                                         _target232755233324_
                                         _tl232757233326_))))
                                (___match241209241210_
                                 _e232754233316_
                                 _hd232753233319_
                                 _tl232752233321_
                                 ___splice241170241171_
                                 _target232755233324_
                                 _tl232757233326_))
                            (___match241209241210_
                             _e232754233316_
                             _hd232753233319_
                             _tl232752233321_
                             ___splice241170241171_
                             _target232755233324_
                             _tl232757233326_))
                        (___match241209241210_
                         _e232754233316_
                         _hd232753233319_
                         _tl232752233321_
                         ___splice241170241171_
                         _target232755233324_
                         _tl232757233326_))))
                (___match241209241210_
                 _e232754233316_
                 _hd232753233319_
                 _tl232752233321_
                 ___splice241170241171_
                 _target232755233324_
                 _tl232757233326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg232787233425_
                                                       (reverse _xarg232786233398_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232764233353_))
                                                      (let ((_L233428_
                                                             _xarg232787233425_)
                                                            (_L233429_
                                                             _hd232777233383_)
                                                            (_L233430_
                                                             _arg232763233345_))
                                                        (if (and (let ((__tmp242570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp242571
                                       (lambda (_g233458233461_
                                                _g233459233463_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g233458233461_
                                                 _g233459233463_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp242571 '() _L233430_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp242570))
                         (fx= (length (let ((__tmp242568
                                             (lambda (_g233465233468_
                                                      _g233466233470_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g233465233468_
                                                       _g233466233470_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp242568 '() _L233430_)))
                              (length (let ((__tmp242569
                                             (lambda (_g233472233475_
                                                      _g233473233477_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g233472233475_
                                                       _g233473233477_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp242569 '() _L233428_))))
                         (let ((__tmp242566
                                (let ((__tmp242567
                                       (lambda (_g233479233482_
                                                _g233480233484_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g233479233482_
                                                 _g233480233484_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp242567 '() _L233430_)))
                               (__tmp242564
                                (let ((__tmp242565
                                       (lambda (_g233486233489_
                                                _g233487233491_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g233486233489_
                                                 _g233487233491_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp242565 '() _L233428_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp242566
                                    __tmp242564))
                         (let ((__tmp242560
                                (let ((__tmp242563
                                       (lambda (_g233493233495_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g233493233495_
                                            _L233429_))))
                                      (__tmp242561
                                       (let ((__tmp242562
                                              (lambda (_g233497233500_
                                                       _g233498233502_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g233497233500_
                                                        _g233498233502_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp242562 '() _L233430_))))
                                  (declare (not safe))
                                  (find __tmp242563 __tmp242561))))
                           (declare (not safe))
                           (not __tmp242560)))
                    (___kont241168241169_ _L233428_ _L233429_ _L233430_)
                    (___match241209241210_
                     _e232754233316_
                     _hd232753233319_
                     _tl232752233321_
                     ___splice241170241171_
                     _target232755233324_
                     _tl232757233326_)))
              (___match241209241210_
               _e232754233316_
               _hd232753233319_
               _tl232752233321_
               ___splice241170241171_
               _target232755233324_
               _tl232757233326_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop232782233393_
                                     _target232779233388_
                                     '())))
                                (___match241209241210_
                                 _e232754233316_
                                 _hd232753233319_
                                 _tl232752233321_
                                 ___splice241170241171_
                                 _target232755233324_
                                 _tl232757233326_))))
                        (___match241209241210_
                         _e232754233316_
                         _hd232753233319_
                         _tl232752233321_
                         ___splice241170241171_
                         _target232755233324_
                         _tl232757233326_))
                    (___match241209241210_
                     _e232754233316_
                     _hd232753233319_
                     _tl232752233321_
                     ___splice241170241171_
                     _target232755233324_
                     _tl232757233326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241209241210_
                                                     _e232754233316_
                                                     _hd232753233319_
                                                     _tl232752233321_
                                                     ___splice241170241171_
                                                     _target232755233324_
                                                     _tl232757233326_))
                                                (___match241209241210_
                                                 _e232754233316_
                                                 _hd232753233319_
                                                 _tl232752233321_
                                                 ___splice241170241171_
                                                 _target232755233324_
                                                 _tl232757233326_))
                                            (___match241209241210_
                                             _e232754233316_
                                             _hd232753233319_
                                             _tl232752233321_
                                             ___splice241170241171_
                                             _target232755233324_
                                             _tl232757233326_))))
                                    (___match241209241210_
                                     _e232754233316_
                                     _hd232753233319_
                                     _tl232752233321_
                                     ___splice241170241171_
                                     _target232755233324_
                                     _tl232757233326_))))
                            (___match241209241210_
                             _e232754233316_
                             _hd232753233319_
                             _tl232752233321_
                             ___splice241170241171_
                             _target232755233324_
                             _tl232757233326_))
                        (___match241209241210_
                         _e232754233316_
                         _hd232753233319_
                         _tl232752233321_
                         ___splice241170241171_
                         _target232755233324_
                         _tl232757233326_))
                    (___match241209241210_
                     _e232754233316_
                     _hd232753233319_
                     _tl232752233321_
                     ___splice241170241171_
                     _target232755233324_
                     _tl232757233326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241209241210_
                                                     _e232754233316_
                                                     _hd232753233319_
                                                     _tl232752233321_
                                                     ___splice241170241171_
                                                     _target232755233324_
                                                     _tl232757233326_))))
                                            (___match241209241210_
                                             _e232754233316_
                                             _hd232753233319_
                                             _tl232752233321_
                                             ___splice241170241171_
                                             _target232755233324_
                                             _tl232757233326_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232758233329_ _target232755233324_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241166241167_))
                  (let ((_e232754233316_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241166241167_))))
                    (let ((_tl232752233321_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232754233316_)))
                          (_hd232753233319_
                           (let ()
                             (declare (not safe))
                             (##car _e232754233316_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd232753233319_))
                          (let ((___splice241170241171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd232753233319_
                                    '0))))
                            (let ((_tl232757233326_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241170241171_ '1)))
                                  (_target232755233324_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241170241171_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232757233326_))
                                  (___match241197241198_
                                   _e232754233316_
                                   _hd232753233319_
                                   _tl232752233321_
                                   ___splice241170241171_
                                   _target232755233324_
                                   _tl232757233326_)
                                  (___match241209241210_
                                   _e232754233316_
                                   _hd232753233319_
                                   _tl232752233321_
                                   ___splice241170241171_
                                   _target232755233324_
                                   _tl232757233326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232752233321_))
                              (let ((_e232869232924_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232752233321_))))
                                (let ((_tl232867232929_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232869232924_)))
                                      (_hd232868232927_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232869232924_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232868232927_))
                                      (let ((_e232872232932_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232868232927_))))
                                        (let ((_tl232870232937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232872232932_)))
                                              (_hd232871232935_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232872232932_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd232871232935_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd232871232935_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232870232937_))
                                                      (let ((_e232875232940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232870232937_))))
                (let ((_tl232873232945_
                       (let () (declare (not safe)) (##cdr _e232875232940_)))
                      (_hd232874232943_
                       (let () (declare (not safe)) (##car _e232875232940_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232874232943_))
                      (let ((_e232878232948_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232874232943_))))
                        (let ((_tl232876232953_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232878232948_)))
                              (_hd232877232951_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232878232948_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232877232951_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232877232951_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232876232953_))
                                      (let ((_e232881232956_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232876232953_))))
                                        (let ((_tl232879232961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232881232956_)))
                                              (_hd232880232959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232881232956_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232879232961_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232873232945_))
                                                  (let ((_e232884232964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232873232945_))))
                                                    (let ((_tl232882232969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232884232964_)))
                                                          (_hd232883232967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232884232964_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232883232967_))
                                                          (let ((_e232887232972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232883232967_))))
                    (let ((_tl232885232977_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232887232972_)))
                          (_hd232886232975_
                           (let ()
                             (declare (not safe))
                             (##car _e232887232972_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232886232975_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232886232975_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232885232977_))
                                  (let ((_e232890232980_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232885232977_))))
                                    (let ((_tl232888232985_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232890232980_)))
                                          (_hd232889232983_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232890232980_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232888232985_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232882232969_))
                                              (let ((_e232893232988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232882232969_))))
                                                (let ((_tl232891232993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232893232988_)))
                                                      (_hd232892232991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232893232988_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd232892232991_))
                                                      (let ((_e232896232996_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd232892232991_))))
                (let ((_tl232894233001_
                       (let () (declare (not safe)) (##cdr _e232896232996_)))
                      (_hd232895232999_
                       (let () (declare (not safe)) (##car _e232896232996_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd232895232999_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd232895232999_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232894233001_))
                              (let ((_e232899233004_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232894233001_))))
                                (let ((_tl232897233009_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232899233004_)))
                                      (_hd232898233007_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232899233004_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232897233009_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232891232993_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232867232929_))
                                              (___match241307241308_
                                               _e232754233316_
                                               _hd232753233319_
                                               _tl232752233321_
                                               _e232869232924_
                                               _hd232868232927_
                                               _tl232867232929_
                                               _e232872232932_
                                               _hd232871232935_
                                               _tl232870232937_
                                               _e232875232940_
                                               _hd232874232943_
                                               _tl232873232945_
                                               _e232878232948_
                                               _hd232877232951_
                                               _tl232876232953_
                                               _e232881232956_
                                               _hd232880232959_
                                               _tl232879232961_
                                               _e232884232964_
                                               _hd232883232967_
                                               _tl232882232969_
                                               _e232887232972_
                                               _hd232886232975_
                                               _tl232885232977_
                                               _e232890232980_
                                               _hd232889232983_
                                               _tl232888232985_
                                               _e232893232988_
                                               _hd232892232991_
                                               _tl232891232993_
                                               _e232896232996_
                                               _hd232895232999_
                                               _tl232894233001_
                                               _e232899233004_
                                               _hd232898233007_
                                               _tl232897233009_)
                                              (___kont241182241183_))
                                          (___kont241182241183_))
                                      (___kont241182241183_))))
                              (___kont241182241183_))
                          (___kont241182241183_))
                      (___kont241182241183_))))
              (___kont241182241183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont241182241183_))
                                          (___kont241182241183_))))
                                  (___kont241182241183_))
                              (___kont241182241183_))
                          (___kont241182241183_))))
                  (___kont241182241183_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241182241183_))
                                              (___kont241182241183_))))
                                      (___kont241182241183_))
                                  (___kont241182241183_))
                              (___kont241182241183_))))
                      (___kont241182241183_))))
              (___kont241182241183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont241182241183_))
                                              (___kont241182241183_))))
                                      (___kont241182241183_))))
                              (___kont241182241183_)))))
                  (___kont241182241183_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form232210_)
        (let* ((___stx241310241311_ _form232210_)
               (_g232214232338_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241310241311_)))))
          (let ((___kont241312241313_
                 (lambda (_L232708_ _L232709_ _L232710_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L232709_))))
                (___kont241318241319_
                 (lambda (_L232556_ _L232557_ _L232558_ _L232559_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L232556_))))
                (___kont241322241323_
                 (lambda (_L232423_ _L232424_ _L232425_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L232423_)))))
            (let* ((___match241419241420_
                    (lambda (_e232306232343_
                             _hd232305232346_
                             _tl232304232348_
                             _e232309232351_
                             _hd232308232354_
                             _tl232307232356_
                             _e232312232359_
                             _hd232311232362_
                             _tl232310232364_
                             _e232315232367_
                             _hd232314232370_
                             _tl232313232372_
                             _e232318232375_
                             _hd232317232378_
                             _tl232316232380_
                             _e232321232383_
                             _hd232320232386_
                             _tl232319232388_
                             _e232324232391_
                             _hd232323232394_
                             _tl232322232396_
                             _e232327232399_
                             _hd232326232402_
                             _tl232325232404_
                             _e232330232407_
                             _hd232329232410_
                             _tl232328232412_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232322232396_))
                          (let ((_e232333232415_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232322232396_))))
                            (let ((_tl232331232420_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232333232415_)))
                                  (_hd232332232418_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232333232415_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232331232420_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232307232356_))
                                      (___kont241322241323_
                                       _hd232329232410_
                                       _hd232320232386_
                                       _hd232305232346_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232214232338_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232214232338_)))))
                          (let () (declare (not safe)) (_g232214232338_)))))
                   (___match241349241350_
                    (lambda (_e232267232460_
                             _hd232266232463_
                             _tl232265232465_
                             ___splice241320241321_
                             _target232268232468_
                             _tl232270232470_)
                      (letrec ((_loop232271232473_
                                (lambda (_hd232269232476_ _arg232275232478_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232269232476_))
                                      (let ((_e232272232481_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232269232476_))))
                                        (let ((_lp-tl232274232486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232272232481_)))
                                              (_lp-hd232273232484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232272232481_))))
                                          (let ((__tmp242574
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232273232484_
                                                         _arg232275232478_))))
                                            (declare (not safe))
                                            (_loop232271232473_
                                             _lp-tl232274232486_
                                             __tmp242574))))
                                      (let ((_arg232276232489_
                                             (reverse _arg232275232478_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232265232465_))
                                            (let ((_e232279232492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232265232465_))))
                                              (let ((_tl232277232497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232279232492_)))
                                                    (_hd232278232495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232279232492_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232278232495_))
                                                    (let ((_e232282232500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232278232495_))))
                                                      (let ((_tl232280232505_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232282232500_)))
                    (_hd232281232503_
                     (let () (declare (not safe)) (##car _e232282232500_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232281232503_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232281232503_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232280232505_))
                            (let ((_e232285232508_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232280232505_))))
                              (let ((_tl232283232513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232285232508_)))
                                    (_hd232284232511_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232285232508_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232284232511_))
                                    (let ((_e232288232516_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232284232511_))))
                                      (let ((_tl232286232521_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232288232516_)))
                                            (_hd232287232519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232288232516_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232287232519_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232287232519_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232286232521_))
                                                    (let ((_e232291232524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232286232521_))))
                                                      (let ((_tl232289232529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232291232524_)))
                    (_hd232290232527_
                     (let () (declare (not safe)) (##car _e232291232524_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232289232529_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl232283232513_))
                        (let ((_e232294232532_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl232283232513_))))
                          (let ((_tl232292232537_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232294232532_)))
                                (_hd232293232535_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232294232532_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd232293232535_))
                                (let ((_e232297232540_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd232293232535_))))
                                  (let ((_tl232295232545_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232297232540_)))
                                        (_hd232296232543_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232297232540_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd232296232543_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd232296232543_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl232295232545_))
                                                (let ((_e232300232548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl232295232545_))))
                                                  (let ((_tl232298232553_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232300232548_)))
                                                        (_hd232299232551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232300232548_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl232298232553_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl232277232497_))
                                                            (___kont241318241319_
                                                             _hd232299232551_
                                                             _hd232290232527_
                                                             _tl232270232470_
                                                             _arg232276232489_)
                                                            (___match241419241420_
                                                             _e232267232460_
                                                             _hd232266232463_
                                                             _tl232265232465_
                                                             _e232279232492_
                                                             _hd232278232495_
                                                             _tl232277232497_
                                                             _e232282232500_
                                                             _hd232281232503_
                                                             _tl232280232505_
                                                             _e232285232508_
                                                             _hd232284232511_
                                                             _tl232283232513_
                                                             _e232288232516_
                                                             _hd232287232519_
                                                             _tl232286232521_
                                                             _e232291232524_
                                                             _hd232290232527_
                                                             _tl232289232529_
                                                             _e232294232532_
                                                             _hd232293232535_
                                                             _tl232292232537_
                                                             _e232297232540_
                                                             _hd232296232543_
                                                             _tl232295232545_
                                                             _e232300232548_
                                                             _hd232299232551_
                                                             _tl232298232553_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g232214232338_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232214232338_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232214232338_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g232214232338_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g232214232338_)))))
                        (let () (declare (not safe)) (_g232214232338_)))
                    (let () (declare (not safe)) (_g232214232338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232214232338_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g232214232338_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g232214232338_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g232214232338_)))))
                            (let () (declare (not safe)) (_g232214232338_)))
                        (let () (declare (not safe)) (_g232214232338_)))
                    (let () (declare (not safe)) (_g232214232338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g232214232338_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g232214232338_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop232271232473_ _target232268232468_ '())))))
                   (___match241337241338_
                    (lambda (_e232221232596_
                             _hd232220232599_
                             _tl232219232601_
                             ___splice241314241315_
                             _target232222232604_
                             _tl232224232606_)
                      (letrec ((_loop232225232609_
                                (lambda (_hd232223232612_ _arg232229232614_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232223232612_))
                                      (let ((_e232226232617_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232223232612_))))
                                        (let ((_lp-tl232228232622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232226232617_)))
                                              (_lp-hd232227232620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232226232617_))))
                                          (let ((__tmp242576
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd232227232620_
                                                         _arg232229232614_))))
                                            (declare (not safe))
                                            (_loop232225232609_
                                             _lp-tl232228232622_
                                             __tmp242576))))
                                      (let ((_arg232230232625_
                                             (reverse _arg232229232614_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl232219232601_))
                                            (let ((_e232233232628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl232219232601_))))
                                              (let ((_tl232231232633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e232233232628_)))
                                                    (_hd232232232631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e232233232628_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd232232232631_))
                                                    (let ((_e232236232636_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd232232232631_))))
                                                      (let ((_tl232234232641_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232236232636_)))
                    (_hd232235232639_
                     (let () (declare (not safe)) (##car _e232236232636_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd232235232639_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd232235232639_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl232234232641_))
                            (let ((_e232239232644_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl232234232641_))))
                              (let ((_tl232237232649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e232239232644_)))
                                    (_hd232238232647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e232239232644_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd232238232647_))
                                    (let ((_e232242232652_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd232238232647_))))
                                      (let ((_tl232240232657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e232242232652_)))
                                            (_hd232241232655_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e232242232652_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd232241232655_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd232241232655_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl232240232657_))
                                                    (let ((_e232245232660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl232240232657_))))
                                                      (let ((_tl232243232665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e232245232660_)))
                    (_hd232244232663_
                     (let () (declare (not safe)) (##car _e232245232660_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl232243232665_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl232237232649_))
                        (let ((___splice241316241317_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl232237232649_
                                  '0))))
                          (let ((_tl232248232670_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice241316241317_ '1)))
                                (_target232246232668_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice241316241317_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl232248232670_))
                                (letrec ((_loop232249232673_
                                          (lambda (_hd232247232676_
                                                   _xarg232253232678_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd232247232676_))
                                                (let ((_e232250232681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd232247232676_))))
                                                  (let ((_lp-tl232252232686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e232250232681_)))
                                                        (_lp-hd232251232684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e232250232681_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd232251232684_))
                                                        (let ((_e232257232689_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd232251232684_))))
                  (let ((_tl232255232694_
                         (let () (declare (not safe)) (##cdr _e232257232689_)))
                        (_hd232256232692_
                         (let ()
                           (declare (not safe))
                           (##car _e232257232689_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd232256232692_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd232256232692_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl232255232694_))
                                (let ((_e232260232697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl232255232694_))))
                                  (let ((_tl232258232702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e232260232697_)))
                                        (_hd232259232700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e232260232697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl232258232702_))
                                        (let ((__tmp242575
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd232259232700_
                                                       _xarg232253232678_))))
                                          (declare (not safe))
                                          (_loop232249232673_
                                           _lp-tl232252232686_
                                           __tmp242575))
                                        (___match241349241350_
                                         _e232221232596_
                                         _hd232220232599_
                                         _tl232219232601_
                                         ___splice241314241315_
                                         _target232222232604_
                                         _tl232224232606_))))
                                (___match241349241350_
                                 _e232221232596_
                                 _hd232220232599_
                                 _tl232219232601_
                                 ___splice241314241315_
                                 _target232222232604_
                                 _tl232224232606_))
                            (___match241349241350_
                             _e232221232596_
                             _hd232220232599_
                             _tl232219232601_
                             ___splice241314241315_
                             _target232222232604_
                             _tl232224232606_))
                        (___match241349241350_
                         _e232221232596_
                         _hd232220232599_
                         _tl232219232601_
                         ___splice241314241315_
                         _target232222232604_
                         _tl232224232606_))))
                (___match241349241350_
                 _e232221232596_
                 _hd232220232599_
                 _tl232219232601_
                 ___splice241314241315_
                 _target232222232604_
                 _tl232224232606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg232254232705_
                                                       (reverse _xarg232253232678_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232231232633_))
                                                      (___kont241312241313_
                                                       _xarg232254232705_
                                                       _hd232244232663_
                                                       _arg232230232625_)
                                                      (___match241349241350_
                                                       _e232221232596_
                                                       _hd232220232599_
                                                       _tl232219232601_
                                                       ___splice241314241315_
                                                       _target232222232604_
                                                       _tl232224232606_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop232249232673_
                                     _target232246232668_
                                     '())))
                                (___match241349241350_
                                 _e232221232596_
                                 _hd232220232599_
                                 _tl232219232601_
                                 ___splice241314241315_
                                 _target232222232604_
                                 _tl232224232606_))))
                        (___match241349241350_
                         _e232221232596_
                         _hd232220232599_
                         _tl232219232601_
                         ___splice241314241315_
                         _target232222232604_
                         _tl232224232606_))
                    (___match241349241350_
                     _e232221232596_
                     _hd232220232599_
                     _tl232219232601_
                     ___splice241314241315_
                     _target232222232604_
                     _tl232224232606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241349241350_
                                                     _e232221232596_
                                                     _hd232220232599_
                                                     _tl232219232601_
                                                     ___splice241314241315_
                                                     _target232222232604_
                                                     _tl232224232606_))
                                                (___match241349241350_
                                                 _e232221232596_
                                                 _hd232220232599_
                                                 _tl232219232601_
                                                 ___splice241314241315_
                                                 _target232222232604_
                                                 _tl232224232606_))
                                            (___match241349241350_
                                             _e232221232596_
                                             _hd232220232599_
                                             _tl232219232601_
                                             ___splice241314241315_
                                             _target232222232604_
                                             _tl232224232606_))))
                                    (___match241349241350_
                                     _e232221232596_
                                     _hd232220232599_
                                     _tl232219232601_
                                     ___splice241314241315_
                                     _target232222232604_
                                     _tl232224232606_))))
                            (___match241349241350_
                             _e232221232596_
                             _hd232220232599_
                             _tl232219232601_
                             ___splice241314241315_
                             _target232222232604_
                             _tl232224232606_))
                        (___match241349241350_
                         _e232221232596_
                         _hd232220232599_
                         _tl232219232601_
                         ___splice241314241315_
                         _target232222232604_
                         _tl232224232606_))
                    (___match241349241350_
                     _e232221232596_
                     _hd232220232599_
                     _tl232219232601_
                     ___splice241314241315_
                     _target232222232604_
                     _tl232224232606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241349241350_
                                                     _e232221232596_
                                                     _hd232220232599_
                                                     _tl232219232601_
                                                     ___splice241314241315_
                                                     _target232222232604_
                                                     _tl232224232606_))))
                                            (___match241349241350_
                                             _e232221232596_
                                             _hd232220232599_
                                             _tl232219232601_
                                             ___splice241314241315_
                                             _target232222232604_
                                             _tl232224232606_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232225232609_ _target232222232604_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx241310241311_))
                  (let ((_e232221232596_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx241310241311_))))
                    (let ((_tl232219232601_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232221232596_)))
                          (_hd232220232599_
                           (let ()
                             (declare (not safe))
                             (##car _e232221232596_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd232220232599_))
                          (let ((___splice241314241315_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd232220232599_
                                    '0))))
                            (let ((_tl232224232606_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice241314241315_ '1)))
                                  (_target232222232604_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice241314241315_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232224232606_))
                                  (___match241337241338_
                                   _e232221232596_
                                   _hd232220232599_
                                   _tl232219232601_
                                   ___splice241314241315_
                                   _target232222232604_
                                   _tl232224232606_)
                                  (___match241349241350_
                                   _e232221232596_
                                   _hd232220232599_
                                   _tl232219232601_
                                   ___splice241314241315_
                                   _target232222232604_
                                   _tl232224232606_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232219232601_))
                              (let ((_e232309232351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232219232601_))))
                                (let ((_tl232307232356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232309232351_)))
                                      (_hd232308232354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232309232351_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232308232354_))
                                      (let ((_e232312232359_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232308232354_))))
                                        (let ((_tl232310232364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232312232359_)))
                                              (_hd232311232362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232312232359_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd232311232362_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd232311232362_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232310232364_))
                                                      (let ((_e232315232367_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232310232364_))))
                (let ((_tl232313232372_
                       (let () (declare (not safe)) (##cdr _e232315232367_)))
                      (_hd232314232370_
                       (let () (declare (not safe)) (##car _e232315232367_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232314232370_))
                      (let ((_e232318232375_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232314232370_))))
                        (let ((_tl232316232380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232318232375_)))
                              (_hd232317232378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232318232375_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232317232378_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232317232378_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232316232380_))
                                      (let ((_e232321232383_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232316232380_))))
                                        (let ((_tl232319232388_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232321232383_)))
                                              (_hd232320232386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232321232383_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232319232388_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232313232372_))
                                                  (let ((_e232324232391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232313232372_))))
                                                    (let ((_tl232322232396_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232324232391_)))
                                                          (_hd232323232394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232324232391_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232323232394_))
                                                          (let ((_e232327232399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232323232394_))))
                    (let ((_tl232325232404_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232327232399_)))
                          (_hd232326232402_
                           (let ()
                             (declare (not safe))
                             (##car _e232327232399_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232326232402_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232326232402_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232325232404_))
                                  (let ((_e232330232407_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232325232404_))))
                                    (let ((_tl232328232412_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232330232407_)))
                                          (_hd232329232410_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232330232407_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232328232412_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232322232396_))
                                              (let ((_e232333232415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232322232396_))))
                                                (let ((_tl232331232420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232333232415_)))
                                                      (_hd232332232418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232333232415_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232331232420_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl232307232356_))
                                                          (___kont241322241323_
                                                           _hd232329232410_
                                                           _hd232320232386_
                                                           _hd232220232599_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g232214232338_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g232214232338_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g232214232338_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g232214232338_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g232214232338_)))
                              (let () (declare (not safe)) (_g232214232338_)))
                          (let () (declare (not safe)) (_g232214232338_)))))
                  (let () (declare (not safe)) (_g232214232338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232214232338_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232214232338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232214232338_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g232214232338_)))
                              (let ()
                                (declare (not safe))
                                (_g232214232338_)))))
                      (let () (declare (not safe)) (_g232214232338_)))))
              (let () (declare (not safe)) (_g232214232338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g232214232338_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g232214232338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232214232338_)))))
                              (let ()
                                (declare (not safe))
                                (_g232214232338_))))))
                  (let () (declare (not safe)) (_g232214232338_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form232014_)
        (let* ((_g232016232030_
                (lambda (_g232017232027_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232017232027_))))
               (_g232015232207_
                (lambda (_g232017232033_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232017232033_))
                      (let ((_e232022232035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232017232033_))))
                        (let ((_hd232021232038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232022232035_)))
                              (_tl232020232040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232022232035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232020232040_))
                              (let ((_e232025232043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232020232040_))))
                                (let ((_hd232024232046_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232025232043_)))
                                      (_tl232023232048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232025232043_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232023232048_))
                                      ((lambda (_L232051_ _L232052_)
                                         (let* ((___stx241432241433_ _L232052_)
                                                (_g232067232095_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx241432241433_)))))
                                           (let ((___kont241434241435_
                                                  (lambda (_L232186_)
                                                    (length (let ((__tmp242577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g232196232199_ _g232197232201_)
                             (let ()
                               (declare (not safe))
                               (cons _g232196232199_ _g232197232201_)))))
                      (declare (not safe))
                      (foldr1 __tmp242577 '() _L232186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont241438241439_
                                                  (lambda (_L232137_ _L232138_)
                                                    (let ((__tmp242578
                                                           (length (let ((__tmp242579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g232149232152_ _g232150232154_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g232149232152_
                                            _g232150232154_)))))
                             (declare (not safe))
                             (foldr1 __tmp242579 '() _L232138_)))))
              (declare (not safe))
              (cons __tmp242578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont241442241443_
                                                  (lambda (_L232100_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match241457241458_
                                                     (lambda (___splice241440241441_
                                                              _target232081232113_
                                                              _tl232083232115_)
                                                       (letrec ((_loop232084232118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232082232121_ _arg232088232123_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232082232121_))
                               (let ((_e232085232126_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232082232121_))))
                                 (let ((_lp-tl232087232131_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232085232126_)))
                                       (_lp-hd232086232129_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232085232126_))))
                                   (let ((__tmp242580
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232086232129_
                                                  _arg232088232123_))))
                                     (declare (not safe))
                                     (_loop232084232118_
                                      _lp-tl232087232131_
                                      __tmp242580))))
                               (let ((_arg232089232134_
                                      (reverse _arg232088232123_)))
                                 (___kont241438241439_
                                  _tl232083232115_
                                  _arg232089232134_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232084232118_ _target232081232113_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match241451241452_
                                                     (lambda (___splice241436241437_
                                                              _target232070232162_
                                                              _tl232072232164_)
                                                       (letrec ((_loop232073232167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd232071232170_ _arg232077232172_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd232071232170_))
                               (let ((_e232074232175_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd232071232170_))))
                                 (let ((_lp-tl232076232180_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e232074232175_)))
                                       (_lp-hd232075232178_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e232074232175_))))
                                   (let ((__tmp242581
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd232075232178_
                                                  _arg232077232172_))))
                                     (declare (not safe))
                                     (_loop232073232167_
                                      _lp-tl232076232180_
                                      __tmp242581))))
                               (let ((_arg232078232183_
                                      (reverse _arg232077232172_)))
                                 (___kont241434241435_ _arg232078232183_))))))
                 (let ()
                   (declare (not safe))
                   (_loop232073232167_ _target232070232162_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx241432241433_))
                                                   (let ((___splice241436241437_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx241432241433_
                                                             '0))))
                                                     (let ((_tl232072232164_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice241436241437_
                                                               '1)))
                                                           (_target232070232162_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice241436241437_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl232072232164_))
                                                           (___match241451241452_
                                                            ___splice241436241437_
                                                            _target232070232162_
                                                            _tl232072232164_)
                                                           (___match241457241458_
                                                            ___splice241436241437_
                                                            _target232070232162_
                                                            _tl232072232164_))))
                                                   (___kont241442241443_
                                                    ___stx241432241433_))))))
                                       _hd232024232046_
                                       _hd232021232038_)
                                      (let ()
                                        (declare (not safe))
                                        (_g232016232030_ _g232017232033_)))))
                              (let ()
                                (declare (not safe))
                                (_g232016232030_ _g232017232033_)))))
                      (let ()
                        (declare (not safe))
                        (_g232016232030_ _g232017232033_))))))
          (declare (not safe))
          (_g232015232207_ _form232014_))))
    (define gxc#lambda-expr?
      (lambda (_expr231967_)
        (let* ((___stx241460241461_ _expr231967_)
               (_g231970231980_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241460241461_)))))
          (let ((___kont241462241463_ (lambda (_L232000_) '#t))
                (___kont241464241465_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241460241461_))
                (let ((_e231975231992_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241460241461_))))
                  (let ((_tl231973231997_
                         (let () (declare (not safe)) (##cdr _e231975231992_)))
                        (_hd231974231995_
                         (let ()
                           (declare (not safe))
                           (##car _e231975231992_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231974231995_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd231974231995_))
                            (___kont241462241463_ _tl231973231997_)
                            (___kont241464241465_))
                        (___kont241464241465_))))
                (___kont241464241465_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr231920_)
        (let* ((___stx241478241479_ _expr231920_)
               (_g231923231933_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241478241479_)))))
          (let ((___kont241480241481_ (lambda (_L231953_) '#t))
                (___kont241482241483_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241478241479_))
                (let ((_e231928231945_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241478241479_))))
                  (let ((_tl231926231950_
                         (let () (declare (not safe)) (##cdr _e231928231945_)))
                        (_hd231927231948_
                         (let ()
                           (declare (not safe))
                           (##car _e231928231945_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231927231948_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd231927231948_))
                            (___kont241480241481_ _tl231926231950_)
                            (___kont241482241483_))
                        (___kont241482241483_))))
                (___kont241482241483_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr231789_)
        (let* ((___stx241496241497_ _expr231789_)
               (_g231792231822_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241496241497_)))))
          (let ((___kont241498241499_
                 (lambda (_L231890_ _L231891_ _L231892_)
                   (if (let () (declare (not safe)) (gx#identifier? _L231892_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L231891_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L231890_))
                           '#f)
                       '#f)))
                (___kont241500241501_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241496241497_))
                (let ((_e231799231834_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241496241497_))))
                  (let ((_tl231797231839_
                         (let () (declare (not safe)) (##cdr _e231799231834_)))
                        (_hd231798231837_
                         (let ()
                           (declare (not safe))
                           (##car _e231799231834_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231798231837_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd231798231837_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231797231839_))
                                (let ((_e231802231842_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231797231839_))))
                                  (let ((_tl231800231847_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231802231842_)))
                                        (_hd231801231845_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231802231842_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231801231845_))
                                        (let ((_e231805231850_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231801231845_))))
                                          (let ((_tl231803231855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231805231850_)))
                                                (_hd231804231853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231805231850_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231804231853_))
                                                (let ((_e231808231858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231804231853_))))
                                                  (let ((_tl231806231863_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231808231858_)))
                                                        (_hd231807231861_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231808231858_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231807231861_))
                                                        (let ((_e231811231866_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231807231861_))))
                  (let ((_tl231809231871_
                         (let () (declare (not safe)) (##cdr _e231811231866_)))
                        (_hd231810231869_
                         (let ()
                           (declare (not safe))
                           (##car _e231811231866_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231809231871_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231806231863_))
                            (let ((_e231814231874_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231806231863_))))
                              (let ((_tl231812231879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231814231874_)))
                                    (_hd231813231877_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231814231874_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231812231879_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231803231855_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231800231847_))
                                            (let ((_e231817231882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231800231847_))))
                                              (let ((_tl231815231887_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231817231882_)))
                                                    (_hd231816231885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231817231882_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231815231887_))
                                                    (___kont241498241499_
                                                     _hd231816231885_
                                                     _hd231813231877_
                                                     _hd231810231869_)
                                                    (___kont241500241501_))))
                                            (___kont241500241501_))
                                        (___kont241500241501_))
                                    (___kont241500241501_))))
                            (___kont241500241501_))
                        (___kont241500241501_))))
                (___kont241500241501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241500241501_))))
                                        (___kont241500241501_))))
                                (___kont241500241501_))
                            (___kont241500241501_))
                        (___kont241500241501_))))
                (___kont241500241501_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr231114_)
        (let* ((___stx241558241559_ _expr231114_)
               (_g231117231275_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241558241559_)))))
          (let ((___kont241560241561_
                 (lambda (_L231663_
                          _L231664_
                          _L231665_
                          _L231666_
                          _L231667_
                          _L231668_
                          _L231669_
                          _L231670_
                          _L231671_
                          _L231672_
                          _L231673_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L231670_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L231666_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L231665_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L231673_
                                      _L231664_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L231672_
                                          _L231669_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L231667_
                                              _L231663_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L231671_
                                              _L231668_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont241562241563_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241558241559_))
                (let ((_e231132231287_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241558241559_))))
                  (let ((_tl231130231292_
                         (let () (declare (not safe)) (##cdr _e231132231287_)))
                        (_hd231131231290_
                         (let ()
                           (declare (not safe))
                           (##car _e231132231287_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231131231290_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd231131231290_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231130231292_))
                                (let ((_e231135231295_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231130231292_))))
                                  (let ((_tl231133231300_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231135231295_)))
                                        (_hd231134231298_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231135231295_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231134231298_))
                                        (let ((_e231138231303_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231134231298_))))
                                          (let ((_tl231136231308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231138231303_)))
                                                (_hd231137231306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231138231303_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231137231306_))
                                                (let ((_e231141231311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231137231306_))))
                                                  (let ((_tl231139231316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231141231311_)))
                                                        (_hd231140231314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231141231311_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231140231314_))
                                                        (let ((_e231144231319_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231140231314_))))
                  (let ((_tl231142231324_
                         (let () (declare (not safe)) (##cdr _e231144231319_)))
                        (_hd231143231322_
                         (let ()
                           (declare (not safe))
                           (##car _e231144231319_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231142231324_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231139231316_))
                            (let ((_e231147231327_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231139231316_))))
                              (let ((_tl231145231332_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231147231327_)))
                                    (_hd231146231330_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231147231327_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231146231330_))
                                    (let ((_e231150231335_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231146231330_))))
                                      (let ((_tl231148231340_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231150231335_)))
                                            (_hd231149231338_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231150231335_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231149231338_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd231149231338_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231148231340_))
                                                    (let ((_e231153231343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231148231340_))))
                                                      (let ((_tl231151231348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231153231343_)))
                    (_hd231152231346_
                     (let () (declare (not safe)) (##car _e231153231343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231152231346_))
                    (let ((_e231156231351_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231152231346_))))
                      (let ((_tl231154231356_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231156231351_)))
                            (_hd231155231354_
                             (let ()
                               (declare (not safe))
                               (##car _e231156231351_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231155231354_))
                            (let ((_e231159231359_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231155231354_))))
                              (let ((_tl231157231364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231159231359_)))
                                    (_hd231158231362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231159231359_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231158231362_))
                                    (let ((_e231162231367_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231158231362_))))
                                      (let ((_tl231160231372_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231162231367_)))
                                            (_hd231161231370_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231162231367_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231160231372_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231157231364_))
                                                (let ((_e231165231375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231157231364_))))
                                                  (let ((_tl231163231380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231165231375_)))
                                                        (_hd231164231378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231165231375_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231163231380_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl231154231356_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231151231348_))
                        (let ((_e231168231383_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231151231348_))))
                          (let ((_tl231166231388_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231168231383_)))
                                (_hd231167231386_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231168231383_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231167231386_))
                                (let ((_e231171231391_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231167231386_))))
                                  (let ((_tl231169231396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231171231391_)))
                                        (_hd231170231394_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231171231391_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231170231394_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd231170231394_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231169231396_))
                                                (let ((_e231174231399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231169231396_))))
                                                  (let ((_tl231172231404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231174231399_)))
                                                        (_hd231173231402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231174231399_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231173231402_))
                                                        (let ((_e231177231407_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231173231402_))))
                  (let ((_tl231175231412_
                         (let () (declare (not safe)) (##cdr _e231177231407_)))
                        (_hd231176231410_
                         (let ()
                           (declare (not safe))
                           (##car _e231177231407_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231172231404_))
                        (let ((_e231180231415_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231172231404_))))
                          (let ((_tl231178231420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231180231415_)))
                                (_hd231179231418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231180231415_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231179231418_))
                                (let ((_e231183231423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231179231418_))))
                                  (let ((_tl231181231428_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231183231423_)))
                                        (_hd231182231426_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231183231423_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231182231426_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd231182231426_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231181231428_))
                                                (let ((_e231186231431_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231181231428_))))
                                                  (let ((_tl231184231436_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231186231431_)))
                                                        (_hd231185231434_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231186231431_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd231185231434_))
                                                        (let ((_e231189231439_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd231185231434_))))
                  (let ((_tl231187231444_
                         (let () (declare (not safe)) (##cdr _e231189231439_)))
                        (_hd231188231442_
                         (let ()
                           (declare (not safe))
                           (##car _e231189231439_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231188231442_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231188231442_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231187231444_))
                                (let ((_e231192231447_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231187231444_))))
                                  (let ((_tl231190231452_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231192231447_)))
                                        (_hd231191231450_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231192231447_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231190231452_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231184231436_))
                                            (let ((_e231195231455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231184231436_))))
                                              (let ((_tl231193231460_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231195231455_)))
                                                    (_hd231194231458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231195231455_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231194231458_))
                                                    (let ((_e231198231463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231194231458_))))
                                                      (let ((_tl231196231468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231198231463_)))
                    (_hd231197231466_
                     (let () (declare (not safe)) (##car _e231198231463_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231197231466_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231197231466_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231196231468_))
                            (let ((_e231201231471_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231196231468_))))
                              (let ((_tl231199231476_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231201231471_)))
                                    (_hd231200231474_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231201231471_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231199231476_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231193231460_))
                                        (let ((_e231204231479_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231193231460_))))
                                          (let ((_tl231202231484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231204231479_)))
                                                (_hd231203231482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231204231479_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231203231482_))
                                                (let ((_e231207231487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231203231482_))))
                                                  (let ((_tl231205231492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231207231487_)))
                                                        (_hd231206231490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231207231487_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd231206231490_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd231206231490_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl231205231492_))
                        (let ((_e231210231495_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231205231492_))))
                          (let ((_tl231208231500_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231210231495_)))
                                (_hd231209231498_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231210231495_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231208231500_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231178231420_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231166231388_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231145231332_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231136231308_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231133231300_))
                                                    (let ((_e231213231503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231133231300_))))
                                                      (let ((_tl231211231508_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231213231503_)))
                    (_hd231212231506_
                     (let () (declare (not safe)) (##car _e231213231503_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231212231506_))
                    (let ((_e231216231511_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231212231506_))))
                      (let ((_tl231214231516_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231216231511_)))
                            (_hd231215231514_
                             (let ()
                               (declare (not safe))
                               (##car _e231216231511_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231215231514_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd231215231514_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231214231516_))
                                    (let ((_e231219231519_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231214231516_))))
                                      (let ((_tl231217231524_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231219231519_)))
                                            (_hd231218231522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231219231519_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231217231524_))
                                            (let ((_e231222231527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231217231524_))))
                                              (let ((_tl231220231532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231222231527_)))
                                                    (_hd231221231530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231222231527_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231221231530_))
                                                    (let ((_e231225231535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231221231530_))))
                                                      (let ((_tl231223231540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231225231535_)))
                    (_hd231224231538_
                     (let () (declare (not safe)) (##car _e231225231535_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231224231538_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231224231538_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231223231540_))
                            (let ((_e231228231543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231223231540_))))
                              (let ((_tl231226231548_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231228231543_)))
                                    (_hd231227231546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231228231543_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231227231546_))
                                    (let ((_e231231231551_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231227231546_))))
                                      (let ((_tl231229231556_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231231231551_)))
                                            (_hd231230231554_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231231231551_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231230231554_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231230231554_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231229231556_))
                                                    (let ((_e231234231559_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231229231556_))))
                                                      (let ((_tl231232231564_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231234231559_)))
                    (_hd231233231562_
                     (let () (declare (not safe)) (##car _e231234231559_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231232231564_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231226231548_))
                        (let ((_e231237231567_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231226231548_))))
                          (let ((_tl231235231572_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231237231567_)))
                                (_hd231236231570_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231237231567_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231236231570_))
                                (let ((_e231240231575_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231236231570_))))
                                  (let ((_tl231238231580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231240231575_)))
                                        (_hd231239231578_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231240231575_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231239231578_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231239231578_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231238231580_))
                                                (let ((_e231243231583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231238231580_))))
                                                  (let ((_tl231241231588_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231243231583_)))
                                                        (_hd231242231586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231243231583_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231241231588_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl231235231572_))
                                                            (let ((_e231246231591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl231235231572_))))
                      (let ((_tl231244231596_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231246231591_)))
                            (_hd231245231594_
                             (let ()
                               (declare (not safe))
                               (##car _e231246231591_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd231245231594_))
                            (let ((_e231249231599_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd231245231594_))))
                              (let ((_tl231247231604_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231249231599_)))
                                    (_hd231248231602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231249231599_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd231248231602_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd231248231602_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231247231604_))
                                            (let ((_e231252231607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231247231604_))))
                                              (let ((_tl231250231612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231252231607_)))
                                                    (_hd231251231610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231252231607_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231250231612_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231244231596_))
                                                        (let ((_e231255231615_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231244231596_))))
                  (let ((_tl231253231620_
                         (let () (declare (not safe)) (##cdr _e231255231615_)))
                        (_hd231254231618_
                         (let ()
                           (declare (not safe))
                           (##car _e231255231615_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231254231618_))
                        (let ((_e231258231623_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231254231618_))))
                          (let ((_tl231256231628_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231258231623_)))
                                (_hd231257231626_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231258231623_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd231257231626_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd231257231626_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231256231628_))
                                        (let ((_e231261231631_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231256231628_))))
                                          (let ((_tl231259231636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231261231631_)))
                                                (_hd231260231634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231261231631_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231259231636_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231253231620_))
                                                    (let ((_e231264231639_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231253231620_))))
                                                      (let ((_tl231262231644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231264231639_)))
                    (_hd231263231642_
                     (let () (declare (not safe)) (##car _e231264231639_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd231263231642_))
                    (let ((_e231267231647_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd231263231642_))))
                      (let ((_tl231265231652_
                             (let ()
                               (declare (not safe))
                               (##cdr _e231267231647_)))
                            (_hd231266231650_
                             (let ()
                               (declare (not safe))
                               (##car _e231267231647_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd231266231650_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd231266231650_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl231265231652_))
                                    (let ((_e231270231655_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl231265231652_))))
                                      (let ((_tl231268231660_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231270231655_)))
                                            (_hd231269231658_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231270231655_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl231268231660_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231262231644_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl231220231532_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231211231508_))
                                                        (___kont241560241561_
                                                         _hd231269231658_
                                                         _hd231260231634_
                                                         _hd231242231586_
                                                         _hd231233231562_
                                                         _hd231218231522_
                                                         _hd231209231498_
                                                         _hd231200231474_
                                                         _hd231191231450_
                                                         _hd231176231410_
                                                         _hd231161231370_
                                                         _hd231143231322_)
                                                        (___kont241562241563_))
                                                    (___kont241562241563_))
                                                (___kont241562241563_))
                                            (___kont241562241563_))))
                                    (___kont241562241563_))
                                (___kont241562241563_))
                            (___kont241562241563_))))
                    (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))
                                                (___kont241562241563_))))
                                        (___kont241562241563_))
                                    (___kont241562241563_))
                                (___kont241562241563_))))
                        (___kont241562241563_))))
                (___kont241562241563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))))
                                            (___kont241562241563_))
                                        (___kont241562241563_))
                                    (___kont241562241563_))))
                            (___kont241562241563_))))
                    (___kont241562241563_))
                (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241562241563_))
                                            (___kont241562241563_))
                                        (___kont241562241563_))))
                                (___kont241562241563_))))
                        (___kont241562241563_))
                    (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))
                                                (___kont241562241563_))
                                            (___kont241562241563_))))
                                    (___kont241562241563_))))
                            (___kont241562241563_))
                        (___kont241562241563_))
                    (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))))
                                            (___kont241562241563_))))
                                    (___kont241562241563_))
                                (___kont241562241563_))
                            (___kont241562241563_))))
                    (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))
                                                (___kont241562241563_))
                                            (___kont241562241563_))
                                        (___kont241562241563_))
                                    (___kont241562241563_))
                                (___kont241562241563_))))
                        (___kont241562241563_))
                    (___kont241562241563_))
                (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241562241563_))))
                                        (___kont241562241563_))
                                    (___kont241562241563_))))
                            (___kont241562241563_))
                        (___kont241562241563_))
                    (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))))
                                            (___kont241562241563_))
                                        (___kont241562241563_))))
                                (___kont241562241563_))
                            (___kont241562241563_))
                        (___kont241562241563_))))
                (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241562241563_))
                                            (___kont241562241563_))
                                        (___kont241562241563_))))
                                (___kont241562241563_))))
                        (___kont241562241563_))))
                (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241562241563_))
                                            (___kont241562241563_))
                                        (___kont241562241563_))))
                                (___kont241562241563_))))
                        (___kont241562241563_))
                    (___kont241562241563_))
                (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241562241563_))
                                            (___kont241562241563_))))
                                    (___kont241562241563_))))
                            (___kont241562241563_))))
                    (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241562241563_))
                                                (___kont241562241563_))
                                            (___kont241562241563_))))
                                    (___kont241562241563_))))
                            (___kont241562241563_))
                        (___kont241562241563_))))
                (___kont241562241563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont241562241563_))))
                                        (___kont241562241563_))))
                                (___kont241562241563_))
                            (___kont241562241563_))
                        (___kont241562241563_))))
                (___kont241562241563_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx230856_ _id230857_ _clauses230858_ _gensym?230859_)
        (let _lp230861_ ((_rest230863_ _clauses230858_)
                         (_ids230864_ '())
                         (_impls230865_ '())
                         (_clauses230866_ '()))
          (let* ((_rest230867230875_ _rest230863_)
                 (_else230869230883_
                  (lambda ()
                    (values (reverse _ids230864_)
                            (reverse _impls230865_)
                            (reverse _clauses230866_))))
                 (_K230871231088_
                  (lambda (_rest230886_ _clause230887_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause230887_))
                        (let ((__tmp242637
                               (let ()
                                 (declare (not safe))
                                 (cons _clause230887_ _clauses230866_))))
                          (declare (not safe))
                          (_lp230861_
                           _rest230886_
                           _ids230864_
                           _impls230865_
                           __tmp242637))
                        (let* ((_g230889230900_
                                (lambda (_g230890230897_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g230890230897_))))
                               (_g230888231085_
                                (lambda (_g230890230903_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g230890230903_))
                                      (let ((_e230895230905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g230890230903_))))
                                        (let ((_hd230894230908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230895230905_)))
                                              (_tl230893230910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230895230905_))))
                                          ((lambda (_L230913_ _L230914_)
                                             (let* ((_id230931_
                                                     (let ((__tmp242584
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id230857_)))
                                                           (__tmp242583
                                                            (length _clauses230866_))
                                                           (__tmp242582
                                                            (if _gensym?230859_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp242584
                                                        '"__"
                                                        __tmp242583
                                                        __tmp242582)))
                                                    (_id230933_
                                                     (let ((__tmp242585
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx230856_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id230931_
                                                        __tmp242585)))
                                                    (_impl230935_
                                                     (let ((__tmp242586
                                                            (let ((__tmp242588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp242587
                           (let ()
                             (declare (not safe))
                             (cons _L230914_ _L230913_))))
                      (declare (not safe))
                      (cons __tmp242588 __tmp242587))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp242586 _stx230856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause231082_
                                                     (let* ((___stx241942241943_
                                                             _L230914_)
                                                            (_g230939230967_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx241942241943_)))))
               (let ((___kont241944241945_
                      (lambda (_L231061_)
                        (let ((__tmp242589
                               (let ((__tmp242590
                                      (let ((__tmp242591
                                             (let ((__tmp242592
                                                    (let ((__tmp242598
                                                           (let ((__tmp242599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id230933_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp242599)))
                  (__tmp242593
                   (let ((__tmp242594
                          (lambda (_g231071231074_ _g231072231076_)
                            (let ((__tmp242595
                                   (let ((__tmp242597
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp242596
                                          (let ()
                                            (declare (not safe))
                                            (cons _g231071231074_ '()))))
                                     (declare (not safe))
                                     (cons __tmp242597 __tmp242596))))
                              (declare (not safe))
                              (cons __tmp242595 _g231072231076_)))))
                     (declare (not safe))
                     (foldr1 __tmp242594 '() _L231061_))))
              (declare (not safe))
              (cons __tmp242598 __tmp242593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp242592))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp242591
                                         _stx230856_))))
                                 (declare (not safe))
                                 (cons __tmp242590 '()))))
                          (declare (not safe))
                          (cons _L230914_ __tmp242589))))
                     (___kont241948241949_
                      (lambda (_L231012_ _L231013_)
                        (let ((__tmp242600
                               (let ((__tmp242601
                                      (let ((__tmp242602
                                             (let ((__tmp242603
                                                    (let ((__tmp242617
                                                           (let ((__tmp242618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp242618)))
                  (__tmp242604
                   (let ((__tmp242615
                          (let ((__tmp242616
                                 (let ()
                                   (declare (not safe))
                                   (cons _id230933_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp242616)))
                         (__tmp242605
                          (let ((__tmp242611
                                 (let ((__tmp242612
                                        (let ((__tmp242614
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp242613
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L231012_ '()))))
                                          (declare (not safe))
                                          (cons __tmp242614 __tmp242613))))
                                   (declare (not safe))
                                   (cons __tmp242612 '())))
                                (__tmp242606
                                 (let ((__tmp242607
                                        (lambda (_g231024231027_
                                                 _g231025231029_)
                                          (let ((__tmp242608
                                                 (let ((__tmp242610
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp242609
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g231024231027_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp242610
                                                         __tmp242609))))
                                            (declare (not safe))
                                            (cons __tmp242608
                                                  _g231025231029_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp242607 '() _L231013_))))
                            (declare (not safe))
                            (foldr1 cons __tmp242611 __tmp242606))))
                     (declare (not safe))
                     (cons __tmp242615 __tmp242605))))
              (declare (not safe))
              (cons __tmp242617 __tmp242604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp242603))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp242602
                                         _stx230856_))))
                                 (declare (not safe))
                                 (cons __tmp242601 '()))))
                          (declare (not safe))
                          (cons _L230914_ __tmp242600))))
                     (___kont241952241953_
                      (lambda (_L230972_)
                        (let ((__tmp242619
                               (let ((__tmp242620
                                      (let ((__tmp242621
                                             (let ((__tmp242622
                                                    (let ((__tmp242630
                                                           (let ((__tmp242631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp242631)))
                  (__tmp242623
                   (let ((__tmp242628
                          (let ((__tmp242629
                                 (let ()
                                   (declare (not safe))
                                   (cons _id230933_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp242629)))
                         (__tmp242624
                          (let ((__tmp242625
                                 (let ((__tmp242627
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp242626
                                        (let ()
                                          (declare (not safe))
                                          (cons _L230972_ '()))))
                                   (declare (not safe))
                                   (cons __tmp242627 __tmp242626))))
                            (declare (not safe))
                            (cons __tmp242625 '()))))
                     (declare (not safe))
                     (cons __tmp242628 __tmp242624))))
              (declare (not safe))
              (cons __tmp242630 __tmp242623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp242622))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp242621
                                         _stx230856_))))
                                 (declare (not safe))
                                 (cons __tmp242620 '()))))
                          (declare (not safe))
                          (cons _L230914_ __tmp242619)))))
                 (let* ((___match241967241968_
                         (lambda (___splice241950241951_
                                  _target230953230988_
                                  _tl230955230990_)
                           (letrec ((_loop230956230993_
                                     (lambda (_hd230954230996_
                                              _arg230960230998_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd230954230996_))
                                           (let ((_e230957231001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd230954230996_))))
                                             (let ((_lp-tl230959231006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230957231001_)))
                                                   (_lp-hd230958231004_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230957231001_))))
                                               (let ((__tmp242632
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd230958231004_
                                                              _arg230960230998_))))
                                                 (declare (not safe))
                                                 (_loop230956230993_
                                                  _lp-tl230959231006_
                                                  __tmp242632))))
                                           (let ((_arg230961231009_
                                                  (reverse _arg230960230998_)))
                                             (___kont241948241949_
                                              _tl230955230990_
                                              _arg230961231009_))))))
                             (let ()
                               (declare (not safe))
                               (_loop230956230993_
                                _target230953230988_
                                '())))))
                        (___match241961241962_
                         (lambda (___splice241946241947_
                                  _target230942231037_
                                  _tl230944231039_)
                           (letrec ((_loop230945231042_
                                     (lambda (_hd230943231045_
                                              _arg230949231047_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd230943231045_))
                                           (let ((_e230946231050_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd230943231045_))))
                                             (let ((_lp-tl230948231055_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230946231050_)))
                                                   (_lp-hd230947231053_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230946231050_))))
                                               (let ((__tmp242633
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd230947231053_
                                                              _arg230949231047_))))
                                                 (declare (not safe))
                                                 (_loop230945231042_
                                                  _lp-tl230948231055_
                                                  __tmp242633))))
                                           (let ((_arg230950231058_
                                                  (reverse _arg230949231047_)))
                                             (___kont241944241945_
                                              _arg230950231058_))))))
                             (let ()
                               (declare (not safe))
                               (_loop230945231042_
                                _target230942231037_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx241942241943_))
                       (let ((___splice241946241947_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx241942241943_
                                 '0))))
                         (let ((_tl230944231039_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice241946241947_ '1)))
                               (_target230942231037_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice241946241947_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl230944231039_))
                               (___match241961241962_
                                ___splice241946241947_
                                _target230942231037_
                                _tl230944231039_)
                               (___match241967241968_
                                ___splice241946241947_
                                _target230942231037_
                                _tl230944231039_))))
                       (___kont241952241953_ ___stx241942241943_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp242636
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id230933_
                                                              _ids230864_)))
                                                     (__tmp242635
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl230935_
                                                              _impls230865_)))
                                                     (__tmp242634
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause231082_
                                                              _clauses230866_))))
                                                 (declare (not safe))
                                                 (_lp230861_
                                                  _rest230886_
                                                  __tmp242636
                                                  __tmp242635
                                                  __tmp242634))))
                                           _tl230893230910_
                                           _hd230894230908_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g230889230900_ _g230890230903_))))))
                          (declare (not safe))
                          (_g230888231085_ _clause230887_))))))
            (if (let () (declare (not safe)) (##pair? _rest230867230875_))
                (let ((_hd230872231091_
                       (let ()
                         (declare (not safe))
                         (##car _rest230867230875_)))
                      (_tl230873231093_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest230867230875_))))
                  (let* ((_clause231096_ _hd230872231091_)
                         (_rest231098_ _tl230873231093_))
                    (declare (not safe))
                    (_K230871231088_ _rest231098_ _clause231096_)))
                (let () (declare (not safe)) (_else230869230883_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx231103_ _id231104_ _clauses231105_)
        (let ((_gensym?231107_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx231103_
           _id231104_
           _clauses231105_
           _gensym?231107_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g242639_
        (let ((_g242638_ (let () (declare (not safe)) (##length _g242639_))))
          (cond ((let () (declare (not safe)) (##fx= _g242638_ 3))
                 (apply (lambda (_stx231103_ _id231104_ _clauses231105_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx231103_
                             _id231104_
                             _clauses231105_)))
                        _g242639_))
                ((let () (declare (not safe)) (##fx= _g242638_ 4))
                 (apply (lambda (_stx231109_
                                 _id231110_
                                 _clauses231111_
                                 _gensym?231112_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx231109_
                             _id231110_
                             _clauses231111_
                             _gensym?231112_)))
                        _g242639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g242639_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx230133_)
        (letrec ((_case-lambda-clause-def230135_
                  (lambda (_id230852_ _impl230853_)
                    (let ((__tmp242640
                           (let ((__tmp242641
                                  (let ((__tmp242644
                                         (let ()
                                           (declare (not safe))
                                           (cons _id230852_ '())))
                                        (__tmp242642
                                         (let ((__tmp242643
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl230853_))))
                                           (declare (not safe))
                                           (cons __tmp242643 '()))))
                                    (declare (not safe))
                                    (cons __tmp242644 __tmp242642))))
                             (declare (not safe))
                             (cons '%#define-values __tmp242641))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp242640 _stx230133_))))
                 (_opt-lambda-dispatch-name230136_
                  (lambda (_id230848_)
                    (if (uninterned-symbol? _id230848_)
                        (let ((_str230850_ (symbol->string _id230848_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str230850_))
                              '"%"
                              _id230848_))
                        _id230848_)))
                 (_kw-lambda-dispatch-name230137_
                  (lambda (_id230843_ _name230844_)
                    (if (uninterned-symbol? _id230843_)
                        (let ((_str230846_ (symbol->string _id230843_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str230846_))
                              _name230844_
                              _id230843_))
                        _id230843_))))
          (let* ((___stx241990241991_ _stx230133_)
                 (_g230142230201_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241990241991_)))))
            (let ((___kont241992241993_
                   (lambda (_L230752_ _L230753_)
                     (let* ((___stx241970241971_ _L230752_)
                            (_g230770230784_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx241970241971_)))))
                       (let ((___kont241972241973_
                              (lambda (_L230828_) _stx230133_))
                             (___kont241974241975_
                              (lambda (_L230797_)
                                (let ((_g242645_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx230133_
                                          _L230753_
                                          _L230797_))))
                                  (begin
                                    (let ((_g242646_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g242645_)
                                                 (##vector-length _g242645_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g242646_ 3)))
                                          (error "Context expects 3 values"
                                                 _g242646_)))
                                    (let ((_ids230807_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g242645_ 0)))
                                          (_impls230808_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g242645_ 1)))
                                          (_clauses230809_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g242645_ 2))))
                                      (let* ((_g242647_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids230807_))
                                             (_defs230812_
                                              (map _case-lambda-clause-def230135_
                                                   _ids230807_
                                                   _impls230808_)))
                                        (let ((__tmp242649
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L230753_)))
                                              (__tmp242648
                                               (map gxc#identifier-symbol
                                                    _ids230807_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp242649
                                           '" => "
                                           __tmp242648))
                                        (let ((__tmp242650
                                               (let ((__tmp242651
                                                      (let ((__tmp242652
                                                             (let ((__tmp242653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp242654
                                   (let ((__tmp242655
                                          (let ((__tmp242660
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L230753_ '())))
                                                (__tmp242656
                                                 (let ((__tmp242657
                                                        (let ((__tmp242659
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses230809_)))
                      (__tmp242658
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp242659 __tmp242658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp242657 '()))))
                                            (declare (not safe))
                                            (cons __tmp242660 __tmp242656))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp242655))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp242654
                               _stx230133_))))
                       (declare (not safe))
                       (cons __tmp242653 '()))))
                (declare (not safe))
                (foldr1 cons __tmp242652 _defs230812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp242651))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp242650
                                           _stx230133_)))))))))
                         (let ((___match241981241982_
                                (lambda (_e230775230820_
                                         _hd230774230823_
                                         _tl230773230825_)
                                  (let ((_L230828_ _tl230773230825_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L230828_))
                                        (___kont241972241973_ _L230828_)
                                        (___kont241974241975_
                                         _tl230773230825_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx241970241971_))
                               (let ((_e230775230820_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx241970241971_))))
                                 (let ((_tl230773230825_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230775230820_)))
                                       (_hd230774230823_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230775230820_))))
                                   (___match241981241982_
                                    _e230775230820_
                                    _hd230774230823_
                                    _tl230773230825_)))
                               (let ()
                                 (declare (not safe))
                                 (_g230770230784_))))))))
                  (___kont241994241995_
                   (lambda (_L230570_ _L230571_)
                     (let* ((_g230587230617_
                             (lambda (_g230588230614_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g230588230614_))))
                            (_g230586230712_
                             (lambda (_g230588230620_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g230588230620_))
                                   (let ((_e230594230622_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g230588230620_))))
                                     (let ((_hd230593230625_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e230594230622_)))
                                           (_tl230592230627_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e230594230622_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl230592230627_))
                                           (let ((_e230597230630_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl230592230627_))))
                                             (let ((_hd230596230633_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230597230630_)))
                                                   (_tl230595230635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230597230630_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230596230633_))
                                                   (let ((_e230600230638_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230596230633_))))
                                                     (let ((_hd230599230641_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230600230638_)))
                                                           (_tl230598230643_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230600230638_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd230599230641_))
                                                           (let ((_e230603230646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd230599230641_))))
                     (let ((_hd230602230649_
                            (let ()
                              (declare (not safe))
                              (##car _e230603230646_)))
                           (_tl230601230651_
                            (let ()
                              (declare (not safe))
                              (##cdr _e230603230646_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd230602230649_))
                           (let ((_e230606230654_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd230602230649_))))
                             (let ((_hd230605230657_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e230606230654_)))
                                   (_tl230604230659_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e230606230654_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl230604230659_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl230601230651_))
                                       (let ((_e230609230662_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl230601230651_))))
                                         (let ((_hd230608230665_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230609230662_)))
                                               (_tl230607230667_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230609230662_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl230607230667_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl230598230643_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230595230635_))
                                                       (let ((_e230612230670_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230595230635_))))
                 (let ((_hd230611230673_
                        (let () (declare (not safe)) (##car _e230612230670_)))
                       (_tl230610230675_
                        (let () (declare (not safe)) (##cdr _e230612230670_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl230610230675_))
                       ((lambda (_L230678_ _L230679_ _L230680_)
                          (let* ((_lambda-id230704_
                                  (let ((__tmp242663
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L230571_)))
                                        (__tmp242661
                                         (let ((__tmp242662
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L230680_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name230136_
                                            __tmp242662))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp242663
                                     '"__"
                                     __tmp242661)))
                                 (_lambda-id230706_
                                  (let ((__tmp242664
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx230133_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id230704_
                                     __tmp242664)))
                                 (_g242665_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id230706_)))
                                 (_new-case-lambda-expr230709_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L230678_
                                     _L230680_
                                     _lambda-id230706_))))
                            (let ((__tmp242667
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L230571_)))
                                  (__tmp242666
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id230706_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp242667
                               '" => "
                               __tmp242666))
                            (let ((__tmp242668
                                   (let ((__tmp242669
                                          (let ((__tmp242677
                                                 (let ((__tmp242678
                                                        (let ((__tmp242679
                                                               (let ((__tmp242682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id230706_ '())))
                             (__tmp242680
                              (let ((__tmp242681
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L230679_))))
                                (declare (not safe))
                                (cons __tmp242681 '()))))
                         (declare (not safe))
                         (cons __tmp242682 __tmp242680))))
                  (declare (not safe))
                  (cons '%#define-values __tmp242679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp242678
                                                    _stx230133_)))
                                                (__tmp242670
                                                 (let ((__tmp242671
                                                        (let ((__tmp242672
                                                               (let ((__tmp242673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp242674
                                     (let ((__tmp242676
                                            (let ()
                                              (declare (not safe))
                                              (cons _L230571_ '())))
                                           (__tmp242675
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr230709_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp242676 __tmp242675))))
                                (declare (not safe))
                                (cons '%#define-values __tmp242674))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp242673 _stx230133_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp242672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp242671 '()))))
                                            (declare (not safe))
                                            (cons __tmp242677 __tmp242670))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp242669))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp242668
                               _stx230133_))))
                        _hd230611230673_
                        _hd230608230665_
                        _hd230605230657_)
                       (let ()
                         (declare (not safe))
                         (_g230587230617_ _g230588230620_)))))
               (let () (declare (not safe)) (_g230587230617_ _g230588230620_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230587230617_
                                                      _g230588230620_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230587230617_
                                                  _g230588230620_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230587230617_ _g230588230620_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230587230617_ _g230588230620_)))))
                           (let ()
                             (declare (not safe))
                             (_g230587230617_ _g230588230620_)))))
                   (let ()
                     (declare (not safe))
                     (_g230587230617_ _g230588230620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230587230617_
                                                      _g230588230620_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230587230617_
                                              _g230588230620_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g230587230617_ _g230588230620_))))))
                       (declare (not safe))
                       (_g230586230712_ _L230570_))))
                  (___kont241996241997_
                   (lambda (_L230284_ _L230285_)
                     (let* ((_g230301230354_
                             (lambda (_g230302230351_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g230302230351_))))
                            (_g230300230530_
                             (lambda (_g230302230357_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g230302230357_))
                                   (let ((_e230310230359_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g230302230357_))))
                                     (let ((_hd230309230362_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e230310230359_)))
                                           (_tl230308230364_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e230310230359_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl230308230364_))
                                           (let ((_e230313230367_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl230308230364_))))
                                             (let ((_hd230312230370_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e230313230367_)))
                                                   (_tl230311230372_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e230313230367_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd230312230370_))
                                                   (let ((_e230316230375_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd230312230370_))))
                                                     (let ((_hd230315230378_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230316230375_)))
                                                           (_tl230314230380_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230316230375_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd230315230378_))
                                                           (let ((_e230319230383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd230315230378_))))
                     (let ((_hd230318230386_
                            (let ()
                              (declare (not safe))
                              (##car _e230319230383_)))
                           (_tl230317230388_
                            (let ()
                              (declare (not safe))
                              (##cdr _e230319230383_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd230318230386_))
                           (let ((_e230322230391_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd230318230386_))))
                             (let ((_hd230321230394_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e230322230391_)))
                                   (_tl230320230396_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e230322230391_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl230320230396_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl230317230388_))
                                       (let ((_e230325230399_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl230317230388_))))
                                         (let ((_hd230324230402_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230325230399_)))
                                               (_tl230323230404_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230325230399_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd230324230402_))
                                               (let ((_e230328230407_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd230324230402_))))
                                                 (let ((_hd230327230410_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e230328230407_)))
                                                       (_tl230326230412_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e230328230407_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl230326230412_))
                                                       (let ((_e230331230415_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl230326230412_))))
                 (let ((_hd230330230418_
                        (let () (declare (not safe)) (##car _e230331230415_)))
                       (_tl230329230420_
                        (let () (declare (not safe)) (##cdr _e230331230415_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd230330230418_))
                       (let ((_e230334230423_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd230330230418_))))
                         (let ((_hd230333230426_
                                (let ()
                                  (declare (not safe))
                                  (##car _e230334230423_)))
                               (_tl230332230428_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e230334230423_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230333230426_))
                               (let ((_e230337230431_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230333230426_))))
                                 (let ((_hd230336230434_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230337230431_)))
                                       (_tl230335230436_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230337230431_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd230336230434_))
                                       (let ((_e230340230439_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd230336230434_))))
                                         (let ((_hd230339230442_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e230340230439_)))
                                               (_tl230338230444_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e230340230439_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl230338230444_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl230335230436_))
                                                   (let ((_e230343230447_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl230335230436_))))
                                                     (let ((_hd230342230450_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e230343230447_)))
                                                           (_tl230341230452_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e230343230447_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230341230452_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl230332230428_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl230329230420_))
                           (let ((_e230346230455_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl230329230420_))))
                             (let ((_hd230345230458_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e230346230455_)))
                                   (_tl230344230460_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e230346230455_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl230344230460_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl230323230404_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl230314230380_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl230311230372_))
                                               (let ((_e230349230463_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl230311230372_))))
                                                 (let ((_hd230348230466_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e230349230463_)))
                                                       (_tl230347230468_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e230349230463_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl230347230468_))
                                                       ((lambda (_L230471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L230472_
                         _L230473_
                         _L230474_
                         _L230475_)
                  (let* ((_get-kws-id230515_
                          (let ((__tmp242685
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230285_)))
                                (__tmp242683
                                 (let ((__tmp242684
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L230475_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230137_
                                    __tmp242684
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp242685 '"__" __tmp242683)))
                         (_get-kws-id230517_
                          (let ((__tmp242686
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230133_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id230515_
                             __tmp242686)))
                         (_main-id230519_
                          (let ((__tmp242689
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L230285_)))
                                (__tmp242687
                                 (let ((__tmp242688
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L230474_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name230137_
                                    __tmp242688
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp242689 '"__" __tmp242687)))
                         (_main-id230521_
                          (let ((__tmp242690
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx230133_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id230519_
                             __tmp242690)))
                         (_g242691_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id230517_)))
                         (_g242692_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id230521_)))
                         (_new-kw-dispatch230525_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L230471_
                             _L230475_
                             _get-kws-id230517_)))
                         (_new-get-kws230527_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L230472_
                             _L230474_
                             _main-id230521_))))
                    (let ((__tmp242695
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L230285_)))
                          (__tmp242694
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id230517_)))
                          (__tmp242693
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id230521_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp242695
                       '" => "
                       __tmp242694
                       '" => "
                       __tmp242693))
                    (let ((__tmp242696
                           (let ((__tmp242697
                                  (let ((__tmp242710
                                         (let ((__tmp242711
                                                (let ((__tmp242712
                                                       (let ((__tmp242713
                                                              (let ((__tmp242715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id230521_ '())))
                            (__tmp242714
                             (let ()
                               (declare (not safe))
                               (cons _L230473_ '()))))
                        (declare (not safe))
                        (cons __tmp242715 __tmp242714))))
                 (declare (not safe))
                 (cons '%#define-values __tmp242713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp242712
                                                   _stx230133_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp242711)))
                                        (__tmp242698
                                         (let ((__tmp242705
                                                (let ((__tmp242706
                                                       (let ((__tmp242707
                                                              (let ((__tmp242709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id230517_ '())))
                            (__tmp242708
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws230527_ '()))))
                        (declare (not safe))
                        (cons __tmp242709 __tmp242708))))
                 (declare (not safe))
                 (cons '%#define-values __tmp242707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp242706
                                                   _stx230133_)))
                                               (__tmp242699
                                                (let ((__tmp242700
                                                       (let ((__tmp242701
                                                              (let ((__tmp242702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp242704
                                    (let ()
                                      (declare (not safe))
                                      (cons _L230285_ '())))
                                   (__tmp242703
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch230525_ '()))))
                               (declare (not safe))
                               (cons __tmp242704 __tmp242703))))
                        (declare (not safe))
                        (cons '%#define-values __tmp242702))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp242701 _stx230133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp242700 '()))))
                                           (declare (not safe))
                                           (cons __tmp242705 __tmp242699))))
                                    (declare (not safe))
                                    (cons __tmp242710 __tmp242698))))
                             (declare (not safe))
                             (cons '%#begin __tmp242697))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp242696 _stx230133_))))
                _hd230348230466_
                _hd230345230458_
                _hd230342230450_
                _hd230339230442_
                _hd230321230394_)
               (let ()
                 (declare (not safe))
                 (_g230301230354_ _g230302230357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230301230354_
                                                  _g230302230357_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g230301230354_
                                              _g230302230357_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g230301230354_ _g230302230357_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230301230354_ _g230302230357_)))))
                           (let ()
                             (declare (not safe))
                             (_g230301230354_ _g230302230357_)))
                       (let ()
                         (declare (not safe))
                         (_g230301230354_ _g230302230357_)))
                   (let ()
                     (declare (not safe))
                     (_g230301230354_ _g230302230357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230301230354_
                                                      _g230302230357_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230301230354_
                                                  _g230302230357_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230301230354_ _g230302230357_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g230301230354_ _g230302230357_)))))
                       (let ()
                         (declare (not safe))
                         (_g230301230354_ _g230302230357_)))))
               (let ()
                 (declare (not safe))
                 (_g230301230354_ _g230302230357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g230301230354_
                                                  _g230302230357_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g230301230354_ _g230302230357_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g230301230354_ _g230302230357_)))))
                           (let ()
                             (declare (not safe))
                             (_g230301230354_ _g230302230357_)))))
                   (let ()
                     (declare (not safe))
                     (_g230301230354_ _g230302230357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g230301230354_
                                                      _g230302230357_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230301230354_
                                              _g230302230357_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g230301230354_ _g230302230357_))))))
                       (declare (not safe))
                       (_g230300230530_ _L230284_))))
                  (___kont241998241999_
                   (lambda (_L230230_ _L230231_)
                     (let ((__tmp242716
                            (let ((__tmp242717
                                   (let ((__tmp242718
                                          (let ((__tmp242719
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L230230_))))
                                            (declare (not safe))
                                            (cons __tmp242719 '()))))
                                     (declare (not safe))
                                     (cons _L230231_ __tmp242718))))
                              (declare (not safe))
                              (cons '%#define-values __tmp242717))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp242716 _stx230133_)))))
              (let* ((___match242083242084_
                      (lambda (_e230176230252_
                               _hd230175230255_
                               _tl230174230257_
                               _e230179230260_
                               _hd230178230263_
                               _tl230177230265_
                               _e230182230268_
                               _hd230181230271_
                               _tl230180230273_
                               _e230185230276_
                               _hd230184230279_
                               _tl230183230281_)
                        (let ((_L230284_ _hd230184230279_)
                              (_L230285_ _hd230181230271_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230285_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L230284_)))
                              (___kont241996241997_ _L230284_ _L230285_)
                              (___kont241998241999_
                               _hd230184230279_
                               _hd230178230263_)))))
                     (___match242055242056_
                      (lambda (_e230162230538_
                               _hd230161230541_
                               _tl230160230543_
                               _e230165230546_
                               _hd230164230549_
                               _tl230163230551_
                               _e230168230554_
                               _hd230167230557_
                               _tl230166230559_
                               _e230171230562_
                               _hd230170230565_
                               _tl230169230567_)
                        (let ((_L230570_ _hd230170230565_)
                              (_L230571_ _hd230167230557_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230571_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L230570_)))
                              (___kont241994241995_ _L230570_ _L230571_)
                              (___match242083242084_
                               _e230162230538_
                               _hd230161230541_
                               _tl230160230543_
                               _e230165230546_
                               _hd230164230549_
                               _tl230163230551_
                               _e230168230554_
                               _hd230167230557_
                               _tl230166230559_
                               _e230171230562_
                               _hd230170230565_
                               _tl230169230567_)))))
                     (___match242027242028_
                      (lambda (_e230148230720_
                               _hd230147230723_
                               _tl230146230725_
                               _e230151230728_
                               _hd230150230731_
                               _tl230149230733_
                               _e230154230736_
                               _hd230153230739_
                               _tl230152230741_
                               _e230157230744_
                               _hd230156230747_
                               _tl230155230749_)
                        (let ((_L230752_ _hd230156230747_)
                              (_L230753_ _hd230153230739_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L230753_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L230752_)))
                              (___kont241992241993_ _L230752_ _L230753_)
                              (___match242055242056_
                               _e230148230720_
                               _hd230147230723_
                               _tl230146230725_
                               _e230151230728_
                               _hd230150230731_
                               _tl230149230733_
                               _e230154230736_
                               _hd230153230739_
                               _tl230152230741_
                               _e230157230744_
                               _hd230156230747_
                               _tl230155230749_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241990241991_))
                    (let ((_e230148230720_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241990241991_))))
                      (let ((_tl230146230725_
                             (let ()
                               (declare (not safe))
                               (##cdr _e230148230720_)))
                            (_hd230147230723_
                             (let ()
                               (declare (not safe))
                               (##car _e230148230720_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230146230725_))
                            (let ((_e230151230728_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230146230725_))))
                              (let ((_tl230149230733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230151230728_)))
                                    (_hd230150230731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230151230728_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230150230731_))
                                    (let ((_e230154230736_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230150230731_))))
                                      (let ((_tl230152230741_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230154230736_)))
                                            (_hd230153230739_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230154230736_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl230152230741_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230149230733_))
                                                (let ((_e230157230744_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230149230733_))))
                                                  (let ((_tl230155230749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230157230744_)))
                                                        (_hd230156230747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230157230744_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230155230749_))
                                                        (___match242027242028_
                                                         _e230148230720_
                                                         _hd230147230723_
                                                         _tl230146230725_
                                                         _e230151230728_
                                                         _hd230150230731_
                                                         _tl230149230733_
                                                         _e230154230736_
                                                         _hd230153230739_
                                                         _tl230152230741_
                                                         _e230157230744_
                                                         _hd230156230747_
                                                         _tl230155230749_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230142230201_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230142230201_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230149230733_))
                                                (let ((_e230196230222_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230149230733_))))
                                                  (let ((_tl230194230227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230196230222_)))
                                                        (_hd230195230225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230196230222_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230194230227_))
                                                        (___kont241998241999_
                                                         _hd230195230225_
                                                         _hd230150230731_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230142230201_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230142230201_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230149230733_))
                                        (let ((_e230196230222_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230149230733_))))
                                          (let ((_tl230194230227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230196230222_)))
                                                (_hd230195230225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230196230222_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230194230227_))
                                                (___kont241998241999_
                                                 _hd230195230225_
                                                 _hd230150230731_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230142230201_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230142230201_))))))
                            (let () (declare (not safe)) (_g230142230201_)))))
                    (let () (declare (not safe)) (_g230142230201_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx229065_)
        (letrec* ((_bind-e__240386240387_
                   (lambda (_id230117_ _expr230118_ _compile?230119_)
                     (let ((__tmp242722
                            (let ()
                              (declare (not safe))
                              (cons _id230117_ '())))
                           (__tmp242720
                            (let ((__tmp242721
                                   (if _compile?230119_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr230118_))
                                       _expr230118_)))
                              (declare (not safe))
                              (cons __tmp242721 '()))))
                       (declare (not safe))
                       (cons __tmp242722 __tmp242720))))
                  (_bind-e__0__240388240389_
                   (lambda (_id230124_ _expr230125_)
                     (let ((_compile?230127_ '#t))
                       (declare (not safe))
                       (_bind-e__240386240387_
                        _id230124_
                        _expr230125_
                        _compile?230127_))))
                  (_bind-e229067_
                   (lambda _g242724_
                     (let ((_g242723_
                            (let ()
                              (declare (not safe))
                              (##length _g242724_))))
                       (cond ((let () (declare (not safe)) (##fx= _g242723_ 2))
                              (apply (lambda (_id230124_ _expr230125_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__240388240389_
                                          _id230124_
                                          _expr230125_)))
                                     _g242724_))
                             ((let () (declare (not safe)) (##fx= _g242723_ 3))
                              (apply (lambda (_id230129_
                                              _expr230130_
                                              _compile?230131_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__240386240387_
                                          _id230129_
                                          _expr230130_
                                          _compile?230131_)))
                                     _g242724_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g242724_))))))
                  (_compile-bindings229068_
                   (lambda (_bindings229701_)
                     (let _lp229703_ ((_rest229705_ _bindings229701_)
                                      (_lift1229706_ '())
                                      (_lift2229707_ '())
                                      (_bind229708_ '()))
                       (let* ((_rest229709229717_ _rest229705_)
                              (_else229711229725_
                               (lambda ()
                                 (values (reverse _lift1229706_)
                                         (reverse _lift2229707_)
                                         (reverse _bind229708_))))
                              (_K229713230104_
                               (lambda (_rest229728_ _hd229729_)
                                 (let* ((___stx242126242127_ _hd229729_)
                                        (_g229733229769_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx242126242127_)))))
                                   (let ((___kont242128242129_
                                          (lambda (_L230011_ _L230012_)
                                            (let* ((___stx242106242107_
                                                    _L230011_)
                                                   (_g230027230041_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx242106242107_)))))
                                              (let ((___kont242108242109_
                                                     (lambda (_L230089_)
                                                       (let ((__tmp242725
                                                              (let ((__tmp242726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__240386240387_
                                _L230012_
                                _L230011_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp242726 _bind229708_))))
                 (declare (not safe))
                 (_lp229703_
                  _rest229728_
                  _lift1229706_
                  _lift2229707_
                  __tmp242725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242110242111_
                                                     (lambda (_L230054_)
                                                       (let ((_g242727_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx229065_
                         _L230012_
                         _L230054_
                         '#t))))
                 (begin
                   (let ((_g242728_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g242727_)
                                (##vector-length _g242727_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g242728_ 3)))
                         (error "Context expects 3 values" _g242728_)))
                   (let ((_ids230064_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g242727_ 0)))
                         (_impls230065_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g242727_ 1)))
                         (_clauses230066_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g242727_ 2))))
                     (let* ((_g242729_
                             (for-each gx#core-bind-runtime! _ids230064_))
                            (_xbind230069_
                             (map _bind-e229067_ _ids230064_ _impls230065_))
                            (_expr*230071_
                             (let ((__tmp242731
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses230066_)))
                                   (__tmp242730
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp242731
                                __tmp242730)))
                            (_bind*230073_
                             (let ()
                               (declare (not safe))
                               (_bind-e__240386240387_
                                _L230012_
                                _expr*230071_
                                '#f))))
                       (let ((__tmp242733
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L230012_)))
                             (__tmp242732
                              (map gxc#identifier-symbol _ids230064_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp242733
                          '" => "
                          __tmp242732))
                       (let ((__tmp242735
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2229707_ _xbind230069_)))
                             (__tmp242734
                              (let ()
                                (declare (not safe))
                                (cons _bind*230073_ _bind229708_))))
                         (declare (not safe))
                         (_lp229703_
                          _rest229728_
                          _lift1229706_
                          __tmp242735
                          __tmp242734)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match242117242118_
                                                       (lambda (_e230032230081_
                                                                _hd230031230084_
                                                                _tl230030230086_)
                                                         (let ((_L230089_
                                                                _tl230030230086_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L230089_))
                       (___kont242108242109_ _L230089_)
                       (___kont242110242111_ _tl230030230086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx242106242107_))
                                                      (let ((_e230032230081_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx242106242107_))))
                (let ((_tl230030230086_
                       (let () (declare (not safe)) (##cdr _e230032230081_)))
                      (_hd230031230084_
                       (let () (declare (not safe)) (##car _e230032230081_))))
                  (___match242117242118_
                   _e230032230081_
                   _hd230031230084_
                   _tl230030230086_)))
              (let () (declare (not safe)) (_g230027230041_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont242130242131_
                                          (lambda (_L229839_ _L229840_)
                                            (let* ((_g229854229884_
                                                    (lambda (_g229855229881_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229855229881_))))
                                                   (_g229853229979_
                                                    (lambda (_g229855229887_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229855229887_))
                                                          (let ((_e229861229889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229855229887_))))
                    (let ((_hd229860229892_
                           (let ()
                             (declare (not safe))
                             (##car _e229861229889_)))
                          (_tl229859229894_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229861229889_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229859229894_))
                          (let ((_e229864229897_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229859229894_))))
                            (let ((_hd229863229900_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229864229897_)))
                                  (_tl229862229902_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229864229897_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229863229900_))
                                  (let ((_e229867229905_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229863229900_))))
                                    (let ((_hd229866229908_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229867229905_)))
                                          (_tl229865229910_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229867229905_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229866229908_))
                                          (let ((_e229870229913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229866229908_))))
                                            (let ((_hd229869229916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229870229913_)))
                                                  (_tl229868229918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229870229913_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229869229916_))
                                                  (let ((_e229873229921_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229869229916_))))
                                                    (let ((_hd229872229924_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229873229921_)))
                                                          (_tl229871229926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229873229921_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229871229926_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229868229918_))
                      (let ((_e229876229929_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229868229918_))))
                        (let ((_hd229875229932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229876229929_)))
                              (_tl229874229934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229876229929_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229874229934_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl229865229910_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229862229902_))
                                      (let ((_e229879229937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229862229902_))))
                                        (let ((_hd229878229940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229879229937_)))
                                              (_tl229877229942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229879229937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229877229942_))
                                              ((lambda (_L229945_
                                                        _L229946_
                                                        _L229947_)
                                                 (let* ((_lambda-id229971_
                                                         (let ((__tmp242737
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L229840_)))
                       (__tmp242736 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp242737 __tmp242736)))
                (_lambda-id229973_
                 (let ((__tmp242738
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx229065_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id229971_ __tmp242738)))
                (_g242739_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id229973_)))
                (_new-case-lambda-expr229976_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L229945_
                    _L229947_
                    _lambda-id229973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp242741
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L229840_)))
                                                         (__tmp242740
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id229973_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp242741
                                                      '" => "
                                                      __tmp242740))
                                                   (let ((__tmp242744
                                                          (let ((__tmp242745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__240386240387_
                            _L229840_
                            _new-case-lambda-expr229976_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp242745 _rest229728_)))
                 (__tmp242742
                  (let ((__tmp242743
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__240388240389_
                            _lambda-id229973_
                            _L229946_))))
                    (declare (not safe))
                    (cons __tmp242743 _lift1229706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp229703_
                                                      __tmp242744
                                                      __tmp242742
                                                      _lift2229707_
                                                      _bind229708_))))
                                               _hd229878229940_
                                               _hd229875229932_
                                               _hd229872229924_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229854229884_
                                                 _g229855229887_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229854229884_ _g229855229887_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229854229884_ _g229855229887_)))
                              (let ()
                                (declare (not safe))
                                (_g229854229884_ _g229855229887_)))))
                      (let ()
                        (declare (not safe))
                        (_g229854229884_ _g229855229887_)))
                  (let ()
                    (declare (not safe))
                    (_g229854229884_ _g229855229887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229854229884_
                                                     _g229855229887_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229854229884_
                                             _g229855229887_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229854229884_ _g229855229887_)))))
                          (let ()
                            (declare (not safe))
                            (_g229854229884_ _g229855229887_)))))
                  (let ()
                    (declare (not safe))
                    (_g229854229884_ _g229855229887_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229853229979_ _L229839_))))
                                         (___kont242132242133_
                                          (lambda (_L229790_ _L229791_)
                                            (let ((__tmp242746
                                                   (let ((__tmp242747
                                                          (let ((__tmp242748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp242749
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L229790_))))
                           (declare (not safe))
                           (cons __tmp242749 '()))))
                    (declare (not safe))
                    (cons _L229791_ __tmp242748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp242747
                                                           _bind229708_))))
                                              (declare (not safe))
                                              (_lp229703_
                                               _rest229728_
                                               _lift1229706_
                                               _lift2229707_
                                               __tmp242746)))))
                                     (let* ((___match242177242178_
                                             (lambda (_e229750229815_
                                                      _hd229749229818_
                                                      _tl229748229820_
                                                      _e229753229823_
                                                      _hd229752229826_
                                                      _tl229751229828_
                                                      _e229756229831_
                                                      _hd229755229834_
                                                      _tl229754229836_)
                                               (let ((_L229839_
                                                      _hd229755229834_)
                                                     (_L229840_
                                                      _hd229752229826_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L229840_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L229839_)))
                                                     (___kont242130242131_
                                                      _L229839_
                                                      _L229840_)
                                                     (___kont242132242133_
                                                      _hd229755229834_
                                                      _hd229749229818_)))))
                                            (___match242155242156_
                                             (lambda (_e229739229987_
                                                      _hd229738229990_
                                                      _tl229737229992_
                                                      _e229742229995_
                                                      _hd229741229998_
                                                      _tl229740230000_
                                                      _e229745230003_
                                                      _hd229744230006_
                                                      _tl229743230008_)
                                               (let ((_L230011_
                                                      _hd229744230006_)
                                                     (_L230012_
                                                      _hd229741229998_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L230012_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L230011_)))
                                                     (___kont242128242129_
                                                      _L230011_
                                                      _L230012_)
                                                     (___match242177242178_
                                                      _e229739229987_
                                                      _hd229738229990_
                                                      _tl229737229992_
                                                      _e229742229995_
                                                      _hd229741229998_
                                                      _tl229740230000_
                                                      _e229745230003_
                                                      _hd229744230006_
                                                      _tl229743230008_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx242126242127_))
                                           (let ((_e229739229987_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx242126242127_))))
                                             (let ((_tl229737229992_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229739229987_)))
                                                   (_hd229738229990_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229739229987_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229738229990_))
                                                   (let ((_e229742229995_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229738229990_))))
                                                     (let ((_tl229740230000_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229742229995_)))
                                                           (_hd229741229998_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229742229995_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229740230000_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229737229992_))
                       (let ((_e229745230003_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229737229992_))))
                         (let ((_tl229743230008_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229745230003_)))
                               (_hd229744230006_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229745230003_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229743230008_))
                               (___match242155242156_
                                _e229739229987_
                                _hd229738229990_
                                _tl229737229992_
                                _e229742229995_
                                _hd229741229998_
                                _tl229740230000_
                                _e229745230003_
                                _hd229744230006_
                                _tl229743230008_)
                               (let ()
                                 (declare (not safe))
                                 (_g229733229769_)))))
                       (let () (declare (not safe)) (_g229733229769_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229737229992_))
                       (let ((_e229764229782_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229737229992_))))
                         (let ((_tl229762229787_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229764229782_)))
                               (_hd229763229785_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229764229782_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229762229787_))
                               (___kont242132242133_
                                _hd229763229785_
                                _hd229738229990_)
                               (let ()
                                 (declare (not safe))
                                 (_g229733229769_)))))
                       (let () (declare (not safe)) (_g229733229769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229737229992_))
                                                       (let ((_e229764229782_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229737229992_))))
                 (let ((_tl229762229787_
                        (let () (declare (not safe)) (##cdr _e229764229782_)))
                       (_hd229763229785_
                        (let () (declare (not safe)) (##car _e229764229782_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229762229787_))
                       (___kont242132242133_ _hd229763229785_ _hd229738229990_)
                       (let () (declare (not safe)) (_g229733229769_)))))
               (let () (declare (not safe)) (_g229733229769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229733229769_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229709229717_))
                             (let ((_hd229714230107_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229709229717_)))
                                   (_tl229715230109_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229709229717_))))
                               (let* ((_hd230112_ _hd229714230107_)
                                      (_rest230114_ _tl229715230109_))
                                 (declare (not safe))
                                 (_K229713230104_ _rest230114_ _hd230112_)))
                             (let ()
                               (declare (not safe))
                               (_else229711229725_)))))))
                  (_lift-kw-lambda?229069_
                   (lambda (_bind229625_)
                     (let* ((___stx242194242195_ _bind229625_)
                            (_g229628229645_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx242194242195_)))))
                       (let ((___kont242196242197_
                              (lambda (_L229681_ _L229682_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L229682_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L229681_))
                                    '#f)))
                             (___kont242198242199_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx242194242195_))
                             (let ((_e229634229657_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx242194242195_))))
                               (let ((_tl229632229662_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e229634229657_)))
                                     (_hd229633229660_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e229634229657_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd229633229660_))
                                     (let ((_e229637229665_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd229633229660_))))
                                       (let ((_tl229635229670_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e229637229665_)))
                                             (_hd229636229668_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e229637229665_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl229635229670_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl229632229662_))
                                                 (let ((_e229640229673_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl229632229662_))))
                                                   (let ((_tl229638229678_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e229640229673_)))
                                                         (_hd229639229676_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e229640229673_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl229638229678_))
                                                         (___kont242196242197_
                                                          _hd229639229676_
                                                          _hd229636229668_)
                                                         (___kont242198242199_))))
                                                 (___kont242198242199_))
                                             (___kont242198242199_))))
                                     (___kont242198242199_))))
                             (___kont242198242199_))))))
                  (_lift-kw-lambda-bindings229070_
                   (lambda (_bindings229237_)
                     (let _lp229239_ ((_rest229241_ _bindings229237_)
                                      (_lift1229242_ '())
                                      (_lift2229243_ '())
                                      (_bind229244_ '()))
                       (let* ((_rest229245229253_ _rest229241_)
                              (_else229247229261_
                               (lambda ()
                                 (values (reverse _lift1229242_)
                                         (reverse _lift2229243_)
                                         (reverse _bind229244_))))
                              (_K229249229613_
                               (lambda (_rest229264_ _hd229265_)
                                 (let* ((___stx242224242225_ _hd229265_)
                                        (_g229268229293_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx242224242225_)))))
                                   (let ((___kont242226242227_
                                          (lambda (_L229363_ _L229364_)
                                            (let* ((_g229378229431_
                                                    (lambda (_g229379229428_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g229379229428_))))
                                                   (_g229377229607_
                                                    (lambda (_g229379229434_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g229379229434_))
                                                          (let ((_e229387229436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g229379229434_))))
                    (let ((_hd229386229439_
                           (let ()
                             (declare (not safe))
                             (##car _e229387229436_)))
                          (_tl229385229441_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229387229436_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229385229441_))
                          (let ((_e229390229444_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229385229441_))))
                            (let ((_hd229389229447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229390229444_)))
                                  (_tl229388229449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229390229444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229389229447_))
                                  (let ((_e229393229452_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229389229447_))))
                                    (let ((_hd229392229455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229393229452_)))
                                          (_tl229391229457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229393229452_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd229392229455_))
                                          (let ((_e229396229460_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd229392229455_))))
                                            (let ((_hd229395229463_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229396229460_)))
                                                  (_tl229394229465_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229396229460_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd229395229463_))
                                                  (let ((_e229399229468_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd229395229463_))))
                                                    (let ((_hd229398229471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229399229468_)))
                                                          (_tl229397229473_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229399229468_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229397229473_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229394229465_))
                      (let ((_e229402229476_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229394229465_))))
                        (let ((_hd229401229479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229402229476_)))
                              (_tl229400229481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229402229476_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229401229479_))
                              (let ((_e229405229484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229401229479_))))
                                (let ((_hd229404229487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229405229484_)))
                                      (_tl229403229489_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229405229484_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229403229489_))
                                      (let ((_e229408229492_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229403229489_))))
                                        (let ((_hd229407229495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229408229492_)))
                                              (_tl229406229497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229408229492_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd229407229495_))
                                              (let ((_e229411229500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd229407229495_))))
                                                (let ((_hd229410229503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229411229500_)))
                                                      (_tl229409229505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229411229500_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd229410229503_))
                                                      (let ((_e229414229508_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd229410229503_))))
                (let ((_hd229413229511_
                       (let () (declare (not safe)) (##car _e229414229508_)))
                      (_tl229412229513_
                       (let () (declare (not safe)) (##cdr _e229414229508_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229413229511_))
                      (let ((_e229417229516_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229413229511_))))
                        (let ((_hd229416229519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229417229516_)))
                              (_tl229415229521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229417229516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl229415229521_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229412229513_))
                                  (let ((_e229420229524_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229412229513_))))
                                    (let ((_hd229419229527_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229420229524_)))
                                          (_tl229418229529_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229420229524_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229418229529_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229409229505_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229406229497_))
                                                  (let ((_e229423229532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229406229497_))))
                                                    (let ((_hd229422229535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229423229532_)))
                                                          (_tl229421229537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229423229532_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229421229537_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl229400229481_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl229391229457_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229388229449_))
                              (let ((_e229426229540_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229388229449_))))
                                (let ((_hd229425229543_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229426229540_)))
                                      (_tl229424229545_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229426229540_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229424229545_))
                                      ((lambda (_L229548_
                                                _L229549_
                                                _L229550_
                                                _L229551_
                                                _L229552_)
                                         (let* ((_get-kws-id229592_
                                                 (let ((__tmp242751
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229364_)))
                                                       (__tmp242750
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp242751
                                                    __tmp242750)))
                                                (_get-kws-id229594_
                                                 (let ((__tmp242752
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229065_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id229592_
                                                    __tmp242752)))
                                                (_main-id229596_
                                                 (let ((__tmp242754
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L229364_)))
                                                       (__tmp242753
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp242754
                                                    __tmp242753)))
                                                (_main-id229598_
                                                 (let ((__tmp242755
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx229065_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id229596_
                                                    __tmp242755)))
                                                (_g242756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id229594_)))
                                                (_g242757_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id229598_)))
                                                (_new-kw-dispatch229602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229548_
                                                    _L229552_
                                                    _get-kws-id229594_)))
                                                (_new-get-kws229604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L229549_
                                                    _L229551_
                                                    _main-id229598_))))
                                           (let ((__tmp242760
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L229364_)))
                                                 (__tmp242759
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id229594_)))
                                                 (__tmp242758
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id229598_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp242760
                                              '" => "
                                              __tmp242759
                                              '" => "
                                              __tmp242758))
                                           (let ((__tmp242765
                                                  (let ((__tmp242766
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__240386240387_
                                                            _main-id229598_
                                                            _L229550_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp242766
                                                          _lift1229242_)))
                                                 (__tmp242763
                                                  (let ((__tmp242764
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__240386240387_
                                                            _get-kws-id229594_
                                                            _new-get-kws229604_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp242764
                                                          _lift2229243_)))
                                                 (__tmp242761
                                                  (let ((__tmp242762
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__240386240387_
                                                            _L229364_
                                                            _new-kw-dispatch229602_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp242762
                                                          _bind229244_))))
                                             (declare (not safe))
                                             (_lp229239_
                                              _rest229264_
                                              __tmp242765
                                              __tmp242763
                                              __tmp242761))))
                                       _hd229425229543_
                                       _hd229422229535_
                                       _hd229419229527_
                                       _hd229416229519_
                                       _hd229398229471_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229378229431_ _g229379229434_)))))
                              (let ()
                                (declare (not safe))
                                (_g229378229431_ _g229379229434_)))
                          (let ()
                            (declare (not safe))
                            (_g229378229431_ _g229379229434_)))
                      (let ()
                        (declare (not safe))
                        (_g229378229431_ _g229379229434_)))
                  (let ()
                    (declare (not safe))
                    (_g229378229431_ _g229379229434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229378229431_
                                                     _g229379229434_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g229378229431_
                                                 _g229379229434_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g229378229431_
                                             _g229379229434_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229378229431_ _g229379229434_)))
                              (let ()
                                (declare (not safe))
                                (_g229378229431_ _g229379229434_)))))
                      (let ()
                        (declare (not safe))
                        (_g229378229431_ _g229379229434_)))))
              (let ()
                (declare (not safe))
                (_g229378229431_ _g229379229434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g229378229431_
                                                 _g229379229434_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229378229431_ _g229379229434_)))))
                              (let ()
                                (declare (not safe))
                                (_g229378229431_ _g229379229434_)))))
                      (let ()
                        (declare (not safe))
                        (_g229378229431_ _g229379229434_)))
                  (let ()
                    (declare (not safe))
                    (_g229378229431_ _g229379229434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g229378229431_
                                                     _g229379229434_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g229378229431_
                                             _g229379229434_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g229378229431_ _g229379229434_)))))
                          (let ()
                            (declare (not safe))
                            (_g229378229431_ _g229379229434_)))))
                  (let ()
                    (declare (not safe))
                    (_g229378229431_ _g229379229434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g229377229607_ _L229363_))))
                                         (___kont242228242229_
                                          (lambda (_L229314_ _L229315_)
                                            (let ((__tmp242767
                                                   (let ((__tmp242768
                                                          (let ((__tmp242769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L229314_ '()))))
                    (declare (not safe))
                    (cons _L229315_ __tmp242769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp242768
                                                           _bind229244_))))
                                              (declare (not safe))
                                              (_lp229239_
                                               _rest229264_
                                               _lift1229242_
                                               _lift2229243_
                                               __tmp242767)))))
                                     (let ((___match242251242252_
                                            (lambda (_e229274229339_
                                                     _hd229273229342_
                                                     _tl229272229344_
                                                     _e229277229347_
                                                     _hd229276229350_
                                                     _tl229275229352_
                                                     _e229280229355_
                                                     _hd229279229358_
                                                     _tl229278229360_)
                                              (let ((_L229363_
                                                     _hd229279229358_)
                                                    (_L229364_
                                                     _hd229276229350_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L229364_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L229363_)))
                                                    (___kont242226242227_
                                                     _L229363_
                                                     _L229364_)
                                                    (___kont242228242229_
                                                     _hd229279229358_
                                                     _hd229273229342_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx242224242225_))
                                           (let ((_e229274229339_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx242224242225_))))
                                             (let ((_tl229272229344_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229274229339_)))
                                                   (_hd229273229342_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229274229339_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd229273229342_))
                                                   (let ((_e229277229347_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd229273229342_))))
                                                     (let ((_tl229275229352_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e229277229347_)))
                                                           (_hd229276229350_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e229277229347_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl229275229352_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl229272229344_))
                       (let ((_e229280229355_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229272229344_))))
                         (let ((_tl229278229360_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229280229355_)))
                               (_hd229279229358_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229280229355_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229278229360_))
                               (___match242251242252_
                                _e229274229339_
                                _hd229273229342_
                                _tl229272229344_
                                _e229277229347_
                                _hd229276229350_
                                _tl229275229352_
                                _e229280229355_
                                _hd229279229358_
                                _tl229278229360_)
                               (let ()
                                 (declare (not safe))
                                 (_g229268229293_)))))
                       (let () (declare (not safe)) (_g229268229293_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl229272229344_))
                       (let ((_e229288229306_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl229272229344_))))
                         (let ((_tl229286229311_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e229288229306_)))
                               (_hd229287229309_
                                (let ()
                                  (declare (not safe))
                                  (##car _e229288229306_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229286229311_))
                               (___kont242228242229_
                                _hd229287229309_
                                _hd229273229342_)
                               (let ()
                                 (declare (not safe))
                                 (_g229268229293_)))))
                       (let () (declare (not safe)) (_g229268229293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl229272229344_))
                                                       (let ((_e229288229306_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl229272229344_))))
                 (let ((_tl229286229311_
                        (let () (declare (not safe)) (##cdr _e229288229306_)))
                       (_hd229287229309_
                        (let () (declare (not safe)) (##car _e229288229306_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl229286229311_))
                       (___kont242228242229_ _hd229287229309_ _hd229273229342_)
                       (let () (declare (not safe)) (_g229268229293_)))))
               (let () (declare (not safe)) (_g229268229293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g229268229293_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest229245229253_))
                             (let ((_hd229250229616_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest229245229253_)))
                                   (_tl229251229618_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest229245229253_))))
                               (let* ((_hd229621_ _hd229250229616_)
                                      (_rest229623_ _tl229251229618_))
                                 (declare (not safe))
                                 (_K229249229613_ _rest229623_ _hd229621_)))
                             (let ()
                               (declare (not safe))
                               (_else229247229261_))))))))
          (let* ((___stx242268242269_ _stx229065_)
                 (_g229073229099_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx242268242269_)))))
            (let ((___kont242270242271_
                   (lambda (_L229159_ _L229160_)
                     (let ((__tmp242771
                            (lambda ()
                              (if (let ((__tmp242798
                                         (let ((__tmp242799
                                                (lambda (_g229188229191_
                                                         _g229189229193_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g229188229191_
                                                          _g229189229193_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp242799
                                                   '()
                                                   _L229160_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?229069_
                                            __tmp242798))
                                  (let ((_g242785_
                                         (let ((__tmp242787
                                                (let ((__tmp242788
                                                       (lambda (_g229195229198_
                                                                _g229196229200_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229195229198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229196229200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp242788
                                                          '()
                                                          _L229160_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings229070_
                                            __tmp242787))))
                                    (begin
                                      (let ((_g242786_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g242785_)
                                                   (##vector-length _g242785_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g242786_ 3)))
                                            (error "Context expects 3 values"
                                                   _g242786_)))
                                      (let ((_lift1229203_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g242785_ 0)))
                                            (_lift2229204_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g242785_ 1)))
                                            (_hd229205_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g242785_ 2))))
                                        (let* ((_expr229207_
                                                (let ((__tmp242789
                                                       (let ((__tmp242790
                                                              (let ((__tmp242791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L229159_ '()))))
                        (declare (not safe))
                        (cons _hd229205_ __tmp242791))))
                 (declare (not safe))
                 (cons '%#let-values __tmp242790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp242789
                                                   _stx229065_)))
                                               (_expr229209_
                                                (let ((__tmp242792
                                                       (let ((__tmp242793
                                                              (let ((__tmp242794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229207_ '()))))
                        (declare (not safe))
                        (cons _lift2229204_ __tmp242794))))
                 (declare (not safe))
                 (cons '%#let-values __tmp242793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp242792
                                                   _stx229065_)))
                                               (_expr229211_
                                                (let ((__tmp242795
                                                       (let ((__tmp242796
                                                              (let ((__tmp242797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr229209_ '()))))
                        (declare (not safe))
                        (cons _lift1229203_ __tmp242797))))
                 (declare (not safe))
                 (cons '%#let-values __tmp242796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp242795
                                                   _stx229065_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr229211_))))))
                                  (let ((_g242772_
                                         (let ((__tmp242774
                                                (let ((__tmp242775
                                                       (lambda (_g229213229216_
                                                                _g229214229218_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g229213229216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g229214229218_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp242775
                                                          '()
                                                          _L229160_))))
                                           (declare (not safe))
                                           (_compile-bindings229068_
                                            __tmp242774))))
                                    (begin
                                      (let ((_g242773_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g242772_)
                                                   (##vector-length _g242772_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g242773_ 3)))
                                            (error "Context expects 3 values"
                                                   _g242773_)))
                                      (let ((_lift1229221_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g242772_ 0)))
                                            (_lift2229222_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g242772_ 1)))
                                            (_hd229223_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g242772_ 2))))
                                        (let* ((_body229225_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L229159_)))
                                               (_expr229227_
                                                (let ((__tmp242776
                                                       (let ((__tmp242777
                                                              (let ((__tmp242778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body229225_ '()))))
                        (declare (not safe))
                        (cons _hd229223_ __tmp242778))))
                 (declare (not safe))
                 (cons '%#let-values __tmp242777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp242776
                                                   _stx229065_)))
                                               (_expr229229_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2229222_))
                                                    _expr229227_
                                                    (let ((__tmp242779
                                                           (let ((__tmp242780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp242781
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229227_ '()))))
                            (declare (not safe))
                            (cons _lift2229222_ __tmp242781))))
                     (declare (not safe))
                     (cons '%#let-values __tmp242780))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp242779 _stx229065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr229231_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1229221_))
                                                    _expr229229_
                                                    (let ((__tmp242782
                                                           (let ((__tmp242783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp242784
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr229229_ '()))))
                            (declare (not safe))
                            (cons _lift1229221_ __tmp242784))))
                     (declare (not safe))
                     (cons '%#let-values __tmp242783))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp242782 _stx229065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr229231_)))))))
                           (__tmp242770
                            (let ((__obj242474
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj242474)
                              __obj242474)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp242771
                        gx#current-expander-context
                        __tmp242770))))
                  (___kont242274242275_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx229065_)))))
              (let ((___match242295242296_
                     (lambda (_e229079229111_
                              _hd229078229114_
                              _tl229077229116_
                              _e229082229119_
                              _hd229081229122_
                              _tl229080229124_
                              ___splice242272242273_
                              _target229083229127_
                              _tl229085229129_)
                       (letrec ((_loop229086229132_
                                 (lambda (_hd229084229135_ _bind229090229137_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd229084229135_))
                                       (let ((_e229087229140_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd229084229135_))))
                                         (let ((_lp-tl229089229145_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e229087229140_)))
                                               (_lp-hd229088229143_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e229087229140_))))
                                           (let ((__tmp242802
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd229088229143_
                                                          _bind229090229137_))))
                                             (declare (not safe))
                                             (_loop229086229132_
                                              _lp-tl229089229145_
                                              __tmp242802))))
                                       (let ((_bind229091229148_
                                              (reverse _bind229090229137_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl229080229124_))
                                             (let ((_e229094229151_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl229080229124_))))
                                               (let ((_tl229092229156_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e229094229151_)))
                                                     (_hd229093229154_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e229094229151_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229092229156_))
                                                     (let ((_L229159_
                                                            _hd229093229154_)
                                                           (_L229160_
                                                            _bind229091229148_))
                                                       (if (let ((__tmp242800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp242801
                                 (lambda (_g229180229183_ _g229181229185_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g229180229183_ _g229181229185_)))))
                            (declare (not safe))
                            (foldr1 __tmp242801 '() _L229160_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp242800))
                   (___kont242270242271_ _L229159_ _L229160_)
                   (___kont242274242275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont242274242275_))))
                                             (___kont242274242275_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop229086229132_ _target229083229127_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx242268242269_))
                    (let ((_e229079229111_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx242268242269_))))
                      (let ((_tl229077229116_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229079229111_)))
                            (_hd229078229114_
                             (let ()
                               (declare (not safe))
                               (##car _e229079229111_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229077229116_))
                            (let ((_e229082229119_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229077229116_))))
                              (let ((_tl229080229124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229082229119_)))
                                    (_hd229081229122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229082229119_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd229081229122_))
                                    (let ((___splice242272242273_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd229081229122_
                                              '0))))
                                      (let ((_tl229085229129_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice242272242273_
                                                '1)))
                                            (_target229083229127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice242272242273_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229085229129_))
                                            (___match242295242296_
                                             _e229079229111_
                                             _hd229078229114_
                                             _tl229077229116_
                                             _e229082229119_
                                             _hd229081229122_
                                             _tl229080229124_
                                             ___splice242272242273_
                                             _target229083229127_
                                             _tl229085229129_)
                                            (___kont242274242275_))))
                                    (___kont242274242275_))))
                            (___kont242274242275_))))
                    (___kont242274242275_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx228209_)
        (letrec* ((_bind-e__240391240392_
                   (lambda (_id229049_ _expr229050_ _compile?229051_)
                     (let ((__tmp242805
                            (let ()
                              (declare (not safe))
                              (cons _id229049_ '())))
                           (__tmp242803
                            (let ((__tmp242804
                                   (if _compile?229051_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr229050_))
                                       _expr229050_)))
                              (declare (not safe))
                              (cons __tmp242804 '()))))
                       (declare (not safe))
                       (cons __tmp242805 __tmp242803))))
                  (_bind-e__0__240393240394_
                   (lambda (_id229056_ _expr229057_)
                     (let ((_compile?229059_ '#t))
                       (declare (not safe))
                       (_bind-e__240391240392_
                        _id229056_
                        _expr229057_
                        _compile?229059_))))
                  (_bind-e228211_
                   (lambda _g242807_
                     (let ((_g242806_
                            (let ()
                              (declare (not safe))
                              (##length _g242807_))))
                       (cond ((let () (declare (not safe)) (##fx= _g242806_ 2))
                              (apply (lambda (_id229056_ _expr229057_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__240393240394_
                                          _id229056_
                                          _expr229057_)))
                                     _g242807_))
                             ((let () (declare (not safe)) (##fx= _g242806_ 3))
                              (apply (lambda (_id229061_
                                              _expr229062_
                                              _compile?229063_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__240391240392_
                                          _id229061_
                                          _expr229062_
                                          _compile?229063_)))
                                     _g242807_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g242807_))))))
                  (_compile-bindings228212_
                   (lambda (_rest228347_)
                     (let _lp228349_ ((_rest228351_ _rest228347_)
                                      (_bind228352_ '()))
                       (let* ((_rest228353228361_ _rest228351_)
                              (_else228355228369_
                               (lambda () (reverse _bind228352_)))
                              (_K228357229036_
                               (lambda (_rest228372_ _hd228373_)
                                 (let* ((___stx242318242319_ _hd228373_)
                                        (_g228378228425_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx242318242319_)))))
                                   (let ((___kont242320242321_
                                          (lambda (_L228943_ _L228944_)
                                            (let* ((___stx242298242299_
                                                    _L228943_)
                                                   (_g228959228973_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx242298242299_)))))
                                              (let ((___kont242300242301_
                                                     (lambda (_L229021_)
                                                       (let ((__tmp242808
                                                              (let ((__tmp242809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__240391240392_
                                _L228944_
                                _L228943_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp242809 _bind228352_))))
                 (declare (not safe))
                 (_lp228349_ _rest228372_ __tmp242808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont242302242303_
                                                     (lambda (_L228986_)
                                                       (let ((_g242810_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx228209_
                         _L228944_
                         _L228986_
                         '#t))))
                 (begin
                   (let ((_g242811_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g242810_)
                                (##vector-length _g242810_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g242811_ 3)))
                         (error "Context expects 3 values" _g242811_)))
                   (let ((_ids228996_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g242810_ 0)))
                         (_impls228997_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g242810_ 1)))
                         (_clauses228998_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g242810_ 2))))
                     (let* ((_g242812_
                             (for-each gx#core-bind-runtime! _ids228996_))
                            (_xbind229001_
                             (map _bind-e228211_ _ids228996_ _impls228997_))
                            (_expr*229003_
                             (let ((__tmp242814
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228998_)))
                                   (__tmp242813
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp242814
                                __tmp242813)))
                            (_bind*229005_
                             (let ()
                               (declare (not safe))
                               (_bind-e__240391240392_
                                _L228944_
                                _expr*229003_
                                '#f))))
                       (let ((__tmp242816
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228944_)))
                             (__tmp242815
                              (map gxc#identifier-symbol _ids228996_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp242816
                          '" => "
                          __tmp242815))
                       (let ((__tmp242817
                              (let ((__tmp242818
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind228352_
                                               _xbind229001_))))
                                (declare (not safe))
                                (cons _bind*229005_ __tmp242818))))
                         (declare (not safe))
                         (_lp228349_ _rest228372_ __tmp242817)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match242309242310_
                                                       (lambda (_e228964229013_
                                                                _hd228963229016_
                                                                _tl228962229018_)
                                                         (let ((_L229021_
                                                                _tl228962229018_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L229021_))
                       (___kont242300242301_ _L229021_)
                       (___kont242302242303_ _tl228962229018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx242298242299_))
                                                      (let ((_e228964229013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx242298242299_))))
                (let ((_tl228962229018_
                       (let () (declare (not safe)) (##cdr _e228964229013_)))
                      (_hd228963229016_
                       (let () (declare (not safe)) (##car _e228964229013_))))
                  (___match242309242310_
                   _e228964229013_
                   _hd228963229016_
                   _tl228962229018_)))
              (let () (declare (not safe)) (_g228959228973_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont242322242323_
                                          (lambda (_L228771_ _L228772_)
                                            (let* ((_g228786228816_
                                                    (lambda (_g228787228813_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g228787228813_))))
                                                   (_g228785228911_
                                                    (lambda (_g228787228819_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g228787228819_))
                                                          (let ((_e228793228821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g228787228819_))))
                    (let ((_hd228792228824_
                           (let ()
                             (declare (not safe))
                             (##car _e228793228821_)))
                          (_tl228791228826_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228793228821_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228791228826_))
                          (let ((_e228796228829_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228791228826_))))
                            (let ((_hd228795228832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228796228829_)))
                                  (_tl228794228834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228796228829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228795228832_))
                                  (let ((_e228799228837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228795228832_))))
                                    (let ((_hd228798228840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228799228837_)))
                                          (_tl228797228842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228799228837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228798228840_))
                                          (let ((_e228802228845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228798228840_))))
                                            (let ((_hd228801228848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228802228845_)))
                                                  (_tl228800228850_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228802228845_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228801228848_))
                                                  (let ((_e228805228853_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228801228848_))))
                                                    (let ((_hd228804228856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228805228853_)))
                                                          (_tl228803228858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228805228853_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228803228858_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228800228850_))
                      (let ((_e228808228861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228800228850_))))
                        (let ((_hd228807228864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228808228861_)))
                              (_tl228806228866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228808228861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228806228866_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228797228842_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228794228834_))
                                      (let ((_e228811228869_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228794228834_))))
                                        (let ((_hd228810228872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228811228869_)))
                                              (_tl228809228874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228811228869_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228809228874_))
                                              ((lambda (_L228877_
                                                        _L228878_
                                                        _L228879_)
                                                 (let* ((_lambda-id228903_
                                                         (let ((__tmp242820
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L228772_)))
                       (__tmp242819 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp242820 __tmp242819)))
                (_lambda-id228905_
                 (let ((__tmp242821
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx228209_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id228903_ __tmp242821)))
                (_g242822_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id228905_)))
                (_new-case-lambda-expr228908_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L228877_
                    _L228879_
                    _lambda-id228905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp242824
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L228772_)))
                                                         (__tmp242823
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id228905_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp242824
                                                      '" => "
                                                      __tmp242823))
                                                   (let ((__tmp242827
                                                          (let ((__tmp242828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__240391240392_
                            _L228772_
                            _new-case-lambda-expr228908_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp242828 _rest228372_)))
                 (__tmp242825
                  (let ((__tmp242826
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__240393240394_
                            _lambda-id228905_
                            _L228878_))))
                    (declare (not safe))
                    (cons __tmp242826 _bind228352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp228349_
                                                      __tmp242827
                                                      __tmp242825))))
                                               _hd228810228872_
                                               _hd228807228864_
                                               _hd228804228856_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228786228816_
                                                 _g228787228819_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228786228816_ _g228787228819_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g228786228816_ _g228787228819_)))
                              (let ()
                                (declare (not safe))
                                (_g228786228816_ _g228787228819_)))))
                      (let ()
                        (declare (not safe))
                        (_g228786228816_ _g228787228819_)))
                  (let ()
                    (declare (not safe))
                    (_g228786228816_ _g228787228819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228786228816_
                                                     _g228787228819_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g228786228816_
                                             _g228787228819_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228786228816_ _g228787228819_)))))
                          (let ()
                            (declare (not safe))
                            (_g228786228816_ _g228787228819_)))))
                  (let ()
                    (declare (not safe))
                    (_g228786228816_ _g228787228819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g228785228911_ _L228771_))))
                                         (___kont242324242325_
                                          (lambda (_L228495_ _L228496_)
                                            (let* ((_g228510228563_
                                                    (lambda (_g228511228560_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g228511228560_))))
                                                   (_g228509228739_
                                                    (lambda (_g228511228566_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g228511228566_))
                                                          (let ((_e228519228568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g228511228566_))))
                    (let ((_hd228518228571_
                           (let ()
                             (declare (not safe))
                             (##car _e228519228568_)))
                          (_tl228517228573_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228519228568_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228517228573_))
                          (let ((_e228522228576_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228517228573_))))
                            (let ((_hd228521228579_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228522228576_)))
                                  (_tl228520228581_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228522228576_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228521228579_))
                                  (let ((_e228525228584_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228521228579_))))
                                    (let ((_hd228524228587_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228525228584_)))
                                          (_tl228523228589_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228525228584_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228524228587_))
                                          (let ((_e228528228592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228524228587_))))
                                            (let ((_hd228527228595_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228528228592_)))
                                                  (_tl228526228597_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228528228592_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228527228595_))
                                                  (let ((_e228531228600_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228527228595_))))
                                                    (let ((_hd228530228603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228531228600_)))
                                                          (_tl228529228605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228531228600_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228529228605_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228526228597_))
                      (let ((_e228534228608_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228526228597_))))
                        (let ((_hd228533228611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228534228608_)))
                              (_tl228532228613_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228534228608_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd228533228611_))
                              (let ((_e228537228616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd228533228611_))))
                                (let ((_hd228536228619_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228537228616_)))
                                      (_tl228535228621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228537228616_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228535228621_))
                                      (let ((_e228540228624_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228535228621_))))
                                        (let ((_hd228539228627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228540228624_)))
                                              (_tl228538228629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228540228624_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd228539228627_))
                                              (let ((_e228543228632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd228539228627_))))
                                                (let ((_hd228542228635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e228543228632_)))
                                                      (_tl228541228637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e228543228632_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd228542228635_))
                                                      (let ((_e228546228640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd228542228635_))))
                (let ((_hd228545228643_
                       (let () (declare (not safe)) (##car _e228546228640_)))
                      (_tl228544228645_
                       (let () (declare (not safe)) (##cdr _e228546228640_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd228545228643_))
                      (let ((_e228549228648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd228545228643_))))
                        (let ((_hd228548228651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228549228648_)))
                              (_tl228547228653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228549228648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228547228653_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl228544228645_))
                                  (let ((_e228552228656_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl228544228645_))))
                                    (let ((_hd228551228659_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228552228656_)))
                                          (_tl228550228661_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228552228656_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl228550228661_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228541228637_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl228538228629_))
                                                  (let ((_e228555228664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl228538228629_))))
                                                    (let ((_hd228554228667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228555228664_)))
                                                          (_tl228553228669_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228555228664_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228553228669_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl228532228613_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl228523228589_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228520228581_))
                              (let ((_e228558228672_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228520228581_))))
                                (let ((_hd228557228675_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228558228672_)))
                                      (_tl228556228677_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228558228672_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228556228677_))
                                      ((lambda (_L228680_
                                                _L228681_
                                                _L228682_
                                                _L228683_
                                                _L228684_)
                                         (let* ((_get-kws-id228724_
                                                 (let ((__tmp242830
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L228496_)))
                                                       (__tmp242829
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp242830
                                                    __tmp242829)))
                                                (_get-kws-id228726_
                                                 (let ((__tmp242831
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228209_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id228724_
                                                    __tmp242831)))
                                                (_main-id228728_
                                                 (let ((__tmp242833
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L228496_)))
                                                       (__tmp242832
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp242833
                                                    __tmp242832)))
                                                (_main-id228730_
                                                 (let ((__tmp242834
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx228209_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id228728_
                                                    __tmp242834)))
                                                (_g242835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id228726_)))
                                                (_g242836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id228730_)))
                                                (_new-kw-dispatch228734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L228680_
                                                    _L228684_
                                                    _get-kws-id228726_)))
                                                (_new-get-kws228736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L228681_
                                                    _L228683_
                                                    _main-id228730_))))
                                           (let ((__tmp242839
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L228496_)))
                                                 (__tmp242838
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id228726_)))
                                                 (__tmp242837
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id228730_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp242839
                                              '" => "
                                              __tmp242838
                                              '" => "
                                              __tmp242837))
                                           (let ((__tmp242840
                                                  (let ((__tmp242845
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__240391240392_
                                                            _main-id228730_
                                                            _L228682_
                                                            '#f)))
                                                        (__tmp242841
                                                         (let ((__tmp242844
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__240391240392_
                           _get-kws-id228726_
                           _new-get-kws228736_
                           '#f)))
                       (__tmp242842
                        (let ((__tmp242843
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__240391240392_
                                  _L228496_
                                  _new-kw-dispatch228734_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp242843 _rest228372_))))
                   (declare (not safe))
                   (cons __tmp242844 __tmp242842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp242845
                                                          __tmp242841))))
                                             (declare (not safe))
                                             (_lp228349_
                                              __tmp242840
                                              _bind228352_))))
                                       _hd228557228675_
                                       _hd228554228667_
                                       _hd228551228659_
                                       _hd228548228651_
                                       _hd228530228603_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228510228563_ _g228511228566_)))))
                              (let ()
                                (declare (not safe))
                                (_g228510228563_ _g228511228566_)))
                          (let ()
                            (declare (not safe))
                            (_g228510228563_ _g228511228566_)))
                      (let ()
                        (declare (not safe))
                        (_g228510228563_ _g228511228566_)))
                  (let ()
                    (declare (not safe))
                    (_g228510228563_ _g228511228566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228510228563_
                                                     _g228511228566_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g228510228563_
                                                 _g228511228566_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g228510228563_
                                             _g228511228566_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228510228563_ _g228511228566_)))
                              (let ()
                                (declare (not safe))
                                (_g228510228563_ _g228511228566_)))))
                      (let ()
                        (declare (not safe))
                        (_g228510228563_ _g228511228566_)))))
              (let ()
                (declare (not safe))
                (_g228510228563_ _g228511228566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g228510228563_
                                                 _g228511228566_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228510228563_ _g228511228566_)))))
                              (let ()
                                (declare (not safe))
                                (_g228510228563_ _g228511228566_)))))
                      (let ()
                        (declare (not safe))
                        (_g228510228563_ _g228511228566_)))
                  (let ()
                    (declare (not safe))
                    (_g228510228563_ _g228511228566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228510228563_
                                                     _g228511228566_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g228510228563_
                                             _g228511228566_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228510228563_ _g228511228566_)))))
                          (let ()
                            (declare (not safe))
                            (_g228510228563_ _g228511228566_)))))
                  (let ()
                    (declare (not safe))
                    (_g228510228563_ _g228511228566_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g228509228739_ _L228495_))))
                                         (___kont242326242327_
                                          (lambda (_L228446_ _L228447_)
                                            (let ((__tmp242846
                                                   (let ((__tmp242847
                                                          (let ((__tmp242848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp242849
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L228446_))))
                           (declare (not safe))
                           (cons __tmp242849 '()))))
                    (declare (not safe))
                    (cons _L228447_ __tmp242848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp242847
                                                           _bind228352_))))
                                              (declare (not safe))
                                              (_lp228349_
                                               _rest228372_
                                               __tmp242846)))))
                                     (let* ((___match242393242394_
                                             (lambda (_e228406228471_
                                                      _hd228405228474_
                                                      _tl228404228476_
                                                      _e228409228479_
                                                      _hd228408228482_
                                                      _tl228407228484_
                                                      _e228412228487_
                                                      _hd228411228490_
                                                      _tl228410228492_)
                                               (let ((_L228495_
                                                      _hd228411228490_)
                                                     (_L228496_
                                                      _hd228408228482_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228496_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L228495_)))
                                                     (___kont242324242325_
                                                      _L228495_
                                                      _L228496_)
                                                     (___kont242326242327_
                                                      _hd228411228490_
                                                      _hd228405228474_)))))
                                            (___match242371242372_
                                             (lambda (_e228395228747_
                                                      _hd228394228750_
                                                      _tl228393228752_
                                                      _e228398228755_
                                                      _hd228397228758_
                                                      _tl228396228760_
                                                      _e228401228763_
                                                      _hd228400228766_
                                                      _tl228399228768_)
                                               (let ((_L228771_
                                                      _hd228400228766_)
                                                     (_L228772_
                                                      _hd228397228758_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228772_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L228771_)))
                                                     (___kont242322242323_
                                                      _L228771_
                                                      _L228772_)
                                                     (___match242393242394_
                                                      _e228395228747_
                                                      _hd228394228750_
                                                      _tl228393228752_
                                                      _e228398228755_
                                                      _hd228397228758_
                                                      _tl228396228760_
                                                      _e228401228763_
                                                      _hd228400228766_
                                                      _tl228399228768_)))))
                                            (___match242349242350_
                                             (lambda (_e228384228919_
                                                      _hd228383228922_
                                                      _tl228382228924_
                                                      _e228387228927_
                                                      _hd228386228930_
                                                      _tl228385228932_
                                                      _e228390228935_
                                                      _hd228389228938_
                                                      _tl228388228940_)
                                               (let ((_L228943_
                                                      _hd228389228938_)
                                                     (_L228944_
                                                      _hd228386228930_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228944_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228943_)))
                                                     (___kont242320242321_
                                                      _L228943_
                                                      _L228944_)
                                                     (___match242371242372_
                                                      _e228384228919_
                                                      _hd228383228922_
                                                      _tl228382228924_
                                                      _e228387228927_
                                                      _hd228386228930_
                                                      _tl228385228932_
                                                      _e228390228935_
                                                      _hd228389228938_
                                                      _tl228388228940_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx242318242319_))
                                           (let ((_e228384228919_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx242318242319_))))
                                             (let ((_tl228382228924_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228384228919_)))
                                                   (_hd228383228922_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228384228919_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228383228922_))
                                                   (let ((_e228387228927_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228383228922_))))
                                                     (let ((_tl228385228932_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228387228927_)))
                                                           (_hd228386228930_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228387228927_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228385228932_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl228382228924_))
                       (let ((_e228390228935_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228382228924_))))
                         (let ((_tl228388228940_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228390228935_)))
                               (_hd228389228938_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228390228935_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228388228940_))
                               (___match242349242350_
                                _e228384228919_
                                _hd228383228922_
                                _tl228382228924_
                                _e228387228927_
                                _hd228386228930_
                                _tl228385228932_
                                _e228390228935_
                                _hd228389228938_
                                _tl228388228940_)
                               (let ()
                                 (declare (not safe))
                                 (_g228378228425_)))))
                       (let () (declare (not safe)) (_g228378228425_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl228382228924_))
                       (let ((_e228420228438_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228382228924_))))
                         (let ((_tl228418228443_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228420228438_)))
                               (_hd228419228441_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228420228438_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228418228443_))
                               (___kont242326242327_
                                _hd228419228441_
                                _hd228383228922_)
                               (let ()
                                 (declare (not safe))
                                 (_g228378228425_)))))
                       (let () (declare (not safe)) (_g228378228425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228382228924_))
                                                       (let ((_e228420228438_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228382228924_))))
                 (let ((_tl228418228443_
                        (let () (declare (not safe)) (##cdr _e228420228438_)))
                       (_hd228419228441_
                        (let () (declare (not safe)) (##car _e228420228438_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228418228443_))
                       (___kont242326242327_ _hd228419228441_ _hd228383228922_)
                       (let () (declare (not safe)) (_g228378228425_)))))
               (let () (declare (not safe)) (_g228378228425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g228378228425_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest228353228361_))
                             (let ((_hd228358229039_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest228353228361_)))
                                   (_tl228359229041_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest228353228361_))))
                               (let* ((_hd229044_ _hd228358229039_)
                                      (_rest229046_ _tl228359229041_))
                                 (declare (not safe))
                                 (_K228357229036_ _rest229046_ _hd229044_)))
                             (let ()
                               (declare (not safe))
                               (_else228355228369_))))))))
          (let* ((___stx242410242411_ _stx228209_)
                 (_g228215228242_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx242410242411_)))))
            (let ((___kont242412242413_
                   (lambda (_L228302_ _L228303_ _L228304_)
                     (let ((__tmp242851
                            (lambda ()
                              (let ((_hd228341_
                                     (let ((__tmp242852
                                            (let ((__tmp242853
                                                   (lambda (_g228333228336_
                                                            _g228334228338_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g228333228336_
                                                             _g228334228338_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp242853
                                                      '()
                                                      _L228303_))))
                                       (declare (not safe))
                                       (_compile-bindings228212_ __tmp242852)))
                                    (_body228342_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L228302_))))
                                (let ((__tmp242854
                                       (let ((__tmp242855
                                              (let ((__tmp242856
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body228342_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd228341_
                                                      __tmp242856))))
                                         (declare (not safe))
                                         (cons _L228304_ __tmp242855))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp242854
                                   _stx228209_)))))
                           (__tmp242850
                            (let ((__obj242475
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj242475)
                              __obj242475)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp242851
                        gx#current-expander-context
                        __tmp242850))))
                  (___kont242416242417_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx228209_)))))
              (let ((___match242437242438_
                     (lambda (_e228222228254_
                              _hd228221228257_
                              _tl228220228259_
                              _e228225228262_
                              _hd228224228265_
                              _tl228223228267_
                              ___splice242414242415_
                              _target228226228270_
                              _tl228228228272_)
                       (letrec ((_loop228229228275_
                                 (lambda (_hd228227228278_ _bind228233228280_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228227228278_))
                                       (let ((_e228230228283_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228227228278_))))
                                         (let ((_lp-tl228232228288_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228230228283_)))
                                               (_lp-hd228231228286_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228230228283_))))
                                           (let ((__tmp242859
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd228231228286_
                                                          _bind228233228280_))))
                                             (declare (not safe))
                                             (_loop228229228275_
                                              _lp-tl228232228288_
                                              __tmp242859))))
                                       (let ((_bind228234228291_
                                              (reverse _bind228233228280_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl228223228267_))
                                             (let ((_e228237228294_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl228223228267_))))
                                               (let ((_tl228235228299_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e228237228294_)))
                                                     (_hd228236228297_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e228237228294_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl228235228299_))
                                                     (let ((_L228302_
                                                            _hd228236228297_)
                                                           (_L228303_
                                                            _bind228234228291_)
                                                           (_L228304_
                                                            _hd228221228257_))
                                                       (if (let ((__tmp242857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp242858
                                 (lambda (_g228325228328_ _g228326228330_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g228325228328_ _g228326228330_)))))
                            (declare (not safe))
                            (foldr1 __tmp242858 '() _L228303_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp242857))
                   (___kont242412242413_ _L228302_ _L228303_ _L228304_)
                   (___kont242416242417_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont242416242417_))))
                                             (___kont242416242417_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop228229228275_ _target228226228270_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx242410242411_))
                    (let ((_e228222228254_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx242410242411_))))
                      (let ((_tl228220228259_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228222228254_)))
                            (_hd228221228257_
                             (let ()
                               (declare (not safe))
                               (##car _e228222228254_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228220228259_))
                            (let ((_e228225228262_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228220228259_))))
                              (let ((_tl228223228267_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228225228262_)))
                                    (_hd228224228265_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228225228262_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd228224228265_))
                                    (let ((___splice242414242415_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd228224228265_
                                              '0))))
                                      (let ((_tl228228228272_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice242414242415_
                                                '1)))
                                            (_target228226228270_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice242414242415_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228228228272_))
                                            (___match242437242438_
                                             _e228222228254_
                                             _hd228221228257_
                                             _tl228220228259_
                                             _e228225228262_
                                             _hd228224228265_
                                             _tl228223228267_
                                             ___splice242414242415_
                                             _target228226228270_
                                             _tl228228228272_)
                                            (___kont242416242417_))))
                                    (___kont242416242417_))))
                            (___kont242416242417_))))
                    (___kont242416242417_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind228127_)
        (let* ((___stx242440242441_ _bind228127_)
               (_g228130228147_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx242440242441_)))))
          (let ((___kont242442242443_
                 (lambda (_L228183_ _L228184_)
                   (if (let () (declare (not safe)) (gx#identifier? _L228184_))
                       (let ((_$e228200_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L228183_))))
                         (if _$e228200_
                             _$e228200_
                             (let ((_$e228203_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L228183_))))
                               (if _$e228203_
                                   _$e228203_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228183_))))))
                       '#f)))
                (___kont242444242445_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx242440242441_))
                (let ((_e228136228159_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx242440242441_))))
                  (let ((_tl228134228164_
                         (let () (declare (not safe)) (##cdr _e228136228159_)))
                        (_hd228135228162_
                         (let ()
                           (declare (not safe))
                           (##car _e228136228159_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228135228162_))
                        (let ((_e228139228167_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228135228162_))))
                          (let ((_tl228137228172_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228139228167_)))
                                (_hd228138228170_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228139228167_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl228137228172_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl228134228164_))
                                    (let ((_e228142228175_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl228134228164_))))
                                      (let ((_tl228140228180_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228142228175_)))
                                            (_hd228141228178_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228142228175_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228140228180_))
                                            (___kont242442242443_
                                             _hd228141228178_
                                             _hd228138228170_)
                                            (___kont242444242445_))))
                                    (___kont242444242445_))
                                (___kont242444242445_))))
                        (___kont242444242445_))))
                (___kont242444242445_))))))))
